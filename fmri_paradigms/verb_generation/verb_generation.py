#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
This experiment was created using PsychoPy3 Experiment Builder (v2024.2.4),
    on February 06, 2025, at 14:30
If you publish work using this script the most relevant publication is:

    Peirce J, Gray JR, Simpson S, MacAskill M, Höchenberger R, Sogo H, Kastman E, Lindeløv JK. (2019) 
        PsychoPy2: Experiments in behavior made easy Behav Res 51: 195. 
        https://doi.org/10.3758/s13428-018-01193-y

"""

# --- Import packages ---
from psychopy import locale_setup
from psychopy import prefs
from psychopy import plugins
plugins.activatePlugins()
prefs.hardware['audioLib'] = 'ptb'
prefs.hardware['audioLatencyMode'] = '3'
from psychopy import sound, gui, visual, core, data, event, logging, clock, colors, layout, hardware
from psychopy.tools import environmenttools
from psychopy.constants import (NOT_STARTED, STARTED, PLAYING, PAUSED,
                                STOPPED, FINISHED, PRESSED, RELEASED, FOREVER, priority)

import numpy as np  # whole numpy lib is available, prepend 'np.'
from numpy import (sin, cos, tan, log, log10, pi, average,
                   sqrt, std, deg2rad, rad2deg, linspace, asarray)
from numpy.random import random, randint, normal, shuffle, choice as randchoice
import os  # handy system and path functions
import sys  # to get file system encoding

import psychopy.iohub as io
from psychopy.hardware import keyboard

# Run 'Before Experiment' code from operator_input_code
# Create list of languages for drop-down menu
from pathlib import Path
resources_dp = Path('resources')
nouns_dp = resources_dp / 'nouns'
language_list = []
for noun_fn in nouns_dp.iterdir():
    language_list.append(Path(noun_fn).stem.capitalize())

# Create a dialogue box so that the operator can set options for the paradigm 
operator_dialog_a = gui.Dlg(title='Paradigm Options')
operator_dialog_a.addField('Scanner:', choices=['Siemens','GE'], tip='Select the MRI scanner manufacturer. On a Siemens PrismaFit MRI system the Sequence Trigger Out is the optical connector labelled U2 on D90 on Board D67 in the Small Signal Unit. A trigger pulse is sent at the start of each EPI volume i.e. at the start of each TR. On a GE Premier MRI system the RF Unblanking trigger, labelled socket J10, on the Exciter Module in the PEN Cabinet can be used as the trigger. The trigger occurs everytime an RF pulse is played out. The delay required to ensure the paradigm does not start during the dummy scans is built into the experiments. This delay is set in the wait_for_dummy_scans sequence. The operator will be prompted to enter the repetition time (TR) of the fMRI acquisition and the number of dummy scans (UserCV numdda) the delay is then calculated using delay = numdda x TR.')
operator_dialog_a.addField('Trigger:', choices=['5', '6', 't', 'o'], tip="Select the trigger produced by the fORP Interface (905 or 932). See fORP manual for an explanation of how to set the trigger type.")
operator_dialog_a.addField('Language:', initial='English',choices=language_list, tip="Select the language.")
operator_dialog_a.validate()
operator_dialog_a_data = operator_dialog_a.show()

if not operator_dialog_a.OK:
    print('* Operator clicked Cancel, exiting paradigm')
    core.quit()

scanner = operator_dialog_a_data[0].lower()

def set_dummy_delay(scanner_manufacturer):
    """
    Calculate the time delay in seconds needed to wait between receiving a
    trigger from the fORP and starting the paradigm.

    :param scanner_manufacturer: the scanner manufacturer (siemens or ge)
    :type scanner_manufacturer:str
    :return: Time delay in seconds
    :rtype: float
    """
    
    if scanner_manufacturer == 'siemens':
        # For Siemens MRI systems the tigger is recieved at the start of the first 
        # 'real' fMRI volume i.e. no triggers are sent during dummy scans so no 
        # delay is needed
         delay = 0
    elif scanner_manufacturer == 'ge':
        # Create a dialogue box so that the operator can enter the number of 
        # dummy scans and the repetition time
        operator_dialog = gui.Dlg(title='Dummy Scan Options')
        operator_dialog.addField('Number of dummy scans (DDAs):', initial=5, choices=['0','1','2', '3', '4', '5', '6', '7', '8'], tip="Select the number of dummy scans (see userCV numdda)")
        operator_dialog.addField('Repetition time (TR) in ms:', initial=3330, tip="Enter the repetition time in ms")
        operator_dialog.validate()
        operator_dialog_data = operator_dialog.show()
        
        if operator_dialog.OK:
            numdda = int(operator_dialog_data[0])
            try:
                TR = int(operator_dialog_data[1])
            except ValueError:
                print('* WARNING: TR must be an integer number of ms')
                # Re-prompt the user to enter the TR if they failed to enter an int
                delay = set_dummy_delay()
        else:
            print('* Operator clicked Cancel, exiting paradigm')
            core.quit()
    
        delay = float(numdda * TR / 1000)
    
    return delay
    
dummy_delay_s = set_dummy_delay(scanner)
# Run 'Before Experiment' code from rest_code
import random
# Run 'Before Experiment' code from task_code
# Import the package needed to render Arabic words
try:
    from arabic_reshaper import ArabicReshaper
    haveArabic = True
except ImportError:
    haveArabic = False

# Set the configuration for Arabic
arabic_config = {'delete_harakat': False,  # if present, retain any diacritics
                 'shift_harakat_position': True}  # shift by 1 to be compatible with the bidi algorithm

# --- Setup global variables (available in all functions) ---
# create a device manager to handle hardware (keyboards, mice, mirophones, speakers, etc.)
deviceManager = hardware.DeviceManager()
# ensure that relative paths start from the same directory as this script
_thisDir = os.path.dirname(os.path.abspath(__file__))
# store info about the experiment session
psychopyVersion = '2024.2.4'
expName = 'verb_generation'  # from the Builder filename that created this script
# information about this experiment
expInfo = {
    'participant': f"{randint(0, 999999):06.0f}",
    'session': '001',
    'date|hid': data.getDateStr(),
    'expName|hid': expName,
    'psychopyVersion|hid': psychopyVersion,
}

# --- Define some variables which will change depending on pilot mode ---
'''
To run in pilot mode, either use the run/pilot toggle in Builder, Coder and Runner, 
or run the experiment with `--pilot` as an argument. To change what pilot 
#mode does, check out the 'Pilot mode' tab in preferences.
'''
# work out from system args whether we are running in pilot mode
PILOTING = core.setPilotModeFromArgs()
# start off with values from experiment settings
_fullScr = True
_winSize = [1920, 1200]
# if in pilot mode, apply overrides according to preferences
if PILOTING:
    # force windowed mode
    if prefs.piloting['forceWindowed']:
        _fullScr = False
        # set window size
        _winSize = prefs.piloting['forcedWindowSize']

def showExpInfoDlg(expInfo):
    """
    Show participant info dialog.
    Parameters
    ==========
    expInfo : dict
        Information about this experiment.
    
    Returns
    ==========
    dict
        Information about this experiment.
    """
    # show participant info dialog
    dlg = gui.DlgFromDict(
        dictionary=expInfo, sortKeys=False, title=expName, alwaysOnTop=True
    )
    if dlg.OK == False:
        core.quit()  # user pressed cancel
    # return expInfo
    return expInfo


def setupData(expInfo, dataDir=None):
    """
    Make an ExperimentHandler to handle trials and saving.
    
    Parameters
    ==========
    expInfo : dict
        Information about this experiment, created by the `setupExpInfo` function.
    dataDir : Path, str or None
        Folder to save the data to, leave as None to create a folder in the current directory.    
    Returns
    ==========
    psychopy.data.ExperimentHandler
        Handler object for this experiment, contains the data to save and information about 
        where to save it to.
    """
    # remove dialog-specific syntax from expInfo
    for key, val in expInfo.copy().items():
        newKey, _ = data.utils.parsePipeSyntax(key)
        expInfo[newKey] = expInfo.pop(key)
    
    # data file name stem = absolute path + name; later add .psyexp, .csv, .log, etc
    if dataDir is None:
        dataDir = _thisDir
    filename = u'logs/%s_%s' % (expName, expInfo['date'])
    # make sure filename is relative to dataDir
    if os.path.isabs(filename):
        dataDir = os.path.commonprefix([dataDir, filename])
        filename = os.path.relpath(filename, dataDir)
    
    # an ExperimentHandler isn't essential but helps with data saving
    thisExp = data.ExperimentHandler(
        name=expName, version='',
        extraInfo=expInfo, runtimeInfo=None,
        originPath='C:\\Users\\swastlin\\Desktop\\fmri_paradigms\\verb_generation\\verb_generation.py',
        savePickle=True, saveWideText=False,
        dataFileName=dataDir + os.sep + filename, sortColumns='time'
    )
    thisExp.setPriority('thisRow.t', priority.CRITICAL)
    thisExp.setPriority('expName', priority.LOW)
    # return experiment handler
    return thisExp


def setupLogging(filename):
    """
    Setup a log file and tell it what level to log at.
    
    Parameters
    ==========
    filename : str or pathlib.Path
        Filename to save log file and data files as, doesn't need an extension.
    
    Returns
    ==========
    psychopy.logging.LogFile
        Text stream to receive inputs from the logging system.
    """
    # set how much information should be printed to the console / app
    if PILOTING:
        logging.console.setLevel(
            prefs.piloting['pilotConsoleLoggingLevel']
        )
    else:
        logging.console.setLevel('warning')
    # save a log file for detail verbose info
    logFile = logging.LogFile(filename+'.log')
    if PILOTING:
        logFile.setLevel(
            prefs.piloting['pilotLoggingLevel']
        )
    else:
        logFile.setLevel(
            logging.getLevel('exp')
        )
    
    return logFile


def setupWindow(expInfo=None, win=None):
    """
    Setup the Window
    
    Parameters
    ==========
    expInfo : dict
        Information about this experiment, created by the `setupExpInfo` function.
    win : psychopy.visual.Window
        Window to setup - leave as None to create a new window.
    
    Returns
    ==========
    psychopy.visual.Window
        Window in which to run this experiment.
    """
    if PILOTING:
        logging.debug('Fullscreen settings ignored as running in pilot mode.')
    
    if win is None:
        # if not given a window to setup, make one
        win = visual.Window(
            size=_winSize, fullscr=_fullScr, screen=0,
            winType='pyglet', allowGUI=False, allowStencil=False,
            monitor='testMonitor', color=[-1.0000, -1.0000, -1.0000], colorSpace='rgb',
            backgroundImage='', backgroundFit='none',
            blendMode='avg', useFBO=True,
            units='height',
            checkTiming=False  # we're going to do this ourselves in a moment
        )
    else:
        # if we have a window, just set the attributes which are safe to set
        win.color = [-1.0000, -1.0000, -1.0000]
        win.colorSpace = 'rgb'
        win.backgroundImage = ''
        win.backgroundFit = 'none'
        win.units = 'height'
    if expInfo is not None:
        # get/measure frame rate if not already in expInfo
        if win._monitorFrameRate is None:
            win._monitorFrameRate = win.getActualFrameRate(infoMsg='Attempting to measure frame rate of screen, please wait...')
        expInfo['frameRate'] = win._monitorFrameRate
    win.hideMessage()
    # show a visual indicator if we're in piloting mode
    if PILOTING and prefs.piloting['showPilotingIndicator']:
        win.showPilotingIndicator()
    
    return win


def setupDevices(expInfo, thisExp, win):
    """
    Setup whatever devices are available (mouse, keyboard, speaker, eyetracker, etc.) and add them to 
    the device manager (deviceManager)
    
    Parameters
    ==========
    expInfo : dict
        Information about this experiment, created by the `setupExpInfo` function.
    thisExp : psychopy.data.ExperimentHandler
        Handler object for this experiment, contains the data to save and information about 
        where to save it to.
    win : psychopy.visual.Window
        Window in which to run this experiment.
    Returns
    ==========
    bool
        True if completed successfully.
    """
    # --- Setup input devices ---
    ioConfig = {}
    
    # Setup iohub keyboard
    ioConfig['Keyboard'] = dict(use_keymap='psychopy')
    
    # Setup iohub experiment
    ioConfig['Experiment'] = dict(filename=thisExp.dataFileName)
    
    # Start ioHub server
    ioServer = io.launchHubServer(window=win, **ioConfig)
    
    # store ioServer object in the device manager
    deviceManager.ioServer = ioServer
    
    # create a default keyboard (e.g. to check for escape)
    if deviceManager.getDevice('defaultKeyboard') is None:
        deviceManager.addDevice(
            deviceClass='keyboard', deviceName='defaultKeyboard', backend='iohub'
        )
    if deviceManager.getDevice('manual_trigger') is None:
        # initialise manual_trigger
        manual_trigger = deviceManager.addDevice(
            deviceClass='keyboard',
            deviceName='manual_trigger',
        )
    if deviceManager.getDevice('scanner_trigger') is None:
        # initialise scanner_trigger
        scanner_trigger = deviceManager.addDevice(
            deviceClass='keyboard',
            deviceName='scanner_trigger',
        )
    # return True if completed successfully
    return True

def pauseExperiment(thisExp, win=None, timers=[], playbackComponents=[]):
    """
    Pause this experiment, preventing the flow from advancing to the next routine until resumed.
    
    Parameters
    ==========
    thisExp : psychopy.data.ExperimentHandler
        Handler object for this experiment, contains the data to save and information about 
        where to save it to.
    win : psychopy.visual.Window
        Window for this experiment.
    timers : list, tuple
        List of timers to reset once pausing is finished.
    playbackComponents : list, tuple
        List of any components with a `pause` method which need to be paused.
    """
    # if we are not paused, do nothing
    if thisExp.status != PAUSED:
        return
    
    # start a timer to figure out how long we're paused for
    pauseTimer = core.Clock()
    # pause any playback components
    for comp in playbackComponents:
        comp.pause()
    # make sure we have a keyboard
    defaultKeyboard = deviceManager.getDevice('defaultKeyboard')
    if defaultKeyboard is None:
        defaultKeyboard = deviceManager.addKeyboard(
            deviceClass='keyboard',
            deviceName='defaultKeyboard',
            backend='ioHub',
        )
    # run a while loop while we wait to unpause
    while thisExp.status == PAUSED:
        # check for quit (typically the Esc key)
        if defaultKeyboard.getKeys(keyList=['escape']):
            endExperiment(thisExp, win=win)
        # sleep 1ms so other threads can execute
        clock.time.sleep(0.001)
    # if stop was requested while paused, quit
    if thisExp.status == FINISHED:
        endExperiment(thisExp, win=win)
    # resume any playback components
    for comp in playbackComponents:
        comp.play()
    # reset any timers
    for timer in timers:
        timer.addTime(-pauseTimer.getTime())


def run(expInfo, thisExp, win, globalClock=None, thisSession=None):
    """
    Run the experiment flow.
    
    Parameters
    ==========
    expInfo : dict
        Information about this experiment, created by the `setupExpInfo` function.
    thisExp : psychopy.data.ExperimentHandler
        Handler object for this experiment, contains the data to save and information about 
        where to save it to.
    psychopy.visual.Window
        Window in which to run this experiment.
    globalClock : psychopy.core.clock.Clock or None
        Clock to get global time from - supply None to make a new one.
    thisSession : psychopy.session.Session or None
        Handle of the Session object this experiment is being run from, if any.
    """
    # mark experiment as started
    thisExp.status = STARTED
    # make sure window is set to foreground to prevent losing focus
    win.winHandle.activate()
    # make sure variables created by exec are available globally
    exec = environmenttools.setExecEnvironment(globals())
    # get device handles from dict of input devices
    ioServer = deviceManager.ioServer
    # get/create a default keyboard (e.g. to check for escape)
    defaultKeyboard = deviceManager.getDevice('defaultKeyboard')
    if defaultKeyboard is None:
        deviceManager.addDevice(
            deviceClass='keyboard', deviceName='defaultKeyboard', backend='ioHub'
        )
    eyetracker = deviceManager.getDevice('eyetracker')
    # make sure we're running in the directory for this experiment
    os.chdir(_thisDir)
    # get filename from ExperimentHandler for convenience
    filename = thisExp.dataFileName
    frameTolerance = 0.001  # how close to onset before 'same' frame
    endExpNow = False  # flag for 'escape' or other condition => quit the exp
    # get frame duration from frame rate in expInfo
    if 'frameRate' in expInfo and expInfo['frameRate'] is not None:
        frameDur = 1.0 / round(expInfo['frameRate'])
    else:
        frameDur = 1.0 / 60.0  # could not measure, so guess
    
    # Start Code - component code to be run after the window creation
    
    # --- Initialize components for Routine "operator_input" ---
    # Run 'Begin Experiment' code from operator_input_code
    # These variables need to be available with "run" function to must be placed here rather than in "Before Experiment"
    trigger_type = operator_dialog_a_data[1]
    language = operator_dialog_a_data[2].lower()
    
    if language == 'arabic':
        text_style = 'Arabic'
    elif language == 'hebrew':
        text_style = 'RTL'
    else:
        text_style = 'LTR'
        
    
    # --- Initialize components for Routine "wait_for_manual_trigger" ---
    instructions_wait_for_manual_trigger = visual.ImageStim(
        win=win,
        name='instructions_wait_for_manual_trigger', units='height', 
        image='resources/verb_generation_instructions.png', mask=None, anchor='center',
        ori=0.0, pos=(0, 0), draggable=False, size=(1.2, None),
        color=[1,1,1], colorSpace='rgb', opacity=None,
        flipHoriz=False, flipVert=False,
        texRes=128.0, interpolate=True, depth=-1.0)
    manual_trigger = keyboard.Keyboard(deviceName='manual_trigger')
    
    # --- Initialize components for Routine "wait_for_scanner_trigger" ---
    instructions_wait_for_scanner_trigger = visual.ImageStim(
        win=win,
        name='instructions_wait_for_scanner_trigger', units='height', 
        image='resources/verb_generation_instructions.png', mask=None, anchor='center',
        ori=0.0, pos=(0, 0), draggable=False, size=(1.2, None),
        color=[1,1,1], colorSpace='rgb', opacity=None,
        flipHoriz=False, flipVert=False,
        texRes=128.0, interpolate=True, depth=-1.0)
    scanner_trigger = keyboard.Keyboard(deviceName='scanner_trigger')
    
    # --- Initialize components for Routine "wait_for_dummy_scans" ---
    instructions_wait_for_dummy_scans = visual.ImageStim(
        win=win,
        name='instructions_wait_for_dummy_scans', units='height', 
        image='resources/verb_generation_instructions.png', mask=None, anchor='center',
        ori=0.0, pos=(0, 0), draggable=False, size=(1.2, None),
        color=[1,1,1], colorSpace='rgb', opacity=None,
        flipHoriz=False, flipVert=False,
        texRes=128.0, interpolate=True, depth=0.0)
    
    # --- Initialize components for Routine "rest_block" ---
    # Run 'Begin Experiment' code from rest_code
    # Create a list of symbols
    symbols = ["*/+^;@", "|\£?:#", "%=+|£", "$%^£&*", "*$&^%\"", "@?£<*)", "+_>~#\"", "!*^£:<", "#';/?&^", "@-@:{)*", "&\"+`¬?.>"]
    
    # Shuffle list of symbols
    random.shuffle(symbols)
    
    # Initialise counter to loop through list of symbols
    symbols_counter = 0
    rest_rep_counter = 0
    
    rest_crosshair = visual.TextStim(win=win, name='rest_crosshair',
        text='+',
        font='Open Sans',
        units='height', pos=(0, 0), draggable=False, height=0.2, wrapWidth=None, ori=0.0, 
        color=[1.0000, 1.0000, -1.0000], colorSpace='rgb', opacity=None, 
        languageStyle='LTR',
        depth=-1.0);
    rest_symbols = visual.TextStim(win=win, name='rest_symbols',
        text='',
        font='Open Sans',
        units='height', pos=(0, 0), draggable=False, height=0.25, wrapWidth=None, ori=0.0, 
        color="'#00ffff'", colorSpace='rgb', opacity=None, 
        languageStyle='LTR',
        depth=-2.0);
    
    # --- Initialize components for Routine "task_block" ---
    # Run 'Begin Experiment' code from task_code
    # Open the text file containing the list of nouns
    fp = nouns_dp / ('%s.txt' % language )
    fh = open(fp, encoding="utf-8")
    
    # Create a list of nouns without newlines and carriage returns
    nouns = [line.rstrip() for line in fh]
    
    # Close the text file containing the list of nouns
    fh.close()
    
    # Shuffle the list of nouns
    random.shuffle(nouns)
    
    # Initialise counters to loop through list of nouns
    noun_counter = 0
    task_rep_counter = 0
    task_crosshair = visual.TextStim(win=win, name='task_crosshair',
        text='+',
        font='Open Sans',
        units='height', pos=(0, 0), draggable=False, height=0.2, wrapWidth=None, ori=0.0, 
        color=[1.0000, 1.0000, -1.0000], colorSpace='rgb', opacity=None, 
        languageStyle='LTR',
        depth=-1.0);
    task_noun = visual.TextStim(win=win, name='task_noun',
        text='',
        font='Open Sans',
        units='height', pos=(0, 0), draggable=False, height=0.25, wrapWidth=None, ori=0.0, 
        color="'#00ffff'", colorSpace='rgb', opacity=None, 
        languageStyle='LTR',
        depth=-2.0);
    
    # --- Initialize components for Routine "rest_pad" ---
    rest_2 = visual.TextStim(win=win, name='rest_2',
        text='+',
        font='Open Sans',
        units='height', pos=(0, 0), draggable=False, height=0.2, wrapWidth=None, ori=0.0, 
        color=[1.0000, 1.0000, -1.0000], colorSpace='rgb', opacity=None, 
        languageStyle='LTR',
        depth=0.0);
    
    # create some handy timers
    
    # global clock to track the time since experiment started
    if globalClock is None:
        # create a clock if not given one
        globalClock = core.Clock()
    if isinstance(globalClock, str):
        # if given a string, make a clock accoridng to it
        if globalClock == 'float':
            # get timestamps as a simple value
            globalClock = core.Clock(format='float')
        elif globalClock == 'iso':
            # get timestamps in ISO format
            globalClock = core.Clock(format='%Y-%m-%d_%H:%M:%S.%f%z')
        else:
            # get timestamps in a custom format
            globalClock = core.Clock(format=globalClock)
    if ioServer is not None:
        ioServer.syncClock(globalClock)
    logging.setDefaultClock(globalClock)
    # routine timer to track time remaining of each (possibly non-slip) routine
    routineTimer = core.Clock()
    win.flip()  # flip window to reset last flip timer
    # store the exact time the global clock started
    expInfo['expStart'] = data.getDateStr(
        format='%Y-%m-%d %Hh%M.%S.%f %z', fractionalSecondDigits=6
    )
    
    # --- Prepare to start Routine "operator_input" ---
    # create an object to store info about Routine operator_input
    operator_input = data.Routine(
        name='operator_input',
        components=[],
    )
    operator_input.status = NOT_STARTED
    continueRoutine = True
    # update component parameters for each repeat
    # store start times for operator_input
    operator_input.tStartRefresh = win.getFutureFlipTime(clock=globalClock)
    operator_input.tStart = globalClock.getTime(format='float')
    operator_input.status = STARTED
    thisExp.addData('operator_input.started', operator_input.tStart)
    operator_input.maxDuration = None
    # keep track of which components have finished
    operator_inputComponents = operator_input.components
    for thisComponent in operator_input.components:
        thisComponent.tStart = None
        thisComponent.tStop = None
        thisComponent.tStartRefresh = None
        thisComponent.tStopRefresh = None
        if hasattr(thisComponent, 'status'):
            thisComponent.status = NOT_STARTED
    # reset timers
    t = 0
    _timeToFirstFrame = win.getFutureFlipTime(clock="now")
    frameN = -1
    
    # --- Run Routine "operator_input" ---
    operator_input.forceEnded = routineForceEnded = not continueRoutine
    while continueRoutine:
        # get current time
        t = routineTimer.getTime()
        tThisFlip = win.getFutureFlipTime(clock=routineTimer)
        tThisFlipGlobal = win.getFutureFlipTime(clock=None)
        frameN = frameN + 1  # number of completed frames (so 0 is the first frame)
        # update/draw components on each frame
        
        # check for quit (typically the Esc key)
        if defaultKeyboard.getKeys(keyList=["escape"]):
            thisExp.status = FINISHED
        if thisExp.status == FINISHED or endExpNow:
            endExperiment(thisExp, win=win)
            return
        # pause experiment here if requested
        if thisExp.status == PAUSED:
            pauseExperiment(
                thisExp=thisExp, 
                win=win, 
                timers=[routineTimer], 
                playbackComponents=[]
            )
            # skip the frame we paused on
            continue
        
        # check if all components have finished
        if not continueRoutine:  # a component has requested a forced-end of Routine
            operator_input.forceEnded = routineForceEnded = True
            break
        continueRoutine = False  # will revert to True if at least one component still running
        for thisComponent in operator_input.components:
            if hasattr(thisComponent, "status") and thisComponent.status != FINISHED:
                continueRoutine = True
                break  # at least one component has not yet finished
        
        # refresh the screen
        if continueRoutine:  # don't flip if this routine is over or we'll get a blank screen
            win.flip()
    
    # --- Ending Routine "operator_input" ---
    for thisComponent in operator_input.components:
        if hasattr(thisComponent, "setAutoDraw"):
            thisComponent.setAutoDraw(False)
    # store stop times for operator_input
    operator_input.tStop = globalClock.getTime(format='float')
    operator_input.tStopRefresh = tThisFlipGlobal
    thisExp.addData('operator_input.stopped', operator_input.tStop)
    thisExp.nextEntry()
    # the Routine "operator_input" was not non-slip safe, so reset the non-slip timer
    routineTimer.reset()
    
    # --- Prepare to start Routine "wait_for_manual_trigger" ---
    # create an object to store info about Routine wait_for_manual_trigger
    wait_for_manual_trigger = data.Routine(
        name='wait_for_manual_trigger',
        components=[instructions_wait_for_manual_trigger, manual_trigger],
    )
    wait_for_manual_trigger.status = NOT_STARTED
    continueRoutine = True
    # update component parameters for each repeat
    # Run 'Begin Routine' code from manual_trigger_code
    # Note: the wait_for_manual_trigger routine is skipped if scanner == siemens (see Flow tab of Routine settings)
    if scanner == 'ge':
        print('* Press "m" after the Prep Scan has finished')
    # create starting attributes for manual_trigger
    manual_trigger.keys = []
    manual_trigger.rt = []
    _manual_trigger_allKeys = []
    # store start times for wait_for_manual_trigger
    wait_for_manual_trigger.tStartRefresh = win.getFutureFlipTime(clock=globalClock)
    wait_for_manual_trigger.tStart = globalClock.getTime(format='float')
    wait_for_manual_trigger.status = STARTED
    thisExp.addData('wait_for_manual_trigger.started', wait_for_manual_trigger.tStart)
    wait_for_manual_trigger.maxDuration = None
    # skip Routine wait_for_manual_trigger if its 'Skip if' condition is True
    wait_for_manual_trigger.skipped = continueRoutine and not (scanner == "siemens")
    continueRoutine = wait_for_manual_trigger.skipped
    # keep track of which components have finished
    wait_for_manual_triggerComponents = wait_for_manual_trigger.components
    for thisComponent in wait_for_manual_trigger.components:
        thisComponent.tStart = None
        thisComponent.tStop = None
        thisComponent.tStartRefresh = None
        thisComponent.tStopRefresh = None
        if hasattr(thisComponent, 'status'):
            thisComponent.status = NOT_STARTED
    # reset timers
    t = 0
    _timeToFirstFrame = win.getFutureFlipTime(clock="now")
    frameN = -1
    
    # --- Run Routine "wait_for_manual_trigger" ---
    wait_for_manual_trigger.forceEnded = routineForceEnded = not continueRoutine
    while continueRoutine:
        # get current time
        t = routineTimer.getTime()
        tThisFlip = win.getFutureFlipTime(clock=routineTimer)
        tThisFlipGlobal = win.getFutureFlipTime(clock=None)
        frameN = frameN + 1  # number of completed frames (so 0 is the first frame)
        # update/draw components on each frame
        
        # *instructions_wait_for_manual_trigger* updates
        
        # if instructions_wait_for_manual_trigger is starting this frame...
        if instructions_wait_for_manual_trigger.status == NOT_STARTED and tThisFlip >= 0.0-frameTolerance:
            # keep track of start time/frame for later
            instructions_wait_for_manual_trigger.frameNStart = frameN  # exact frame index
            instructions_wait_for_manual_trigger.tStart = t  # local t and not account for scr refresh
            instructions_wait_for_manual_trigger.tStartRefresh = tThisFlipGlobal  # on global time
            win.timeOnFlip(instructions_wait_for_manual_trigger, 'tStartRefresh')  # time at next scr refresh
            # add timestamp to datafile
            thisExp.timestampOnFlip(win, 'instructions_wait_for_manual_trigger.started')
            # update status
            instructions_wait_for_manual_trigger.status = STARTED
            instructions_wait_for_manual_trigger.setAutoDraw(True)
        
        # if instructions_wait_for_manual_trigger is active this frame...
        if instructions_wait_for_manual_trigger.status == STARTED:
            # update params
            pass
        
        # *manual_trigger* updates
        waitOnFlip = False
        
        # if manual_trigger is starting this frame...
        if manual_trigger.status == NOT_STARTED and tThisFlip >= 0.0-frameTolerance:
            # keep track of start time/frame for later
            manual_trigger.frameNStart = frameN  # exact frame index
            manual_trigger.tStart = t  # local t and not account for scr refresh
            manual_trigger.tStartRefresh = tThisFlipGlobal  # on global time
            win.timeOnFlip(manual_trigger, 'tStartRefresh')  # time at next scr refresh
            # add timestamp to datafile
            thisExp.timestampOnFlip(win, 'manual_trigger.started')
            # update status
            manual_trigger.status = STARTED
            # keyboard checking is just starting
            waitOnFlip = True
            win.callOnFlip(manual_trigger.clock.reset)  # t=0 on next screen flip
            win.callOnFlip(manual_trigger.clearEvents, eventType='keyboard')  # clear events on next screen flip
        if manual_trigger.status == STARTED and not waitOnFlip:
            theseKeys = manual_trigger.getKeys(keyList=["m"], ignoreKeys=["escape"], waitRelease=False)
            _manual_trigger_allKeys.extend(theseKeys)
            if len(_manual_trigger_allKeys):
                manual_trigger.keys = _manual_trigger_allKeys[-1].name  # just the last key pressed
                manual_trigger.rt = _manual_trigger_allKeys[-1].rt
                manual_trigger.duration = _manual_trigger_allKeys[-1].duration
                # a response ends the routine
                continueRoutine = False
        
        # check for quit (typically the Esc key)
        if defaultKeyboard.getKeys(keyList=["escape"]):
            thisExp.status = FINISHED
        if thisExp.status == FINISHED or endExpNow:
            endExperiment(thisExp, win=win)
            return
        # pause experiment here if requested
        if thisExp.status == PAUSED:
            pauseExperiment(
                thisExp=thisExp, 
                win=win, 
                timers=[routineTimer], 
                playbackComponents=[]
            )
            # skip the frame we paused on
            continue
        
        # check if all components have finished
        if not continueRoutine:  # a component has requested a forced-end of Routine
            wait_for_manual_trigger.forceEnded = routineForceEnded = True
            break
        continueRoutine = False  # will revert to True if at least one component still running
        for thisComponent in wait_for_manual_trigger.components:
            if hasattr(thisComponent, "status") and thisComponent.status != FINISHED:
                continueRoutine = True
                break  # at least one component has not yet finished
        
        # refresh the screen
        if continueRoutine:  # don't flip if this routine is over or we'll get a blank screen
            win.flip()
    
    # --- Ending Routine "wait_for_manual_trigger" ---
    for thisComponent in wait_for_manual_trigger.components:
        if hasattr(thisComponent, "setAutoDraw"):
            thisComponent.setAutoDraw(False)
    # store stop times for wait_for_manual_trigger
    wait_for_manual_trigger.tStop = globalClock.getTime(format='float')
    wait_for_manual_trigger.tStopRefresh = tThisFlipGlobal
    thisExp.addData('wait_for_manual_trigger.stopped', wait_for_manual_trigger.tStop)
    thisExp.nextEntry()
    # the Routine "wait_for_manual_trigger" was not non-slip safe, so reset the non-slip timer
    routineTimer.reset()
    
    # --- Prepare to start Routine "wait_for_scanner_trigger" ---
    # create an object to store info about Routine wait_for_scanner_trigger
    wait_for_scanner_trigger = data.Routine(
        name='wait_for_scanner_trigger',
        components=[instructions_wait_for_scanner_trigger, scanner_trigger],
    )
    wait_for_scanner_trigger.status = NOT_STARTED
    continueRoutine = True
    # update component parameters for each repeat
    # Run 'Begin Routine' code from scanner_trigger_code
    print('* Waiting for scanner trigger "%s" to start the paradigm' % trigger_type)
    # create starting attributes for scanner_trigger
    scanner_trigger.keys = []
    scanner_trigger.rt = []
    _scanner_trigger_allKeys = []
    # allowedKeys looks like a variable, so make sure it exists locally
    if 'trigger_type' in globals():
        trigger_type = globals()['trigger_type']
    # store start times for wait_for_scanner_trigger
    wait_for_scanner_trigger.tStartRefresh = win.getFutureFlipTime(clock=globalClock)
    wait_for_scanner_trigger.tStart = globalClock.getTime(format='float')
    wait_for_scanner_trigger.status = STARTED
    thisExp.addData('wait_for_scanner_trigger.started', wait_for_scanner_trigger.tStart)
    wait_for_scanner_trigger.maxDuration = None
    # keep track of which components have finished
    wait_for_scanner_triggerComponents = wait_for_scanner_trigger.components
    for thisComponent in wait_for_scanner_trigger.components:
        thisComponent.tStart = None
        thisComponent.tStop = None
        thisComponent.tStartRefresh = None
        thisComponent.tStopRefresh = None
        if hasattr(thisComponent, 'status'):
            thisComponent.status = NOT_STARTED
    # reset timers
    t = 0
    _timeToFirstFrame = win.getFutureFlipTime(clock="now")
    frameN = -1
    
    # --- Run Routine "wait_for_scanner_trigger" ---
    wait_for_scanner_trigger.forceEnded = routineForceEnded = not continueRoutine
    while continueRoutine:
        # get current time
        t = routineTimer.getTime()
        tThisFlip = win.getFutureFlipTime(clock=routineTimer)
        tThisFlipGlobal = win.getFutureFlipTime(clock=None)
        frameN = frameN + 1  # number of completed frames (so 0 is the first frame)
        # update/draw components on each frame
        
        # *instructions_wait_for_scanner_trigger* updates
        
        # if instructions_wait_for_scanner_trigger is starting this frame...
        if instructions_wait_for_scanner_trigger.status == NOT_STARTED and tThisFlip >= 0.0-frameTolerance:
            # keep track of start time/frame for later
            instructions_wait_for_scanner_trigger.frameNStart = frameN  # exact frame index
            instructions_wait_for_scanner_trigger.tStart = t  # local t and not account for scr refresh
            instructions_wait_for_scanner_trigger.tStartRefresh = tThisFlipGlobal  # on global time
            win.timeOnFlip(instructions_wait_for_scanner_trigger, 'tStartRefresh')  # time at next scr refresh
            # add timestamp to datafile
            thisExp.timestampOnFlip(win, 'instructions_wait_for_scanner_trigger.started')
            # update status
            instructions_wait_for_scanner_trigger.status = STARTED
            instructions_wait_for_scanner_trigger.setAutoDraw(True)
        
        # if instructions_wait_for_scanner_trigger is active this frame...
        if instructions_wait_for_scanner_trigger.status == STARTED:
            # update params
            pass
        
        # *scanner_trigger* updates
        waitOnFlip = False
        
        # if scanner_trigger is starting this frame...
        if scanner_trigger.status == NOT_STARTED and tThisFlip >= 0.0-frameTolerance:
            # keep track of start time/frame for later
            scanner_trigger.frameNStart = frameN  # exact frame index
            scanner_trigger.tStart = t  # local t and not account for scr refresh
            scanner_trigger.tStartRefresh = tThisFlipGlobal  # on global time
            win.timeOnFlip(scanner_trigger, 'tStartRefresh')  # time at next scr refresh
            # add timestamp to datafile
            thisExp.timestampOnFlip(win, 'scanner_trigger.started')
            # update status
            scanner_trigger.status = STARTED
            # allowed keys looks like a variable named `trigger_type`
            if not type(trigger_type) in [list, tuple, np.ndarray]:
                if not isinstance(trigger_type, str):
                    trigger_type = str(trigger_type)
                elif not ',' in trigger_type:
                    trigger_type = (trigger_type,)
                else:
                    trigger_type = eval(trigger_type)
            # keyboard checking is just starting
            waitOnFlip = True
            win.callOnFlip(scanner_trigger.clock.reset)  # t=0 on next screen flip
            win.callOnFlip(scanner_trigger.clearEvents, eventType='keyboard')  # clear events on next screen flip
        if scanner_trigger.status == STARTED and not waitOnFlip:
            theseKeys = scanner_trigger.getKeys(keyList=list(trigger_type), ignoreKeys=["escape"], waitRelease=False)
            _scanner_trigger_allKeys.extend(theseKeys)
            if len(_scanner_trigger_allKeys):
                scanner_trigger.keys = _scanner_trigger_allKeys[-1].name  # just the last key pressed
                scanner_trigger.rt = _scanner_trigger_allKeys[-1].rt
                scanner_trigger.duration = _scanner_trigger_allKeys[-1].duration
                # a response ends the routine
                continueRoutine = False
        
        # check for quit (typically the Esc key)
        if defaultKeyboard.getKeys(keyList=["escape"]):
            thisExp.status = FINISHED
        if thisExp.status == FINISHED or endExpNow:
            endExperiment(thisExp, win=win)
            return
        # pause experiment here if requested
        if thisExp.status == PAUSED:
            pauseExperiment(
                thisExp=thisExp, 
                win=win, 
                timers=[routineTimer], 
                playbackComponents=[]
            )
            # skip the frame we paused on
            continue
        
        # check if all components have finished
        if not continueRoutine:  # a component has requested a forced-end of Routine
            wait_for_scanner_trigger.forceEnded = routineForceEnded = True
            break
        continueRoutine = False  # will revert to True if at least one component still running
        for thisComponent in wait_for_scanner_trigger.components:
            if hasattr(thisComponent, "status") and thisComponent.status != FINISHED:
                continueRoutine = True
                break  # at least one component has not yet finished
        
        # refresh the screen
        if continueRoutine:  # don't flip if this routine is over or we'll get a blank screen
            win.flip()
    
    # --- Ending Routine "wait_for_scanner_trigger" ---
    for thisComponent in wait_for_scanner_trigger.components:
        if hasattr(thisComponent, "setAutoDraw"):
            thisComponent.setAutoDraw(False)
    # store stop times for wait_for_scanner_trigger
    wait_for_scanner_trigger.tStop = globalClock.getTime(format='float')
    wait_for_scanner_trigger.tStopRefresh = tThisFlipGlobal
    thisExp.addData('wait_for_scanner_trigger.stopped', wait_for_scanner_trigger.tStop)
    # Run 'End Routine' code from scanner_trigger_code
    # trigger_type is transformed from str to tuple in the routine, so just need to extract first element
    print('* Trigger "%s" received. Waiting %g s for dummy scans to finish before starting paradigm' % (trigger_type[0], dummy_delay_s))
    thisExp.nextEntry()
    # the Routine "wait_for_scanner_trigger" was not non-slip safe, so reset the non-slip timer
    routineTimer.reset()
    
    # --- Prepare to start Routine "wait_for_dummy_scans" ---
    # create an object to store info about Routine wait_for_dummy_scans
    wait_for_dummy_scans = data.Routine(
        name='wait_for_dummy_scans',
        components=[instructions_wait_for_dummy_scans],
    )
    wait_for_dummy_scans.status = NOT_STARTED
    continueRoutine = True
    # update component parameters for each repeat
    # store start times for wait_for_dummy_scans
    wait_for_dummy_scans.tStartRefresh = win.getFutureFlipTime(clock=globalClock)
    wait_for_dummy_scans.tStart = globalClock.getTime(format='float')
    wait_for_dummy_scans.status = STARTED
    thisExp.addData('wait_for_dummy_scans.started', wait_for_dummy_scans.tStart)
    wait_for_dummy_scans.maxDuration = None
    # keep track of which components have finished
    wait_for_dummy_scansComponents = wait_for_dummy_scans.components
    for thisComponent in wait_for_dummy_scans.components:
        thisComponent.tStart = None
        thisComponent.tStop = None
        thisComponent.tStartRefresh = None
        thisComponent.tStopRefresh = None
        if hasattr(thisComponent, 'status'):
            thisComponent.status = NOT_STARTED
    # reset timers
    t = 0
    _timeToFirstFrame = win.getFutureFlipTime(clock="now")
    frameN = -1
    
    # --- Run Routine "wait_for_dummy_scans" ---
    wait_for_dummy_scans.forceEnded = routineForceEnded = not continueRoutine
    while continueRoutine:
        # get current time
        t = routineTimer.getTime()
        tThisFlip = win.getFutureFlipTime(clock=routineTimer)
        tThisFlipGlobal = win.getFutureFlipTime(clock=None)
        frameN = frameN + 1  # number of completed frames (so 0 is the first frame)
        # update/draw components on each frame
        
        # *instructions_wait_for_dummy_scans* updates
        
        # if instructions_wait_for_dummy_scans is starting this frame...
        if instructions_wait_for_dummy_scans.status == NOT_STARTED and tThisFlip >= 0-frameTolerance:
            # keep track of start time/frame for later
            instructions_wait_for_dummy_scans.frameNStart = frameN  # exact frame index
            instructions_wait_for_dummy_scans.tStart = t  # local t and not account for scr refresh
            instructions_wait_for_dummy_scans.tStartRefresh = tThisFlipGlobal  # on global time
            win.timeOnFlip(instructions_wait_for_dummy_scans, 'tStartRefresh')  # time at next scr refresh
            # add timestamp to datafile
            thisExp.timestampOnFlip(win, 'instructions_wait_for_dummy_scans.started')
            # update status
            instructions_wait_for_dummy_scans.status = STARTED
            instructions_wait_for_dummy_scans.setAutoDraw(True)
        
        # if instructions_wait_for_dummy_scans is active this frame...
        if instructions_wait_for_dummy_scans.status == STARTED:
            # update params
            pass
        
        # if instructions_wait_for_dummy_scans is stopping this frame...
        if instructions_wait_for_dummy_scans.status == STARTED:
            # is it time to stop? (based on global clock, using actual start)
            if tThisFlipGlobal > instructions_wait_for_dummy_scans.tStartRefresh + dummy_delay_s-frameTolerance:
                # keep track of stop time/frame for later
                instructions_wait_for_dummy_scans.tStop = t  # not accounting for scr refresh
                instructions_wait_for_dummy_scans.tStopRefresh = tThisFlipGlobal  # on global time
                instructions_wait_for_dummy_scans.frameNStop = frameN  # exact frame index
                # add timestamp to datafile
                thisExp.timestampOnFlip(win, 'instructions_wait_for_dummy_scans.stopped')
                # update status
                instructions_wait_for_dummy_scans.status = FINISHED
                instructions_wait_for_dummy_scans.setAutoDraw(False)
        
        # check for quit (typically the Esc key)
        if defaultKeyboard.getKeys(keyList=["escape"]):
            thisExp.status = FINISHED
        if thisExp.status == FINISHED or endExpNow:
            endExperiment(thisExp, win=win)
            return
        # pause experiment here if requested
        if thisExp.status == PAUSED:
            pauseExperiment(
                thisExp=thisExp, 
                win=win, 
                timers=[routineTimer], 
                playbackComponents=[]
            )
            # skip the frame we paused on
            continue
        
        # check if all components have finished
        if not continueRoutine:  # a component has requested a forced-end of Routine
            wait_for_dummy_scans.forceEnded = routineForceEnded = True
            break
        continueRoutine = False  # will revert to True if at least one component still running
        for thisComponent in wait_for_dummy_scans.components:
            if hasattr(thisComponent, "status") and thisComponent.status != FINISHED:
                continueRoutine = True
                break  # at least one component has not yet finished
        
        # refresh the screen
        if continueRoutine:  # don't flip if this routine is over or we'll get a blank screen
            win.flip()
    
    # --- Ending Routine "wait_for_dummy_scans" ---
    for thisComponent in wait_for_dummy_scans.components:
        if hasattr(thisComponent, "setAutoDraw"):
            thisComponent.setAutoDraw(False)
    # store stop times for wait_for_dummy_scans
    wait_for_dummy_scans.tStop = globalClock.getTime(format='float')
    wait_for_dummy_scans.tStopRefresh = tThisFlipGlobal
    thisExp.addData('wait_for_dummy_scans.stopped', wait_for_dummy_scans.tStop)
    thisExp.nextEntry()
    # the Routine "wait_for_dummy_scans" was not non-slip safe, so reset the non-slip timer
    routineTimer.reset()
    
    # set up handler to look after randomisation of conditions etc
    blocks = data.TrialHandler2(
        name='blocks',
        nReps=8.0, 
        method='sequential', 
        extraInfo=expInfo, 
        originPath=-1, 
        trialList=[None], 
        seed=None, 
    )
    thisExp.addLoop(blocks)  # add the loop to the experiment
    thisBlock = blocks.trialList[0]  # so we can initialise stimuli with some values
    # abbreviate parameter names if possible (e.g. rgb = thisBlock.rgb)
    if thisBlock != None:
        for paramName in thisBlock:
            globals()[paramName] = thisBlock[paramName]
    
    for thisBlock in blocks:
        currentLoop = blocks
        thisExp.timestampOnFlip(win, 'thisRow.t', format=globalClock.format)
        # abbreviate parameter names if possible (e.g. rgb = thisBlock.rgb)
        if thisBlock != None:
            for paramName in thisBlock:
                globals()[paramName] = thisBlock[paramName]
        
        # set up handler to look after randomisation of conditions etc
        repeats_rest = data.TrialHandler2(
            name='repeats_rest',
            nReps=9.0, 
            method='sequential', 
            extraInfo=expInfo, 
            originPath=-1, 
            trialList=[None], 
            seed=None, 
        )
        thisExp.addLoop(repeats_rest)  # add the loop to the experiment
        thisRepeats_rest = repeats_rest.trialList[0]  # so we can initialise stimuli with some values
        # abbreviate parameter names if possible (e.g. rgb = thisRepeats_rest.rgb)
        if thisRepeats_rest != None:
            for paramName in thisRepeats_rest:
                globals()[paramName] = thisRepeats_rest[paramName]
        
        for thisRepeats_rest in repeats_rest:
            currentLoop = repeats_rest
            thisExp.timestampOnFlip(win, 'thisRow.t', format=globalClock.format)
            # abbreviate parameter names if possible (e.g. rgb = thisRepeats_rest.rgb)
            if thisRepeats_rest != None:
                for paramName in thisRepeats_rest:
                    globals()[paramName] = thisRepeats_rest[paramName]
            
            # --- Prepare to start Routine "rest_block" ---
            # create an object to store info about Routine rest_block
            rest_block = data.Routine(
                name='rest_block',
                components=[rest_crosshair, rest_symbols],
            )
            rest_block.status = NOT_STARTED
            continueRoutine = True
            # update component parameters for each repeat
            # Run 'Begin Routine' code from rest_code
            # Set the duration, in seconds, that the symbols appear on screen
            if rest_rep_counter < 8: 
                symbols_duration = 1
            else:
                symbols_duration = 1.2
            rest_symbols.setText(symbols[symbols_counter])
            # store start times for rest_block
            rest_block.tStartRefresh = win.getFutureFlipTime(clock=globalClock)
            rest_block.tStart = globalClock.getTime(format='float')
            rest_block.status = STARTED
            thisExp.addData('rest_block.started', rest_block.tStart)
            rest_block.maxDuration = None
            # keep track of which components have finished
            rest_blockComponents = rest_block.components
            for thisComponent in rest_block.components:
                thisComponent.tStart = None
                thisComponent.tStop = None
                thisComponent.tStartRefresh = None
                thisComponent.tStopRefresh = None
                if hasattr(thisComponent, 'status'):
                    thisComponent.status = NOT_STARTED
            # reset timers
            t = 0
            _timeToFirstFrame = win.getFutureFlipTime(clock="now")
            frameN = -1
            
            # --- Run Routine "rest_block" ---
            # if trial has changed, end Routine now
            if isinstance(repeats_rest, data.TrialHandler2) and thisRepeats_rest.thisN != repeats_rest.thisTrial.thisN:
                continueRoutine = False
            rest_block.forceEnded = routineForceEnded = not continueRoutine
            while continueRoutine:
                # get current time
                t = routineTimer.getTime()
                tThisFlip = win.getFutureFlipTime(clock=routineTimer)
                tThisFlipGlobal = win.getFutureFlipTime(clock=None)
                frameN = frameN + 1  # number of completed frames (so 0 is the first frame)
                # update/draw components on each frame
                
                # *rest_crosshair* updates
                
                # if rest_crosshair is starting this frame...
                if rest_crosshair.status == NOT_STARTED and tThisFlip >= 0-frameTolerance:
                    # keep track of start time/frame for later
                    rest_crosshair.frameNStart = frameN  # exact frame index
                    rest_crosshair.tStart = t  # local t and not account for scr refresh
                    rest_crosshair.tStartRefresh = tThisFlipGlobal  # on global time
                    win.timeOnFlip(rest_crosshair, 'tStartRefresh')  # time at next scr refresh
                    # add timestamp to datafile
                    thisExp.timestampOnFlip(win, 'rest_crosshair.started')
                    # update status
                    rest_crosshair.status = STARTED
                    rest_crosshair.setAutoDraw(True)
                
                # if rest_crosshair is active this frame...
                if rest_crosshair.status == STARTED:
                    # update params
                    pass
                
                # if rest_crosshair is stopping this frame...
                if rest_crosshair.status == STARTED:
                    # is it time to stop? (based on global clock, using actual start)
                    if tThisFlipGlobal > rest_crosshair.tStartRefresh + 1-frameTolerance:
                        # keep track of stop time/frame for later
                        rest_crosshair.tStop = t  # not accounting for scr refresh
                        rest_crosshair.tStopRefresh = tThisFlipGlobal  # on global time
                        rest_crosshair.frameNStop = frameN  # exact frame index
                        # add timestamp to datafile
                        thisExp.timestampOnFlip(win, 'rest_crosshair.stopped')
                        # update status
                        rest_crosshair.status = FINISHED
                        rest_crosshair.setAutoDraw(False)
                
                # *rest_symbols* updates
                
                # if rest_symbols is starting this frame...
                if rest_symbols.status == NOT_STARTED and tThisFlip >= 1-frameTolerance:
                    # keep track of start time/frame for later
                    rest_symbols.frameNStart = frameN  # exact frame index
                    rest_symbols.tStart = t  # local t and not account for scr refresh
                    rest_symbols.tStartRefresh = tThisFlipGlobal  # on global time
                    win.timeOnFlip(rest_symbols, 'tStartRefresh')  # time at next scr refresh
                    # add timestamp to datafile
                    thisExp.timestampOnFlip(win, 'rest_symbols.started')
                    # update status
                    rest_symbols.status = STARTED
                    rest_symbols.setAutoDraw(True)
                
                # if rest_symbols is active this frame...
                if rest_symbols.status == STARTED:
                    # update params
                    pass
                
                # if rest_symbols is stopping this frame...
                if rest_symbols.status == STARTED:
                    # is it time to stop? (based on global clock, using actual start)
                    if tThisFlipGlobal > rest_symbols.tStartRefresh + symbols_duration-frameTolerance:
                        # keep track of stop time/frame for later
                        rest_symbols.tStop = t  # not accounting for scr refresh
                        rest_symbols.tStopRefresh = tThisFlipGlobal  # on global time
                        rest_symbols.frameNStop = frameN  # exact frame index
                        # add timestamp to datafile
                        thisExp.timestampOnFlip(win, 'rest_symbols.stopped')
                        # update status
                        rest_symbols.status = FINISHED
                        rest_symbols.setAutoDraw(False)
                
                # check for quit (typically the Esc key)
                if defaultKeyboard.getKeys(keyList=["escape"]):
                    thisExp.status = FINISHED
                if thisExp.status == FINISHED or endExpNow:
                    endExperiment(thisExp, win=win)
                    return
                # pause experiment here if requested
                if thisExp.status == PAUSED:
                    pauseExperiment(
                        thisExp=thisExp, 
                        win=win, 
                        timers=[routineTimer], 
                        playbackComponents=[]
                    )
                    # skip the frame we paused on
                    continue
                
                # check if all components have finished
                if not continueRoutine:  # a component has requested a forced-end of Routine
                    rest_block.forceEnded = routineForceEnded = True
                    break
                continueRoutine = False  # will revert to True if at least one component still running
                for thisComponent in rest_block.components:
                    if hasattr(thisComponent, "status") and thisComponent.status != FINISHED:
                        continueRoutine = True
                        break  # at least one component has not yet finished
                
                # refresh the screen
                if continueRoutine:  # don't flip if this routine is over or we'll get a blank screen
                    win.flip()
            
            # --- Ending Routine "rest_block" ---
            for thisComponent in rest_block.components:
                if hasattr(thisComponent, "setAutoDraw"):
                    thisComponent.setAutoDraw(False)
            # store stop times for rest_block
            rest_block.tStop = globalClock.getTime(format='float')
            rest_block.tStopRefresh = tThisFlipGlobal
            thisExp.addData('rest_block.stopped', rest_block.tStop)
            # Run 'End Routine' code from rest_code
            # Increment symbols_counter and rest_rep_counter
            symbols_counter += 1
            if rest_rep_counter < 8: 
                rest_rep_counter += 1
            else:
                rest_rep_counter = 0
            
            # Re-shuffle list of symbols if necessary
            if symbols_counter == len(symbols):
                random.shuffle(symbols)
                symbols_counter = 0
            # the Routine "rest_block" was not non-slip safe, so reset the non-slip timer
            routineTimer.reset()
        # completed 9.0 repeats of 'repeats_rest'
        
        
        # set up handler to look after randomisation of conditions etc
        repeats_task = data.TrialHandler2(
            name='repeats_task',
            nReps=9.0, 
            method='sequential', 
            extraInfo=expInfo, 
            originPath=-1, 
            trialList=[None], 
            seed=None, 
        )
        thisExp.addLoop(repeats_task)  # add the loop to the experiment
        thisRepeats_task = repeats_task.trialList[0]  # so we can initialise stimuli with some values
        # abbreviate parameter names if possible (e.g. rgb = thisRepeats_task.rgb)
        if thisRepeats_task != None:
            for paramName in thisRepeats_task:
                globals()[paramName] = thisRepeats_task[paramName]
        
        for thisRepeats_task in repeats_task:
            currentLoop = repeats_task
            thisExp.timestampOnFlip(win, 'thisRow.t', format=globalClock.format)
            # abbreviate parameter names if possible (e.g. rgb = thisRepeats_task.rgb)
            if thisRepeats_task != None:
                for paramName in thisRepeats_task:
                    globals()[paramName] = thisRepeats_task[paramName]
            
            # --- Prepare to start Routine "task_block" ---
            # create an object to store info about Routine task_block
            task_block = data.Routine(
                name='task_block',
                components=[task_crosshair, task_noun],
            )
            task_block.status = NOT_STARTED
            continueRoutine = True
            # update component parameters for each repeat
            # Run 'Begin Routine' code from task_code
            # Set the duration, in seconds, that the noun appears on screen
            if task_rep_counter < 8: 
                noun_duration = 1
            else:
                noun_duration = 1.2
            
            # Manually overide attributes of task_noun (which is TextStim class)
            setattr(task_noun, 'languageStyle', text_style)
            setattr(task_noun, 'arabic_reshaper', ArabicReshaper(configuration = arabic_config))
            task_noun.setText(nouns[noun_counter])
            # store start times for task_block
            task_block.tStartRefresh = win.getFutureFlipTime(clock=globalClock)
            task_block.tStart = globalClock.getTime(format='float')
            task_block.status = STARTED
            thisExp.addData('task_block.started', task_block.tStart)
            task_block.maxDuration = None
            # keep track of which components have finished
            task_blockComponents = task_block.components
            for thisComponent in task_block.components:
                thisComponent.tStart = None
                thisComponent.tStop = None
                thisComponent.tStartRefresh = None
                thisComponent.tStopRefresh = None
                if hasattr(thisComponent, 'status'):
                    thisComponent.status = NOT_STARTED
            # reset timers
            t = 0
            _timeToFirstFrame = win.getFutureFlipTime(clock="now")
            frameN = -1
            
            # --- Run Routine "task_block" ---
            # if trial has changed, end Routine now
            if isinstance(repeats_task, data.TrialHandler2) and thisRepeats_task.thisN != repeats_task.thisTrial.thisN:
                continueRoutine = False
            task_block.forceEnded = routineForceEnded = not continueRoutine
            while continueRoutine:
                # get current time
                t = routineTimer.getTime()
                tThisFlip = win.getFutureFlipTime(clock=routineTimer)
                tThisFlipGlobal = win.getFutureFlipTime(clock=None)
                frameN = frameN + 1  # number of completed frames (so 0 is the first frame)
                # update/draw components on each frame
                
                # *task_crosshair* updates
                
                # if task_crosshair is starting this frame...
                if task_crosshair.status == NOT_STARTED and tThisFlip >= 0-frameTolerance:
                    # keep track of start time/frame for later
                    task_crosshair.frameNStart = frameN  # exact frame index
                    task_crosshair.tStart = t  # local t and not account for scr refresh
                    task_crosshair.tStartRefresh = tThisFlipGlobal  # on global time
                    win.timeOnFlip(task_crosshair, 'tStartRefresh')  # time at next scr refresh
                    # add timestamp to datafile
                    thisExp.timestampOnFlip(win, 'task_crosshair.started')
                    # update status
                    task_crosshair.status = STARTED
                    task_crosshair.setAutoDraw(True)
                
                # if task_crosshair is active this frame...
                if task_crosshair.status == STARTED:
                    # update params
                    pass
                
                # if task_crosshair is stopping this frame...
                if task_crosshair.status == STARTED:
                    # is it time to stop? (based on global clock, using actual start)
                    if tThisFlipGlobal > task_crosshair.tStartRefresh + 1-frameTolerance:
                        # keep track of stop time/frame for later
                        task_crosshair.tStop = t  # not accounting for scr refresh
                        task_crosshair.tStopRefresh = tThisFlipGlobal  # on global time
                        task_crosshair.frameNStop = frameN  # exact frame index
                        # add timestamp to datafile
                        thisExp.timestampOnFlip(win, 'task_crosshair.stopped')
                        # update status
                        task_crosshair.status = FINISHED
                        task_crosshair.setAutoDraw(False)
                
                # *task_noun* updates
                
                # if task_noun is starting this frame...
                if task_noun.status == NOT_STARTED and tThisFlip >= 1-frameTolerance:
                    # keep track of start time/frame for later
                    task_noun.frameNStart = frameN  # exact frame index
                    task_noun.tStart = t  # local t and not account for scr refresh
                    task_noun.tStartRefresh = tThisFlipGlobal  # on global time
                    win.timeOnFlip(task_noun, 'tStartRefresh')  # time at next scr refresh
                    # add timestamp to datafile
                    thisExp.timestampOnFlip(win, 'task_noun.started')
                    # update status
                    task_noun.status = STARTED
                    task_noun.setAutoDraw(True)
                
                # if task_noun is active this frame...
                if task_noun.status == STARTED:
                    # update params
                    pass
                
                # if task_noun is stopping this frame...
                if task_noun.status == STARTED:
                    # is it time to stop? (based on global clock, using actual start)
                    if tThisFlipGlobal > task_noun.tStartRefresh + noun_duration-frameTolerance:
                        # keep track of stop time/frame for later
                        task_noun.tStop = t  # not accounting for scr refresh
                        task_noun.tStopRefresh = tThisFlipGlobal  # on global time
                        task_noun.frameNStop = frameN  # exact frame index
                        # add timestamp to datafile
                        thisExp.timestampOnFlip(win, 'task_noun.stopped')
                        # update status
                        task_noun.status = FINISHED
                        task_noun.setAutoDraw(False)
                
                # check for quit (typically the Esc key)
                if defaultKeyboard.getKeys(keyList=["escape"]):
                    thisExp.status = FINISHED
                if thisExp.status == FINISHED or endExpNow:
                    endExperiment(thisExp, win=win)
                    return
                # pause experiment here if requested
                if thisExp.status == PAUSED:
                    pauseExperiment(
                        thisExp=thisExp, 
                        win=win, 
                        timers=[routineTimer], 
                        playbackComponents=[]
                    )
                    # skip the frame we paused on
                    continue
                
                # check if all components have finished
                if not continueRoutine:  # a component has requested a forced-end of Routine
                    task_block.forceEnded = routineForceEnded = True
                    break
                continueRoutine = False  # will revert to True if at least one component still running
                for thisComponent in task_block.components:
                    if hasattr(thisComponent, "status") and thisComponent.status != FINISHED:
                        continueRoutine = True
                        break  # at least one component has not yet finished
                
                # refresh the screen
                if continueRoutine:  # don't flip if this routine is over or we'll get a blank screen
                    win.flip()
            
            # --- Ending Routine "task_block" ---
            for thisComponent in task_block.components:
                if hasattr(thisComponent, "setAutoDraw"):
                    thisComponent.setAutoDraw(False)
            # store stop times for task_block
            task_block.tStop = globalClock.getTime(format='float')
            task_block.tStopRefresh = tThisFlipGlobal
            thisExp.addData('task_block.stopped', task_block.tStop)
            # Run 'End Routine' code from task_code
            # Increment noun_counter and task_rep_counter
            noun_counter += 1
            if task_rep_counter < 8: 
                task_rep_counter += 1
            else:
                task_rep_counter = 0
            
            # Re-shuffle list of nouns if necessary
            if noun_counter == len(nouns):
                random.shuffle(nouns)
                noun_counter = 0
            # the Routine "task_block" was not non-slip safe, so reset the non-slip timer
            routineTimer.reset()
        # completed 9.0 repeats of 'repeats_task'
        
    # completed 8.0 repeats of 'blocks'
    
    
    # --- Prepare to start Routine "rest_pad" ---
    # create an object to store info about Routine rest_pad
    rest_pad = data.Routine(
        name='rest_pad',
        components=[rest_2],
    )
    rest_pad.status = NOT_STARTED
    continueRoutine = True
    # update component parameters for each repeat
    # store start times for rest_pad
    rest_pad.tStartRefresh = win.getFutureFlipTime(clock=globalClock)
    rest_pad.tStart = globalClock.getTime(format='float')
    rest_pad.status = STARTED
    thisExp.addData('rest_pad.started', rest_pad.tStart)
    rest_pad.maxDuration = None
    # keep track of which components have finished
    rest_padComponents = rest_pad.components
    for thisComponent in rest_pad.components:
        thisComponent.tStart = None
        thisComponent.tStop = None
        thisComponent.tStartRefresh = None
        thisComponent.tStopRefresh = None
        if hasattr(thisComponent, 'status'):
            thisComponent.status = NOT_STARTED
    # reset timers
    t = 0
    _timeToFirstFrame = win.getFutureFlipTime(clock="now")
    frameN = -1
    
    # --- Run Routine "rest_pad" ---
    rest_pad.forceEnded = routineForceEnded = not continueRoutine
    while continueRoutine and routineTimer.getTime() < 5.2:
        # get current time
        t = routineTimer.getTime()
        tThisFlip = win.getFutureFlipTime(clock=routineTimer)
        tThisFlipGlobal = win.getFutureFlipTime(clock=None)
        frameN = frameN + 1  # number of completed frames (so 0 is the first frame)
        # update/draw components on each frame
        
        # *rest_2* updates
        
        # if rest_2 is starting this frame...
        if rest_2.status == NOT_STARTED and tThisFlip >= 0-frameTolerance:
            # keep track of start time/frame for later
            rest_2.frameNStart = frameN  # exact frame index
            rest_2.tStart = t  # local t and not account for scr refresh
            rest_2.tStartRefresh = tThisFlipGlobal  # on global time
            win.timeOnFlip(rest_2, 'tStartRefresh')  # time at next scr refresh
            # add timestamp to datafile
            thisExp.timestampOnFlip(win, 'rest_2.started')
            # update status
            rest_2.status = STARTED
            rest_2.setAutoDraw(True)
        
        # if rest_2 is active this frame...
        if rest_2.status == STARTED:
            # update params
            pass
        
        # if rest_2 is stopping this frame...
        if rest_2.status == STARTED:
            # is it time to stop? (based on global clock, using actual start)
            if tThisFlipGlobal > rest_2.tStartRefresh + 5.2-frameTolerance:
                # keep track of stop time/frame for later
                rest_2.tStop = t  # not accounting for scr refresh
                rest_2.tStopRefresh = tThisFlipGlobal  # on global time
                rest_2.frameNStop = frameN  # exact frame index
                # add timestamp to datafile
                thisExp.timestampOnFlip(win, 'rest_2.stopped')
                # update status
                rest_2.status = FINISHED
                rest_2.setAutoDraw(False)
        
        # check for quit (typically the Esc key)
        if defaultKeyboard.getKeys(keyList=["escape"]):
            thisExp.status = FINISHED
        if thisExp.status == FINISHED or endExpNow:
            endExperiment(thisExp, win=win)
            return
        # pause experiment here if requested
        if thisExp.status == PAUSED:
            pauseExperiment(
                thisExp=thisExp, 
                win=win, 
                timers=[routineTimer], 
                playbackComponents=[]
            )
            # skip the frame we paused on
            continue
        
        # check if all components have finished
        if not continueRoutine:  # a component has requested a forced-end of Routine
            rest_pad.forceEnded = routineForceEnded = True
            break
        continueRoutine = False  # will revert to True if at least one component still running
        for thisComponent in rest_pad.components:
            if hasattr(thisComponent, "status") and thisComponent.status != FINISHED:
                continueRoutine = True
                break  # at least one component has not yet finished
        
        # refresh the screen
        if continueRoutine:  # don't flip if this routine is over or we'll get a blank screen
            win.flip()
    
    # --- Ending Routine "rest_pad" ---
    for thisComponent in rest_pad.components:
        if hasattr(thisComponent, "setAutoDraw"):
            thisComponent.setAutoDraw(False)
    # store stop times for rest_pad
    rest_pad.tStop = globalClock.getTime(format='float')
    rest_pad.tStopRefresh = tThisFlipGlobal
    thisExp.addData('rest_pad.stopped', rest_pad.tStop)
    # using non-slip timing so subtract the expected duration of this Routine (unless ended on request)
    if rest_pad.maxDurationReached:
        routineTimer.addTime(-rest_pad.maxDuration)
    elif rest_pad.forceEnded:
        routineTimer.reset()
    else:
        routineTimer.addTime(-5.200000)
    thisExp.nextEntry()
    
    # mark experiment as finished
    endExperiment(thisExp, win=win)


def saveData(thisExp):
    """
    Save data from this experiment
    
    Parameters
    ==========
    thisExp : psychopy.data.ExperimentHandler
        Handler object for this experiment, contains the data to save and information about 
        where to save it to.
    """
    filename = thisExp.dataFileName
    # these shouldn't be strictly necessary (should auto-save)
    thisExp.saveAsPickle(filename)


def endExperiment(thisExp, win=None):
    """
    End this experiment, performing final shut down operations.
    
    This function does NOT close the window or end the Python process - use `quit` for this.
    
    Parameters
    ==========
    thisExp : psychopy.data.ExperimentHandler
        Handler object for this experiment, contains the data to save and information about 
        where to save it to.
    win : psychopy.visual.Window
        Window for this experiment.
    """
    if win is not None:
        # remove autodraw from all current components
        win.clearAutoDraw()
        # Flip one final time so any remaining win.callOnFlip() 
        # and win.timeOnFlip() tasks get executed
        win.flip()
    # return console logger level to WARNING
    logging.console.setLevel(logging.WARNING)
    # mark experiment handler as finished
    thisExp.status = FINISHED
    logging.flush()


def quit(thisExp, win=None, thisSession=None):
    """
    Fully quit, closing the window and ending the Python process.
    
    Parameters
    ==========
    win : psychopy.visual.Window
        Window to close.
    thisSession : psychopy.session.Session or None
        Handle of the Session object this experiment is being run from, if any.
    """
    thisExp.abort()  # or data files will save again on exit
    # make sure everything is closed down
    if win is not None:
        # Flip one final time so any remaining win.callOnFlip() 
        # and win.timeOnFlip() tasks get executed before quitting
        win.flip()
        win.close()
    logging.flush()
    if thisSession is not None:
        thisSession.stop()
    # terminate Python process
    core.quit()


# if running this experiment as a script...
if __name__ == '__main__':
    # call all functions in order
    thisExp = setupData(expInfo=expInfo)
    logFile = setupLogging(filename=thisExp.dataFileName)
    win = setupWindow(expInfo=expInfo)
    setupDevices(expInfo=expInfo, thisExp=thisExp, win=win)
    run(
        expInfo=expInfo, 
        thisExp=thisExp, 
        win=win,
        globalClock='float'
    )
    saveData(thisExp=thisExp)
    quit(thisExp=thisExp, win=win)
