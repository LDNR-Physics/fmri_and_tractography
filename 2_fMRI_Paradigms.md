# 2. fMRI Paradigms
## 2.1. Introduction
We recommend fMRI paradigms for testing: 
 - laterality of language activations with 
 [picture naming](#22-laterality-of-language-activations-with-picture-naming), 
 [verbal fluency](#23-laterality-of-language-activations-with-verbal-fluency) and 
 [verb generation](#24-laterality-of-language-activations-with-verb-generation)
 - motor activations of:
   - the [left hand](#25-motor-activations-of-the-left-hand)
   - the [right hand](#26-motor-activations-of-the-right-hand)
   - [both hands](#27-motor-activations-of-the-both-hands)
   - the [left foot](#28-motor-activations-of-the-left-foot)
   - the [right foot](#29-motor-activations-of-the-right-foot)
   - [both feet](#210-motor-activations-of-both-feet)
   - the [lips](#211-motor-activations-of-the-lips)
 - sensory activations of the [hands](#212-sensory-activations-of-the-hands) and 
 [feet](#213-sensory-activations-of-the-feet)
 - [visual activations](#214-visual-activations)

>[!TIP]
>When testing the laterality of language activations we also recommend 
>measuring the subjects [handedness](#215-assessing-handedness).

We recommend using [PsychoPy](https://www.psychopy.org/) to display the fMRI 
paradigms via an MRI conditional display screen from, for example,
 [Cambridge Research Systems Ltd](https://www.crsltd.com/tools-for-functional-imaging/mr-safe-displays/boldscreen-32-lcd-for-fmri/nest/boldscreen-32-faqs)
or [NordicNeuroLab](https://www.nordicneurolab.com/product/fmri-acquisition).

## 2.2. Laterality of Language Activations with Picture Naming
### 2.2.1. Design and Timing
The paradigm has a block-design with alternating 18.2 second periods of rest 
and task that repeat for the duration of the fMRI data acquisition 
(111 measurements i.e. 299.7 seconds). The paradigm starts with a rest period 
i.e.:

Rest-Task-Rest-Task-...-Rest-Task

Therefore the task onsets occur at 18.2, 54.6, 91, 127.4, 163.8, 200.2, 236.6 
and 273 seconds.

### 2.2.2. Instructions
Prior to the start of data acquisition a set of instructions are displayed on 
the fMRI screen as shown below:
![](./fmri_paradigms/picture_naming/resources/instructions_picture_naming.png)

### 2.2.3. Rest Periods
During the rest periods of the paradigm a yellow cross or symbols are 
displayed, alternately for 1 second each (except 1.2s final period), centrally 
on a black background on the fMRI screen i.e.:

Cross-Symbols-Cross-Symbols...-Cross-Symbols

The cross is shown below:
![](./fmri_paradigms/cross.png)

The symbols are chosen randomly from the following list:

1. */+^;@
2. |\£?:#
3. %=+\|£
4. $%^£&*
5. *$&^%"
6. @?£<*)
7. +_>~#"
8. !*^£:<
9. \#';/?&^
10. @-@:{)*
11. &"+`¬?.>

For example:
![](./fmri_paradigms/rest_example_symbols.png)

### 2.2.4. Task Periods
During the task periods of the paradigm a yellow cross or a picture of an object 
is displayed, alternately for 1 second each (except 1.2s final period), centrally 
on a black background on the fMRI screen i.e.:

Cross-Object-Cross-Object-...-Cross-Object

The same cross, as shown [above](#223-rest-periods), is used.

The objects are chosen randomly from this set of 
[pictures](./fmri_paradigms/picture_naming/resources/objects). 

### 2.2.5. PsychoPy Experiment
The files needed to run this paradigm in [PsychoPy](https://www.psychopy.org/) 
can be found [here](fmri_paradigms/picture_naming).

## 2.3. Laterality of Language Activations with Verbal Fluency
### 2.3.1. Design and Timing
The paradigm has a block-design as described [above](#221-design-and-timing).

### 2.3.2. Instructions
Prior to the start of data acquisition a set of instructions are displayed on 
the fMRI screen as shown below:

![](./fmri_paradigms/verbal_fluency/resources/verbal_fluency_instructions.png)

### 2.3.3. Rest Periods
During the rest periods of the paradigm a yellow cross, as shown 
[above](#223-rest-periods), is displayed centrally on a black background on 
the fMRI screen. 

### 2.3.4. Task Periods
During the task periods of the paradigm letters, drawn at random from the 
English alphabet (excluding the letters H,I,J,K,Q,W,X and Y) are displayed 
centrally on a black background on the fMRI screen, e.g.:
 
![](./fmri_paradigms/task_example_verbal_fluency.png)

### 2.3.5. PsychoPy Experiment
The files needed to run this paradigm in [PsychoPy](https://www.psychopy.org/) 
can be found [here](fmri_paradigms/verbal_fluency).

## 2.4. Laterality of Language Activations with Verb Generation
### 2.4.1. Design and Timing
The paradigm has a block-design as described [above](#221-design-and-timing).

### 2.4.2. Instructions
Prior to the start of data acquisition a set of instructions are displayed on 
the fMRI screen as shown below:

![](./fmri_paradigms/instructions_verb_generation.png)

### 2.4.3. Rest Periods
The rest periods are the same as for the picture naming task with alternating
 symbols and cross images as described [above](#223-rest-periods).

### 2.4.4. Task Periods
During the task periods of the paradigm a yellow cross or nouns are 
displayed, alternately for 1 second each (except 1.2s final period), centrally 
on a black background on the fMRI screen i.e.:

Cross-Nouns-Cross-Nouns-...-Cross-Nouns

The same cross, as shown [above](#223-rest-periods), is used.

The nouns are chosen randomly from the following list:

_air, ball, baton, bell, bench, bike, book, bug, basket, bed, blanket, boat, 
beer, bread, brick, broom, cane, cup, chair, car, carpet, cat, crayon, cigar,
cloud, chess, doll, dollar, door, dog, dress, fan, finger, flag, fire, fork,
food, fist, foot, gift, grape, gun, glove, gum, hammer, house, hand, horse,
horn, ice, jet, juice, knife, ladder, lake, lawn, letter, milk, movie, mouse,
match, money, music, mouth, needle, oar, oven, pen, paper, phone, pill, plane,
pool, purse, pillow, radio, rope, ruler, razor, seed, shirt, song, stove, scale,
soap, shoes, table, tree, train, towel, violin, wood, wheel, wine, water or yarn_

For example:

![](./fmri_paradigms/task_example_verb_generation.png)

### 2.4.5. PsychoPy Experiment
The files needed to run this paradigm in [PsychoPy](https://www.psychopy.org/) 
in a number of different languages can be found here:
- [Arabic](fmri_paradigms/psychopy_paradigms/Verb_Generation_Arabic)
- [English](fmri_paradigms/psychopy_paradigms/Verb_Generation_English)
- [French](fmri_paradigms/psychopy_paradigms/Verb_Generation_French)
- [German](fmri_paradigms/psychopy_paradigms/Verb_Generation_German)
- [Greek](fmri_paradigms/psychopy_paradigms/Verb_Generation_Greek)
- [Hebrew](fmri_paradigms/psychopy_paradigms/Verb_Generation_Hebrew)
- [Hungarian](fmri_paradigms/psychopy_paradigms/Verb_Generation_Hungarian)
- [Italian](fmri_paradigms/psychopy_paradigms/Verb_Generation_Italian)
- [Polish](fmri_paradigms/psychopy_paradigms/Verb_Generation_Polish)
- [Portuguese](fmri_paradigms/psychopy_paradigms/Verb_Generation_Portuguese)
- [Romanian](fmri_paradigms/psychopy_paradigms/Verb_Generation_Romanian)
- [Russian](fmri_paradigms/psychopy_paradigms/Verb_Generation_Russian)
- [Serbian](fmri_paradigms/psychopy_paradigms/Verb_Generation_Serbian)
- [Spanish](fmri_paradigms/psychopy_paradigms/Verb_Generation_Spanish)
- [Turkish](fmri_paradigms/psychopy_paradigms/Verb_Generation_Turkish)
- [Welsh](fmri_paradigms/psychopy_paradigms/Verb_Generation_Welsh)

[!NOTE] The instruction page is always shown in English so you will need to 
explain the task to the subject if they speak a different language.

## 2.5. Motor Activations of the Left Hand
### 2.5.1. Design and Timing
The paradigm has a block-design as described [above](#221-design-and-timing).

### 2.5.2. Instructions
Prior to the start of data acquisition a set of instructions are displayed on 
the fMRI screen as shown below:
![](./fmri_paradigms/instructions_hands_left.png)

### 2.5.3. Rest Periods
During the rest periods of the paradigm the following image is displayed on the 
fMRI screen i.e. the subject keeps both hands still: 
![](./fmri_paradigms/rest_hands.png)

### 2.5.4. Task Periods
During the task periods of the paradigm the following image is displayed on the 
fMRI screen: 
![](./fmri_paradigms/task_hands_left.png)

### 2.5.5. PsychoPy Experiment
The files needed to run this paradigm in [PsychoPy](https://www.psychopy.org/) 
can be found [here](fmri_paradigms/psychopy_paradigms/Left_Hand).

## 2.6. Motor Activations of the Right Hand
### 2.6.1. Design and Timing
The paradigm has a block-design as described [above](#221-design-and-timing).

### 2.6.2. Instructions
Prior to the start of data acquisition a set of instructions are displayed on 
the fMRI screen as shown below:
![](./fmri_paradigms/instructions_hands_right.png)

### 2.6.3. Rest Periods
During the rest periods of the paradigm the following image is displayed on the 
fMRI screen i.e. the subject keeps both hands still: 
![](./fmri_paradigms/rest_hands.png)

### 2.6.4. Task Periods
During the task periods of the paradigm the following image is displayed on the 
fMRI screen: 
![](./fmri_paradigms/task_hands_right.png)

### 2.6.5. PsychoPy Experiment
The files needed to run this paradigm in [PsychoPy](https://www.psychopy.org/) 
can be found [here](fmri_paradigms/psychopy_paradigms/Right_Hand).

## 2.7. Motor Activations of the Both Hands
### 2.7.1. Design and Timing
The paradigm has a block-design with alternating periods of rest (18.2 seconds)
and two tasks (each 18.2 seconds long) that repeat for the duration of the 
fMRI data acquisition (164 measurements i.e. 437.9 seconds). The paradigm 
starts with a rest period i.e.:

Rest-Right Hand-Left Hand-Rest-Right Hand-Left Hand-Rest-Left Hand-Right Hand-Rest-Left Hand-Right Hand-Rest-Right Hand-Left Hand-Rest-Right Hand-Left Hand-Rest-Left Hand-Right Hand-Rest-Left Hand-Right Hand

>[!NOTE] The order within each "Left Hand, Right Hand" task pair was selected 
>at random.

### 2.7.2. Instructions
Prior to the start of data acquisition a set of instructions are displayed on 
the fMRI screen as shown below:
![](./fmri_paradigms/instructions_hands_both.png)

### 2.7.3. Rest Periods
During the rest periods of the paradigm the following image is displayed on the 
fMRI screen i.e. the subject keeps both hands still: 
![](./fmri_paradigms/rest_hands.png)

### 2.7.4. Task Periods
During the task periods of the paradigm the either the left hand or right hand 
image is displayed on the fMRI screen as described [above](#271-design-and-timing).

### 2.7.5. PsychoPy Experiment
The files needed to run this paradigm in [PsychoPy](https://www.psychopy.org/) 
can be found [here](fmri_paradigms/psychopy_paradigms/Both_Hands).

## 2.8. Motor Activations of the Left Foot
### 2.8.1. Design and Timing
The paradigm has a block-design as described [above](#221-design-and-timing).

### 2.8.2. Instructions
Prior to the start of data acquisition a set of instructions are displayed on 
the fMRI screen as shown below:
![](./fmri_paradigms/instructions_feet_left.png)

### 2.8.3. Rest Periods
During the rest periods of the paradigm the following image is displayed on the 
fMRI screen i.e. the subject keeps both feet still: 
![](./fmri_paradigms/rest_feet.png)

### 2.8.4. Task Periods
During the task periods of the paradigm the following image is displayed on the 
fMRI screen: 
![](./fmri_paradigms/task_feet_left.png)

### 2.8.5. PsychoPy Experiment
The files needed to run this paradigm in [PsychoPy](https://www.psychopy.org/) 
can be found [here](fmri_paradigms/psychopy_paradigms/Left_Foot).

## 2.9. Motor Activations of the Right Foot
### 2.9.1. Design and Timing
The paradigm has a block-design as described [above](#221-design-and-timing).

### 2.9.2. Instructions
Prior to the start of data acquisition a set of instructions are displayed on 
the fMRI screen as shown below:
![](./fmri_paradigms/instructions_feet_right.png)

### 2.9.3. Rest Periods
During the rest periods of the paradigm the following image is displayed on the 
fMRI screen i.e. the subject keeps both feet still: 
![](./fmri_paradigms/rest_feet.png)

### 2.9.4. Task Periods
During the task periods of the paradigm the following image is displayed on the 
fMRI screen: 
![](./fmri_paradigms/task_feet_right.png)

### 2.9.5. PsychoPy Experiment
The files needed to run this paradigm in [PsychoPy](https://www.psychopy.org/) 
can be found [here](fmri_paradigms/psychopy_paradigms/Right_Foot).

## 2.10. Motor Activations of Both Feet
### 2.10.1. Design and Timing
The paradigm has a block-design with alternating periods of rest (18.2 seconds)
and two tasks (each 18.2 seconds long) that repeat for the duration of the 
fMRI data acquisition (164 measurements i.e. 437.9 seconds). The paradigm 
starts with a rest period i.e.:

Rest-Right Foot-Left Foot-Rest-Right Foot-Left Foot-Rest-Left Foot-Right Foot-Rest-Left Foot-Right Foot-Rest-Right Foot-Left Foot-Rest-Right Foot-Left Foot-Rest-Left Foot-Right Foot-Rest-Left Foot-Right Foot
>[!NOTE] The order within each "Left Foot, Right Foot" task pair was selected 
>at random.

### 2.10.2. Instructions
Prior to the start of data acquisition a set of instructions are displayed on 
the fMRI screen as shown below:
![](./fmri_paradigms/instructions_feet_both.png)

### 2.10.3. Rest Periods
During the rest periods of the paradigm the following image is displayed on the 
fMRI screen i.e. the subject keeps both feet still: 
![](./fmri_paradigms/rest_feet.png)

### 2.10.4. Task Periods
During the task periods of the paradigm the either the left foot or right foot 
image is displayed on the fMRI screen as described [above](#2101-design-and-timing).

### 2.10.5. PsychoPy Experiment
The files needed to run this paradigm in [PsychoPy](https://www.psychopy.org/) 
can be found [here](fmri_paradigms/psychopy_paradigms/Both_Feet).

## 2.11. Motor Activations of the Lips
### 2.11.1. Design and Timing
The paradigm has a block-design as described [above](#221-design-and-timing).

### 2.11.2. Instructions
Prior to the start of data acquisition a set of instructions are displayed on 
the fMRI screen as shown below:
![](./fmri_paradigms/instructions_lips.png)

### 2.11.3. Rest Periods
During the rest periods of the paradigm the following image is displayed on the 
fMRI screen: 
![](./fmri_paradigms/rest_lips.png)

### 2.11.4. Task Periods
During the task periods of the paradigm the following image is displayed on the 
fMRI screen: 
![](./fmri_paradigms/task_lips.png)

### 2.11.5. PsychoPy Experiment
The files needed to run this paradigm in [PsychoPy](https://www.psychopy.org/) 
can be found [here](fmri_paradigms/psychopy_paradigms/Lips).

## 2.12. Sensory Activations of the Hands
To test sensory activations of the hand(s) we use the same paradigm as for 
motor activations except that instead of asking the subject to tap their 
fingers a member of staff strokes the palm of the subject's hand(s).

## 2.13. Sensory Activations of the Feet
To test sensory activations of the foot/feet we use the same paradigm as for 
motor activations except that instead of asking the subject to move their 
toes a member of staff strokes the top of the subject's foot/feet.

## 2.14. Visual Activations
### 2.14.1. Design and Timing
The paradigm has a block-design with alternating 15.6 s second periods of rest 
and task that repeat for the duration of the fMRI data acquisition 
(103 measurements i.e. 278.1 seconds). The paradigm starts with a rest period 
i.e.:

Rest-Task-Rest-Task-...-Rest-Task

Therefore the task onsets occur at 15.6, 46.8, 78, 109.2, 140.4, 171.6, 202.8, 
234 and 265.2 seconds.

### 2.14.2. Instructions
Prior to the start of data acquisition a set of instructions are displayed on 
the fMRI screen as shown below:
![](./fmri_paradigms/visual/resources/visual_instructions.png)

### 2.14.3. Rest Periods
During the rest periods of the paradigm a red cross is displayed centrally
on a grey background on the fMRI screen i.e.:
![](./fmri_paradigms/visual/resources/visual_rest.png)

### 2.14.4. Task Periods
During the task periods of the paradigm there is an irregularly-timed
chequerboard flash. One of the two images shown below are displayed on the 
fMRI screen for between 50 and 250 ms.  

Image 1:
![](./fmri_paradigms/visual/resources/visual_chequerboard_a.png)

Image 2:
![](./fmri_paradigms/visual/resources/visual_chequerboard_b.png)

For example:
![](./fmri_paradigms/visual_example.gif)

### 2.14.5. PsychoPy Experiment
The files needed to run this paradigm in [PsychoPy](https://www.psychopy.org/) 
can be found [here](fmri_paradigms/visual).

## 2.15. Assessing Handedness
When measuring the laterality of language activations with fMRI we assess 
the subject's handedness using an
[Edinburgh Handedness Inventory](https://www.brainmapping.org/shared/Edinburgh.php) 
(EHI) created by Mark S. Cohen based on a 
[paper](https://doi.org/10.1016/0028-3932(71)90067-4) by Richard C. Oldfield.

### 2.15.1. Questionnaire
For each of the 15 activities in the 
[questionnaire](./fmri_paradigms/EHI.pdf) the subject 
is asked 

_"Which hand do you prefer to use?"_ and _"Do you ever use the other 
hand?"_

### 2.15.2. Scoring
The range of possible responses to each question are shown in the table below 
together with their respective score:

| Left | No Preference | Right | Do you ever use the other hand?| Score |
|:---:|:---:|:---:|:---:|:---:|
| :heavy_check_mark: |   |   |   | L=2 | 
| :heavy_check_mark: |   |   | :heavy_check_mark: | L=1 | 
|   | :heavy_check_mark: |   |   | R=1, L=1 | 
|   |   | :heavy_check_mark: | :heavy_check_mark: | R=1 | 
|   |   |   | :heavy_check_mark:  | R=2 | 

### 2.15.3. Handedness Index

The Edinburgh Handedness Index (EHI), as a percentage, is calculated using:

$EHI = \frac{R_{total} - L_{total}}{30} \times 100$%

Where $L_{total}$ is the sum of the L scores and $R_{total}$ is the sum of the 
R scores for all 15 activities.