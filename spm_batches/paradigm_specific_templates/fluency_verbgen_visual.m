%-----------------------------------------------------------------------
% Job saved on 05-Dec-2023 15:40:22 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.name = 'fMRI Data';
matlabbatch{1}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.dirs = {
                                                                  '<UNDEFINED>'
                                                                  '<UNDEFINED>'
                                                                  '<UNDEFINED>'
                                                                  }';
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: fMRI Data(1)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^0.*\.nii$';
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{3}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: fMRI Data(2)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{2}));
matlabbatch{3}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^0.*\.nii$';
matlabbatch{3}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{4}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: fMRI Data(3)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{3}));
matlabbatch{4}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^0.*\.nii$';
matlabbatch{4}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{5}.spm.util.exp_frames.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^0.*\.nii$)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{5}.spm.util.exp_frames.frames = 1;
matlabbatch{6}.spm.util.exp_frames.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^0.*\.nii$)', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{6}.spm.util.exp_frames.frames = 1;
matlabbatch{7}.spm.util.exp_frames.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^0.*\.nii$)', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{7}.spm.util.exp_frames.frames = 1;
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.data.presubphasemag.phase = '<UNDEFINED>';
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.data.presubphasemag.magnitude = '<UNDEFINED>';
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.et = [4.92 7.38];
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.maskbrain = 1;
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.blipdir = -1;
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.tert = 17.64;
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.epifm = 0;
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.ajm = 0;
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.uflags.method = 'Mark3D';
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.uflags.fwhm = 10;
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.uflags.pad = 0;
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.uflags.ws = 1;
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.mflags.template = '<UNDEFINED>';
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.mflags.fwhm = 5;
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.mflags.nerode = 2;
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.mflags.ndilate = 4;
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.mflags.thresh = 0.5;
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.mflags.reg = 0.02;
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.session(1).epi(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.session(2).epi(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.session(3).epi(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.matchvdm = 1;
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.sessname = 'session';
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.writeunwarped = 0;
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.anat = '';
matlabbatch{8}.spm.tools.fieldmap.calculatevdm.subj.matchanat = 0;
matlabbatch{9}.spm.util.exp_frames.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^0.*\.nii$)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{9}.spm.util.exp_frames.frames = Inf;
matlabbatch{10}.spm.util.exp_frames.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^0.*\.nii$)', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{10}.spm.util.exp_frames.frames = Inf;
matlabbatch{11}.spm.util.exp_frames.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^0.*\.nii$)', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{11}.spm.util.exp_frames.frames = Inf;
matlabbatch{12}.spm.util.imcalc.input(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{12}.spm.util.imcalc.output = 'fmri_temporal_mean';
matlabbatch{12}.spm.util.imcalc.outdir(1) = cfg_dep('Named Directory Selector: fMRI Data(1)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{12}.spm.util.imcalc.expression = 'mean(X)';
matlabbatch{12}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{12}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{12}.spm.util.imcalc.options.mask = 0;
matlabbatch{12}.spm.util.imcalc.options.interp = 1;
matlabbatch{12}.spm.util.imcalc.options.dtype = 16;
matlabbatch{13}.spm.util.imcalc.input(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{13}.spm.util.imcalc.output = 'fmri_temporal_mean';
matlabbatch{13}.spm.util.imcalc.outdir(1) = cfg_dep('Named Directory Selector: fMRI Data(2)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{2}));
matlabbatch{13}.spm.util.imcalc.expression = 'mean(X)';
matlabbatch{13}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{13}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{13}.spm.util.imcalc.options.mask = 0;
matlabbatch{13}.spm.util.imcalc.options.interp = 1;
matlabbatch{13}.spm.util.imcalc.options.dtype = 16;
matlabbatch{14}.spm.util.imcalc.input(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{11}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{14}.spm.util.imcalc.output = 'fmri_temporal_mean';
matlabbatch{14}.spm.util.imcalc.outdir(1) = cfg_dep('Named Directory Selector: fMRI Data(3)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{3}));
matlabbatch{14}.spm.util.imcalc.expression = 'mean(X)';
matlabbatch{14}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{14}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{14}.spm.util.imcalc.options.mask = 0;
matlabbatch{14}.spm.util.imcalc.options.interp = 1;
matlabbatch{14}.spm.util.imcalc.options.dtype = 16;
matlabbatch{15}.spm.util.imcalc.input(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{15}.spm.util.imcalc.output = 'fmri_temporal_variance';
matlabbatch{15}.spm.util.imcalc.outdir(1) = cfg_dep('Named Directory Selector: fMRI Data(1)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{15}.spm.util.imcalc.expression = 'var(X)';
matlabbatch{15}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{15}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{15}.spm.util.imcalc.options.mask = 0;
matlabbatch{15}.spm.util.imcalc.options.interp = 1;
matlabbatch{15}.spm.util.imcalc.options.dtype = 16;
matlabbatch{16}.spm.util.imcalc.input(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{16}.spm.util.imcalc.output = 'fmri_temporal_variance';
matlabbatch{16}.spm.util.imcalc.outdir(1) = cfg_dep('Named Directory Selector: fMRI Data(2)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{2}));
matlabbatch{16}.spm.util.imcalc.expression = 'var(X)';
matlabbatch{16}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{16}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{16}.spm.util.imcalc.options.mask = 0;
matlabbatch{16}.spm.util.imcalc.options.interp = 1;
matlabbatch{16}.spm.util.imcalc.options.dtype = 16;
matlabbatch{17}.spm.util.imcalc.input(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{11}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{17}.spm.util.imcalc.output = 'fmri_temporal_variance';
matlabbatch{17}.spm.util.imcalc.outdir(1) = cfg_dep('Named Directory Selector: fMRI Data(3)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{3}));
matlabbatch{17}.spm.util.imcalc.expression = 'var(X)';
matlabbatch{17}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{17}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{17}.spm.util.imcalc.options.mask = 0;
matlabbatch{17}.spm.util.imcalc.options.interp = 1;
matlabbatch{17}.spm.util.imcalc.options.dtype = 16;
matlabbatch{18}.spm.spatial.realignunwarp.data(1).scans(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{18}.spm.spatial.realignunwarp.data(1).pmscan(1) = cfg_dep('Calculate VDM: Voxel displacement map (Subj 1, Session 1)', substruct('.','val', '{}',{8}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','vdmfile', '{}',{1}));
matlabbatch{18}.spm.spatial.realignunwarp.data(2).scans(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{18}.spm.spatial.realignunwarp.data(2).pmscan(1) = cfg_dep('Calculate VDM: Voxel displacement map (Subj 1, Session 2)', substruct('.','val', '{}',{8}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','vdmfile', '{}',{2}));
matlabbatch{18}.spm.spatial.realignunwarp.data(3).scans(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{11}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{18}.spm.spatial.realignunwarp.data(3).pmscan(1) = cfg_dep('Calculate VDM: Voxel displacement map (Subj 1, Session 3)', substruct('.','val', '{}',{8}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','vdmfile', '{}',{3}));
matlabbatch{18}.spm.spatial.realignunwarp.eoptions.quality = 0.9;
matlabbatch{18}.spm.spatial.realignunwarp.eoptions.sep = 4;
matlabbatch{18}.spm.spatial.realignunwarp.eoptions.fwhm = 5;
matlabbatch{18}.spm.spatial.realignunwarp.eoptions.rtm = 0;
matlabbatch{18}.spm.spatial.realignunwarp.eoptions.einterp = 2;
matlabbatch{18}.spm.spatial.realignunwarp.eoptions.ewrap = [0 0 0];
matlabbatch{18}.spm.spatial.realignunwarp.eoptions.weight = '';
matlabbatch{18}.spm.spatial.realignunwarp.uweoptions.basfcn = [12 12];
matlabbatch{18}.spm.spatial.realignunwarp.uweoptions.regorder = 1;
matlabbatch{18}.spm.spatial.realignunwarp.uweoptions.lambda = 100000;
matlabbatch{18}.spm.spatial.realignunwarp.uweoptions.jm = 0;
matlabbatch{18}.spm.spatial.realignunwarp.uweoptions.fot = [4 5];
matlabbatch{18}.spm.spatial.realignunwarp.uweoptions.sot = [];
matlabbatch{18}.spm.spatial.realignunwarp.uweoptions.uwfwhm = 4;
matlabbatch{18}.spm.spatial.realignunwarp.uweoptions.rem = 1;
matlabbatch{18}.spm.spatial.realignunwarp.uweoptions.noi = 5;
matlabbatch{18}.spm.spatial.realignunwarp.uweoptions.expround = 'Average';
matlabbatch{18}.spm.spatial.realignunwarp.uwroptions.uwwhich = [2 1];
matlabbatch{18}.spm.spatial.realignunwarp.uwroptions.rinterp = 4;
matlabbatch{18}.spm.spatial.realignunwarp.uwroptions.wrap = [0 0 0];
matlabbatch{18}.spm.spatial.realignunwarp.uwroptions.mask = 1;
matlabbatch{18}.spm.spatial.realignunwarp.uwroptions.prefix = 'u';
matlabbatch{19}.cfg_basicio.file_dir.file_ops.cfg_named_file.name = 'Structural T1 Reference';
matlabbatch{19}.cfg_basicio.file_dir.file_ops.cfg_named_file.files = {'<UNDEFINED>'};
matlabbatch{20}.spm.spatial.coreg.estimate.ref(1) = cfg_dep('Named File Selector: Structural T1 Reference(1) - Files', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{1}));
matlabbatch{20}.spm.spatial.coreg.estimate.source(1) = cfg_dep('Realign & Unwarp: Unwarped Mean Image', substruct('.','val', '{}',{18}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','meanuwr'));
matlabbatch{20}.spm.spatial.coreg.estimate.other(1) = cfg_dep('Realign & Unwarp: Unwarped Images (Sess 1)', substruct('.','val', '{}',{18}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{1}, '.','uwrfiles'));
matlabbatch{20}.spm.spatial.coreg.estimate.other(2) = cfg_dep('Realign & Unwarp: Unwarped Images (Sess 2)', substruct('.','val', '{}',{18}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{2}, '.','uwrfiles'));
matlabbatch{20}.spm.spatial.coreg.estimate.other(3) = cfg_dep('Realign & Unwarp: Unwarped Images (Sess 3)', substruct('.','val', '{}',{18}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{3}, '.','uwrfiles'));
matlabbatch{20}.spm.spatial.coreg.estimate.eoptions.cost_fun = 'nmi';
matlabbatch{20}.spm.spatial.coreg.estimate.eoptions.sep = [4 2];
matlabbatch{20}.spm.spatial.coreg.estimate.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
matlabbatch{20}.spm.spatial.coreg.estimate.eoptions.fwhm = [7 7];
matlabbatch{21}.spm.spatial.smooth.data(1) = cfg_dep('Coregister: Estimate: Coregistered Images', substruct('.','val', '{}',{20}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','cfiles'));
matlabbatch{21}.spm.spatial.smooth.fwhm = [6 6 6];
matlabbatch{21}.spm.spatial.smooth.dtype = 0;
matlabbatch{21}.spm.spatial.smooth.im = 0;
matlabbatch{21}.spm.spatial.smooth.prefix = 's';
matlabbatch{22}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: fMRI Data(1)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{22}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^su';
matlabbatch{22}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{23}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: fMRI Data(2)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{2}));
matlabbatch{23}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^su';
matlabbatch{23}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{24}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: fMRI Data(3)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{3}));
matlabbatch{24}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^su';
matlabbatch{24}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{25}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.name = 'fMRI Results';
matlabbatch{25}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.dirs = {'<UNDEFINED>'};
matlabbatch{26}.spm.stats.fmri_spec.dir(1) = cfg_dep('Named Directory Selector: fMRI Results(1)', substruct('.','val', '{}',{25}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{26}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{26}.spm.stats.fmri_spec.timing.RT = 2.67;
matlabbatch{26}.spm.stats.fmri_spec.timing.fmri_t = 16;
matlabbatch{26}.spm.stats.fmri_spec.timing.fmri_t0 = 8;
matlabbatch{26}.spm.stats.fmri_spec.sess(1).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^su)', substruct('.','val', '{}',{22}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{26}.spm.stats.fmri_spec.sess(1).cond.name = 'Fluency';
matlabbatch{26}.spm.stats.fmri_spec.sess(1).cond.onset = [18.2
                                                          54.6
                                                          91
                                                          127.4
                                                          163.8
                                                          200.2
                                                          236.6
                                                          273];
matlabbatch{26}.spm.stats.fmri_spec.sess(1).cond.duration = 18.2;
matlabbatch{26}.spm.stats.fmri_spec.sess(1).cond.tmod = 0;
matlabbatch{26}.spm.stats.fmri_spec.sess(1).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{26}.spm.stats.fmri_spec.sess(1).cond.orth = 1;
matlabbatch{26}.spm.stats.fmri_spec.sess(1).multi = {''};
matlabbatch{26}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
matlabbatch{26}.spm.stats.fmri_spec.sess(1).multi_reg(1) = cfg_dep('Realign & Unwarp: Realignment Param File (Sess 1)', substruct('.','val', '{}',{18}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{1}, '.','rpfile'));
matlabbatch{26}.spm.stats.fmri_spec.sess(1).hpf = 128;
matlabbatch{26}.spm.stats.fmri_spec.sess(2).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^su)', substruct('.','val', '{}',{23}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{26}.spm.stats.fmri_spec.sess(2).cond.name = 'Verb-Generation';
matlabbatch{26}.spm.stats.fmri_spec.sess(2).cond.onset = [18.2
                                                          54.6
                                                          91
                                                          127.4
                                                          163.8
                                                          200.2
                                                          236.6
                                                          273];
matlabbatch{26}.spm.stats.fmri_spec.sess(2).cond.duration = 18.2;
matlabbatch{26}.spm.stats.fmri_spec.sess(2).cond.tmod = 0;
matlabbatch{26}.spm.stats.fmri_spec.sess(2).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{26}.spm.stats.fmri_spec.sess(2).cond.orth = 1;
matlabbatch{26}.spm.stats.fmri_spec.sess(2).multi = {''};
matlabbatch{26}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
matlabbatch{26}.spm.stats.fmri_spec.sess(2).multi_reg(1) = cfg_dep('Realign & Unwarp: Realignment Param File (Sess 2)', substruct('.','val', '{}',{18}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{2}, '.','rpfile'));
matlabbatch{26}.spm.stats.fmri_spec.sess(2).hpf = 128;
matlabbatch{26}.spm.stats.fmri_spec.sess(3).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^su)', substruct('.','val', '{}',{24}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{26}.spm.stats.fmri_spec.sess(3).cond.name = 'Visual';
matlabbatch{26}.spm.stats.fmri_spec.sess(3).cond.onset = [15.6
                                                          46.8
                                                          78
                                                          109.2
                                                          140.4
                                                          171.6
                                                          202.8
                                                          234
                                                          265.2];
matlabbatch{26}.spm.stats.fmri_spec.sess(3).cond.duration = 15.6;
matlabbatch{26}.spm.stats.fmri_spec.sess(3).cond.tmod = 0;
matlabbatch{26}.spm.stats.fmri_spec.sess(3).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{26}.spm.stats.fmri_spec.sess(3).cond.orth = 1;
matlabbatch{26}.spm.stats.fmri_spec.sess(3).multi = {''};
matlabbatch{26}.spm.stats.fmri_spec.sess(3).regress = struct('name', {}, 'val', {});
matlabbatch{26}.spm.stats.fmri_spec.sess(3).multi_reg(1) = cfg_dep('Realign & Unwarp: Realignment Param File (Sess 3)', substruct('.','val', '{}',{18}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{3}, '.','rpfile'));
matlabbatch{26}.spm.stats.fmri_spec.sess(3).hpf = 128;
matlabbatch{26}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{26}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
matlabbatch{26}.spm.stats.fmri_spec.volt = 1;
matlabbatch{26}.spm.stats.fmri_spec.global = 'None';
matlabbatch{26}.spm.stats.fmri_spec.mthresh = 0.8;
matlabbatch{26}.spm.stats.fmri_spec.mask = {''};
matlabbatch{26}.spm.stats.fmri_spec.cvi = 'AR(1)';
matlabbatch{27}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{26}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{27}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{27}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{28}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{27}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{28}.spm.stats.con.consess{1}.tcon.name = 'Fluency';
matlabbatch{28}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{28}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{28}.spm.stats.con.consess{2}.tcon.name = 'Verb-Generation';
matlabbatch{28}.spm.stats.con.consess{2}.tcon.weights = [0 0 0 0 0 0 0 1];
matlabbatch{28}.spm.stats.con.consess{2}.tcon.sessrep = 'none';
matlabbatch{28}.spm.stats.con.consess{3}.tcon.name = 'Visual';
matlabbatch{28}.spm.stats.con.consess{3}.tcon.weights = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 1];
matlabbatch{28}.spm.stats.con.consess{3}.tcon.sessrep = 'none';
matlabbatch{28}.spm.stats.con.delete = 0;
matlabbatch{29}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: fMRI Results(1)', substruct('.','val', '{}',{25}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{29}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^spmT';
matlabbatch{29}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{30}.spm.spatial.coreg.write.ref(1) = cfg_dep('Named File Selector: Structural T1 Reference(1) - Files', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{1}));
matlabbatch{30}.spm.spatial.coreg.write.source(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^spmT)', substruct('.','val', '{}',{29}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{30}.spm.spatial.coreg.write.roptions.interp = 4;
matlabbatch{30}.spm.spatial.coreg.write.roptions.wrap = [0 0 0];
matlabbatch{30}.spm.spatial.coreg.write.roptions.mask = 0;
matlabbatch{30}.spm.spatial.coreg.write.roptions.prefix = 'r';
matlabbatch{31}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: fMRI Data(1)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{31}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^meanu';
matlabbatch{31}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{32}.spm.spatial.coreg.write.ref(1) = cfg_dep('Named File Selector: Structural T1 Reference(1) - Files', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{1}));
matlabbatch{32}.spm.spatial.coreg.write.source(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^meanu)', substruct('.','val', '{}',{31}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{32}.spm.spatial.coreg.write.roptions.interp = 4;
matlabbatch{32}.spm.spatial.coreg.write.roptions.wrap = [0 0 0];
matlabbatch{32}.spm.spatial.coreg.write.roptions.mask = 0;
matlabbatch{32}.spm.spatial.coreg.write.roptions.prefix = 'r';
matlabbatch{33}.spm.spatial.coreg.estwrite.ref(1) = cfg_dep('Named File Selector: Structural T1 Reference(1) - Files', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{1}));
matlabbatch{33}.spm.spatial.coreg.estwrite.source = '<UNDEFINED>';
matlabbatch{33}.spm.spatial.coreg.estwrite.other = {''};
matlabbatch{33}.spm.spatial.coreg.estwrite.eoptions.cost_fun = 'nmi';
matlabbatch{33}.spm.spatial.coreg.estwrite.eoptions.sep = [4 2];
matlabbatch{33}.spm.spatial.coreg.estwrite.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
matlabbatch{33}.spm.spatial.coreg.estwrite.eoptions.fwhm = [7 7];
matlabbatch{33}.spm.spatial.coreg.estwrite.roptions.interp = 4;
matlabbatch{33}.spm.spatial.coreg.estwrite.roptions.wrap = [0 0 0];
matlabbatch{33}.spm.spatial.coreg.estwrite.roptions.mask = 0;
matlabbatch{33}.spm.spatial.coreg.estwrite.roptions.prefix = 'r';
matlabbatch{34}.spm.spatial.coreg.estwrite.ref(1) = cfg_dep('Named File Selector: Structural T1 Reference(1) - Files', substruct('.','val', '{}',{19}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{1}));
matlabbatch{34}.spm.spatial.coreg.estwrite.source = '<UNDEFINED>';
matlabbatch{34}.spm.spatial.coreg.estwrite.other = {''};
matlabbatch{34}.spm.spatial.coreg.estwrite.eoptions.cost_fun = 'nmi';
matlabbatch{34}.spm.spatial.coreg.estwrite.eoptions.sep = [4 2];
matlabbatch{34}.spm.spatial.coreg.estwrite.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
matlabbatch{34}.spm.spatial.coreg.estwrite.eoptions.fwhm = [7 7];
matlabbatch{34}.spm.spatial.coreg.estwrite.roptions.interp = 4;
matlabbatch{34}.spm.spatial.coreg.estwrite.roptions.wrap = [0 0 0];
matlabbatch{34}.spm.spatial.coreg.estwrite.roptions.mask = 0;
matlabbatch{34}.spm.spatial.coreg.estwrite.roptions.prefix = 'r';
