%-----------------------------------------------------------------------
% Job saved on 05-Dec-2023 15:43:17 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7487)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.name = 'fMRI Data';
matlabbatch{1}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.dirs = {
                                                                  '<UNDEFINED>'
                                                                  '<UNDEFINED>'
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
matlabbatch{5}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: fMRI Data(4)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{4}));
matlabbatch{5}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^0.*\.nii$';
matlabbatch{5}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{6}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: fMRI Data(5)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{5}));
matlabbatch{6}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^0.*\.nii$';
matlabbatch{6}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{7}.spm.util.exp_frames.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^0.*\.nii$)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{7}.spm.util.exp_frames.frames = 1;
matlabbatch{8}.spm.util.exp_frames.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^0.*\.nii$)', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{8}.spm.util.exp_frames.frames = 1;
matlabbatch{9}.spm.util.exp_frames.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^0.*\.nii$)', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{9}.spm.util.exp_frames.frames = 1;
matlabbatch{10}.spm.util.exp_frames.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^0.*\.nii$)', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{10}.spm.util.exp_frames.frames = 1;
matlabbatch{11}.spm.util.exp_frames.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^0.*\.nii$)', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{11}.spm.util.exp_frames.frames = 1;
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.data.presubphasemag.phase = '<UNDEFINED>';
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.data.presubphasemag.magnitude = '<UNDEFINED>';
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.et = [4.92 7.38];
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.maskbrain = 1;
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.blipdir = -1;
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.tert = 17.64;
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.epifm = 0;
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.ajm = 0;
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.uflags.method = 'Mark3D';
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.uflags.fwhm = 10;
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.uflags.pad = 0;
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.uflags.ws = 1;
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.mflags.template = '<UNDEFINED>';
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.mflags.fwhm = 5;
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.mflags.nerode = 2;
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.mflags.ndilate = 4;
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.mflags.thresh = 0.5;
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.defaults.defaultsval.mflags.reg = 0.02;
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.session(1).epi(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.session(2).epi(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{8}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.session(3).epi(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.session(4).epi(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.session(5).epi(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{11}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.matchvdm = 1;
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.sessname = 'session';
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.writeunwarped = 0;
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.anat = '';
matlabbatch{12}.spm.tools.fieldmap.calculatevdm.subj.matchanat = 0;
matlabbatch{13}.spm.util.exp_frames.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^0.*\.nii$)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{13}.spm.util.exp_frames.frames = Inf;
matlabbatch{14}.spm.util.exp_frames.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^0.*\.nii$)', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{14}.spm.util.exp_frames.frames = Inf;
matlabbatch{15}.spm.util.exp_frames.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^0.*\.nii$)', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{15}.spm.util.exp_frames.frames = Inf;
matlabbatch{16}.spm.util.exp_frames.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^0.*\.nii$)', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{16}.spm.util.exp_frames.frames = Inf;
matlabbatch{17}.spm.util.exp_frames.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^0.*\.nii$)', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{17}.spm.util.exp_frames.frames = Inf;
matlabbatch{18}.spm.util.imcalc.input(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{13}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{18}.spm.util.imcalc.output = 'fmri_temporal_mean';
matlabbatch{18}.spm.util.imcalc.outdir(1) = cfg_dep('Named Directory Selector: fMRI Data(1)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{18}.spm.util.imcalc.expression = 'mean(X)';
matlabbatch{18}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{18}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{18}.spm.util.imcalc.options.mask = 0;
matlabbatch{18}.spm.util.imcalc.options.interp = 1;
matlabbatch{18}.spm.util.imcalc.options.dtype = 16;
matlabbatch{19}.spm.util.imcalc.input(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{14}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{19}.spm.util.imcalc.output = 'fmri_temporal_mean';
matlabbatch{19}.spm.util.imcalc.outdir(1) = cfg_dep('Named Directory Selector: fMRI Data(2)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{2}));
matlabbatch{19}.spm.util.imcalc.expression = 'mean(X)';
matlabbatch{19}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{19}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{19}.spm.util.imcalc.options.mask = 0;
matlabbatch{19}.spm.util.imcalc.options.interp = 1;
matlabbatch{19}.spm.util.imcalc.options.dtype = 16;
matlabbatch{20}.spm.util.imcalc.input(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{15}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{20}.spm.util.imcalc.output = 'fmri_temporal_mean';
matlabbatch{20}.spm.util.imcalc.outdir(1) = cfg_dep('Named Directory Selector: fMRI Data(3)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{3}));
matlabbatch{20}.spm.util.imcalc.expression = 'mean(X)';
matlabbatch{20}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{20}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{20}.spm.util.imcalc.options.mask = 0;
matlabbatch{20}.spm.util.imcalc.options.interp = 1;
matlabbatch{20}.spm.util.imcalc.options.dtype = 16;
matlabbatch{21}.spm.util.imcalc.input(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{21}.spm.util.imcalc.output = 'fmri_temporal_mean';
matlabbatch{21}.spm.util.imcalc.outdir(1) = cfg_dep('Named Directory Selector: fMRI Data(4)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{4}));
matlabbatch{21}.spm.util.imcalc.expression = 'mean(X)';
matlabbatch{21}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{21}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{21}.spm.util.imcalc.options.mask = 0;
matlabbatch{21}.spm.util.imcalc.options.interp = 1;
matlabbatch{21}.spm.util.imcalc.options.dtype = 16;
matlabbatch{22}.spm.util.imcalc.input(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{17}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{22}.spm.util.imcalc.output = 'fmri_temporal_mean';
matlabbatch{22}.spm.util.imcalc.outdir(1) = cfg_dep('Named Directory Selector: fMRI Data(5)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{5}));
matlabbatch{22}.spm.util.imcalc.expression = 'mean(X)';
matlabbatch{22}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{22}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{22}.spm.util.imcalc.options.mask = 0;
matlabbatch{22}.spm.util.imcalc.options.interp = 1;
matlabbatch{22}.spm.util.imcalc.options.dtype = 16;
matlabbatch{23}.spm.util.imcalc.input(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{13}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{23}.spm.util.imcalc.output = 'fmri_temporal_variance';
matlabbatch{23}.spm.util.imcalc.outdir(1) = cfg_dep('Named Directory Selector: fMRI Data(1)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{23}.spm.util.imcalc.expression = 'var(X)';
matlabbatch{23}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{23}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{23}.spm.util.imcalc.options.mask = 0;
matlabbatch{23}.spm.util.imcalc.options.interp = 1;
matlabbatch{23}.spm.util.imcalc.options.dtype = 16;
matlabbatch{24}.spm.util.imcalc.input(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{14}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{24}.spm.util.imcalc.output = 'fmri_temporal_variance';
matlabbatch{24}.spm.util.imcalc.outdir(1) = cfg_dep('Named Directory Selector: fMRI Data(2)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{2}));
matlabbatch{24}.spm.util.imcalc.expression = 'var(X)';
matlabbatch{24}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{24}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{24}.spm.util.imcalc.options.mask = 0;
matlabbatch{24}.spm.util.imcalc.options.interp = 1;
matlabbatch{24}.spm.util.imcalc.options.dtype = 16;
matlabbatch{25}.spm.util.imcalc.input(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{15}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{25}.spm.util.imcalc.output = 'fmri_temporal_variance';
matlabbatch{25}.spm.util.imcalc.outdir(1) = cfg_dep('Named Directory Selector: fMRI Data(3)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{3}));
matlabbatch{25}.spm.util.imcalc.expression = 'var(X)';
matlabbatch{25}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{25}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{25}.spm.util.imcalc.options.mask = 0;
matlabbatch{25}.spm.util.imcalc.options.interp = 1;
matlabbatch{25}.spm.util.imcalc.options.dtype = 16;
matlabbatch{26}.spm.util.imcalc.input(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{26}.spm.util.imcalc.output = 'fmri_temporal_variance';
matlabbatch{26}.spm.util.imcalc.outdir(1) = cfg_dep('Named Directory Selector: fMRI Data(4)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{4}));
matlabbatch{26}.spm.util.imcalc.expression = 'var(X)';
matlabbatch{26}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{26}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{26}.spm.util.imcalc.options.mask = 0;
matlabbatch{26}.spm.util.imcalc.options.interp = 1;
matlabbatch{26}.spm.util.imcalc.options.dtype = 16;
matlabbatch{27}.spm.util.imcalc.input(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{17}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{27}.spm.util.imcalc.output = 'fmri_temporal_variance';
matlabbatch{27}.spm.util.imcalc.outdir(1) = cfg_dep('Named Directory Selector: fMRI Data(5)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{5}));
matlabbatch{27}.spm.util.imcalc.expression = 'var(X)';
matlabbatch{27}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{27}.spm.util.imcalc.options.dmtx = 1;
matlabbatch{27}.spm.util.imcalc.options.mask = 0;
matlabbatch{27}.spm.util.imcalc.options.interp = 1;
matlabbatch{27}.spm.util.imcalc.options.dtype = 16;
matlabbatch{28}.spm.spatial.realignunwarp.data(1).scans(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{13}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{28}.spm.spatial.realignunwarp.data(1).pmscan(1) = cfg_dep('Calculate VDM: Voxel displacement map (Subj 1, Session 1)', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','vdmfile', '{}',{1}));
matlabbatch{28}.spm.spatial.realignunwarp.data(2).scans(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{14}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{28}.spm.spatial.realignunwarp.data(2).pmscan(1) = cfg_dep('Calculate VDM: Voxel displacement map (Subj 1, Session 2)', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','vdmfile', '{}',{2}));
matlabbatch{28}.spm.spatial.realignunwarp.data(3).scans(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{15}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{28}.spm.spatial.realignunwarp.data(3).pmscan(1) = cfg_dep('Calculate VDM: Voxel displacement map (Subj 1, Session 3)', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','vdmfile', '{}',{3}));
matlabbatch{28}.spm.spatial.realignunwarp.data(4).scans(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{28}.spm.spatial.realignunwarp.data(4).pmscan(1) = cfg_dep('Calculate VDM: Voxel displacement map (Subj 1, Session 4)', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','vdmfile', '{}',{4}));
matlabbatch{28}.spm.spatial.realignunwarp.data(5).scans(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{17}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{28}.spm.spatial.realignunwarp.data(5).pmscan(1) = cfg_dep('Calculate VDM: Voxel displacement map (Subj 1, Session 5)', substruct('.','val', '{}',{12}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{1}, '.','vdmfile', '{}',{5}));
matlabbatch{28}.spm.spatial.realignunwarp.eoptions.quality = 0.9;
matlabbatch{28}.spm.spatial.realignunwarp.eoptions.sep = 4;
matlabbatch{28}.spm.spatial.realignunwarp.eoptions.fwhm = 5;
matlabbatch{28}.spm.spatial.realignunwarp.eoptions.rtm = 0;
matlabbatch{28}.spm.spatial.realignunwarp.eoptions.einterp = 2;
matlabbatch{28}.spm.spatial.realignunwarp.eoptions.ewrap = [0 0 0];
matlabbatch{28}.spm.spatial.realignunwarp.eoptions.weight = '';
matlabbatch{28}.spm.spatial.realignunwarp.uweoptions.basfcn = [12 12];
matlabbatch{28}.spm.spatial.realignunwarp.uweoptions.regorder = 1;
matlabbatch{28}.spm.spatial.realignunwarp.uweoptions.lambda = 100000;
matlabbatch{28}.spm.spatial.realignunwarp.uweoptions.jm = 0;
matlabbatch{28}.spm.spatial.realignunwarp.uweoptions.fot = [4 5];
matlabbatch{28}.spm.spatial.realignunwarp.uweoptions.sot = [];
matlabbatch{28}.spm.spatial.realignunwarp.uweoptions.uwfwhm = 4;
matlabbatch{28}.spm.spatial.realignunwarp.uweoptions.rem = 1;
matlabbatch{28}.spm.spatial.realignunwarp.uweoptions.noi = 5;
matlabbatch{28}.spm.spatial.realignunwarp.uweoptions.expround = 'Average';
matlabbatch{28}.spm.spatial.realignunwarp.uwroptions.uwwhich = [2 1];
matlabbatch{28}.spm.spatial.realignunwarp.uwroptions.rinterp = 4;
matlabbatch{28}.spm.spatial.realignunwarp.uwroptions.wrap = [0 0 0];
matlabbatch{28}.spm.spatial.realignunwarp.uwroptions.mask = 1;
matlabbatch{28}.spm.spatial.realignunwarp.uwroptions.prefix = 'u';
matlabbatch{29}.cfg_basicio.file_dir.file_ops.cfg_named_file.name = 'Structural T1 Reference';
matlabbatch{29}.cfg_basicio.file_dir.file_ops.cfg_named_file.files = {'<UNDEFINED>'};
matlabbatch{30}.spm.spatial.coreg.estimate.ref(1) = cfg_dep('Named File Selector: Structural T1 Reference(1) - Files', substruct('.','val', '{}',{29}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{1}));
matlabbatch{30}.spm.spatial.coreg.estimate.source(1) = cfg_dep('Realign & Unwarp: Unwarped Mean Image', substruct('.','val', '{}',{28}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','meanuwr'));
matlabbatch{30}.spm.spatial.coreg.estimate.other(1) = cfg_dep('Realign & Unwarp: Unwarped Images (Sess 1)', substruct('.','val', '{}',{28}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{1}, '.','uwrfiles'));
matlabbatch{30}.spm.spatial.coreg.estimate.other(2) = cfg_dep('Realign & Unwarp: Unwarped Images (Sess 2)', substruct('.','val', '{}',{28}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{2}, '.','uwrfiles'));
matlabbatch{30}.spm.spatial.coreg.estimate.other(3) = cfg_dep('Realign & Unwarp: Unwarped Images (Sess 3)', substruct('.','val', '{}',{28}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{3}, '.','uwrfiles'));
matlabbatch{30}.spm.spatial.coreg.estimate.other(4) = cfg_dep('Realign & Unwarp: Unwarped Images (Sess 4)', substruct('.','val', '{}',{28}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{4}, '.','uwrfiles'));
matlabbatch{30}.spm.spatial.coreg.estimate.other(5) = cfg_dep('Realign & Unwarp: Unwarped Images (Sess 5)', substruct('.','val', '{}',{28}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{5}, '.','uwrfiles'));
matlabbatch{30}.spm.spatial.coreg.estimate.eoptions.cost_fun = 'nmi';
matlabbatch{30}.spm.spatial.coreg.estimate.eoptions.sep = [4 2];
matlabbatch{30}.spm.spatial.coreg.estimate.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
matlabbatch{30}.spm.spatial.coreg.estimate.eoptions.fwhm = [7 7];
matlabbatch{31}.spm.spatial.smooth.data(1) = cfg_dep('Coregister: Estimate: Coregistered Images', substruct('.','val', '{}',{30}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','cfiles'));
matlabbatch{31}.spm.spatial.smooth.fwhm = [6 6 6];
matlabbatch{31}.spm.spatial.smooth.dtype = 0;
matlabbatch{31}.spm.spatial.smooth.im = 0;
matlabbatch{31}.spm.spatial.smooth.prefix = 's';
matlabbatch{32}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: fMRI Data(1)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{32}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^su';
matlabbatch{32}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{33}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: fMRI Data(2)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{2}));
matlabbatch{33}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^su';
matlabbatch{33}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{34}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: fMRI Data(3)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{3}));
matlabbatch{34}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^su';
matlabbatch{34}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{35}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: fMRI Data(4)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{4}));
matlabbatch{35}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^su';
matlabbatch{35}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{36}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: fMRI Data(5)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{5}));
matlabbatch{36}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^su';
matlabbatch{36}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{37}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.name = 'fMRI Results';
matlabbatch{37}.cfg_basicio.file_dir.dir_ops.cfg_named_dir.dirs = {'<UNDEFINED>'};
matlabbatch{38}.spm.stats.fmri_spec.dir(1) = cfg_dep('Named Directory Selector: fMRI Results(1)', substruct('.','val', '{}',{37}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{38}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{38}.spm.stats.fmri_spec.timing.RT = 2.67;
matlabbatch{38}.spm.stats.fmri_spec.timing.fmri_t = 16;
matlabbatch{38}.spm.stats.fmri_spec.timing.fmri_t0 = 8;
matlabbatch{38}.spm.stats.fmri_spec.sess(1).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^su)', substruct('.','val', '{}',{32}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{38}.spm.stats.fmri_spec.sess(1).cond.name = 'Hand';
matlabbatch{38}.spm.stats.fmri_spec.sess(1).cond.onset = [18.2
                                                          54.6
                                                          91
                                                          127.4
                                                          163.8
                                                          200.2
                                                          236.6
                                                          273];
matlabbatch{38}.spm.stats.fmri_spec.sess(1).cond.duration = 18.2;
matlabbatch{38}.spm.stats.fmri_spec.sess(1).cond.tmod = 0;
matlabbatch{38}.spm.stats.fmri_spec.sess(1).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{38}.spm.stats.fmri_spec.sess(1).cond.orth = 1;
matlabbatch{38}.spm.stats.fmri_spec.sess(1).multi = {''};
matlabbatch{38}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
matlabbatch{38}.spm.stats.fmri_spec.sess(1).multi_reg(1) = cfg_dep('Realign & Unwarp: Realignment Param File (Sess 1)', substruct('.','val', '{}',{28}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{1}, '.','rpfile'));
matlabbatch{38}.spm.stats.fmri_spec.sess(1).hpf = 128;
matlabbatch{38}.spm.stats.fmri_spec.sess(2).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^su)', substruct('.','val', '{}',{33}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{38}.spm.stats.fmri_spec.sess(2).cond.name = 'Foot';
matlabbatch{38}.spm.stats.fmri_spec.sess(2).cond.onset = [18.2
                                                          54.6
                                                          91
                                                          127.4
                                                          163.8
                                                          200.2
                                                          236.6
                                                          273];
matlabbatch{38}.spm.stats.fmri_spec.sess(2).cond.duration = 18.2;
matlabbatch{38}.spm.stats.fmri_spec.sess(2).cond.tmod = 0;
matlabbatch{38}.spm.stats.fmri_spec.sess(2).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{38}.spm.stats.fmri_spec.sess(2).cond.orth = 1;
matlabbatch{38}.spm.stats.fmri_spec.sess(2).multi = {''};
matlabbatch{38}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
matlabbatch{38}.spm.stats.fmri_spec.sess(2).multi_reg(1) = cfg_dep('Realign & Unwarp: Realignment Param File (Sess 2)', substruct('.','val', '{}',{28}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{2}, '.','rpfile'));
matlabbatch{38}.spm.stats.fmri_spec.sess(2).hpf = 128;
matlabbatch{38}.spm.stats.fmri_spec.sess(3).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^su)', substruct('.','val', '{}',{34}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{38}.spm.stats.fmri_spec.sess(3).cond.name = 'Lips';
matlabbatch{38}.spm.stats.fmri_spec.sess(3).cond.onset = [18.2
                                                          54.6
                                                          91
                                                          127.4
                                                          163.8
                                                          200.2
                                                          236.6
                                                          273];
matlabbatch{38}.spm.stats.fmri_spec.sess(3).cond.duration = 18.2;
matlabbatch{38}.spm.stats.fmri_spec.sess(3).cond.tmod = 0;
matlabbatch{38}.spm.stats.fmri_spec.sess(3).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{38}.spm.stats.fmri_spec.sess(3).cond.orth = 1;
matlabbatch{38}.spm.stats.fmri_spec.sess(3).multi = {''};
matlabbatch{38}.spm.stats.fmri_spec.sess(3).regress = struct('name', {}, 'val', {});
matlabbatch{38}.spm.stats.fmri_spec.sess(3).multi_reg(1) = cfg_dep('Realign & Unwarp: Realignment Param File (Sess 3)', substruct('.','val', '{}',{28}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{3}, '.','rpfile'));
matlabbatch{38}.spm.stats.fmri_spec.sess(3).hpf = 128;
matlabbatch{38}.spm.stats.fmri_spec.sess(4).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^su)', substruct('.','val', '{}',{35}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{38}.spm.stats.fmri_spec.sess(4).cond.name = 'Fluency';
matlabbatch{38}.spm.stats.fmri_spec.sess(4).cond.onset = [18.2
                                                          54.6
                                                          91
                                                          127.4
                                                          163.8
                                                          200.2
                                                          236.6
                                                          273];
matlabbatch{38}.spm.stats.fmri_spec.sess(4).cond.duration = 18.2;
matlabbatch{38}.spm.stats.fmri_spec.sess(4).cond.tmod = 0;
matlabbatch{38}.spm.stats.fmri_spec.sess(4).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{38}.spm.stats.fmri_spec.sess(4).cond.orth = 1;
matlabbatch{38}.spm.stats.fmri_spec.sess(4).multi = {''};
matlabbatch{38}.spm.stats.fmri_spec.sess(4).regress = struct('name', {}, 'val', {});
matlabbatch{38}.spm.stats.fmri_spec.sess(4).multi_reg(1) = cfg_dep('Realign & Unwarp: Realignment Param File (Sess 4)', substruct('.','val', '{}',{28}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{4}, '.','rpfile'));
matlabbatch{38}.spm.stats.fmri_spec.sess(4).hpf = 128;
matlabbatch{38}.spm.stats.fmri_spec.sess(5).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^su)', substruct('.','val', '{}',{36}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{38}.spm.stats.fmri_spec.sess(5).cond.name = 'Verb-Generation';
matlabbatch{38}.spm.stats.fmri_spec.sess(5).cond.onset = [18.2
                                                          54.6
                                                          91
                                                          127.4
                                                          163.8
                                                          200.2
                                                          236.6
                                                          273];
matlabbatch{38}.spm.stats.fmri_spec.sess(5).cond.duration = 18.2;
matlabbatch{38}.spm.stats.fmri_spec.sess(5).cond.tmod = 0;
matlabbatch{38}.spm.stats.fmri_spec.sess(5).cond.pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{38}.spm.stats.fmri_spec.sess(5).cond.orth = 1;
matlabbatch{38}.spm.stats.fmri_spec.sess(5).multi = {''};
matlabbatch{38}.spm.stats.fmri_spec.sess(5).regress = struct('name', {}, 'val', {});
matlabbatch{38}.spm.stats.fmri_spec.sess(5).multi_reg(1) = cfg_dep('Realign & Unwarp: Realignment Param File (Sess 5)', substruct('.','val', '{}',{28}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','sess', '()',{5}, '.','rpfile'));
matlabbatch{38}.spm.stats.fmri_spec.sess(5).hpf = 128;
matlabbatch{38}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{38}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
matlabbatch{38}.spm.stats.fmri_spec.volt = 1;
matlabbatch{38}.spm.stats.fmri_spec.global = 'None';
matlabbatch{38}.spm.stats.fmri_spec.mthresh = 0.8;
matlabbatch{38}.spm.stats.fmri_spec.mask = {''};
matlabbatch{38}.spm.stats.fmri_spec.cvi = 'AR(1)';
matlabbatch{39}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{38}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{39}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{39}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{40}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{39}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{40}.spm.stats.con.consess{1}.tcon.name = 'Hand';
matlabbatch{40}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{40}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{40}.spm.stats.con.consess{2}.tcon.name = 'Foot';
matlabbatch{40}.spm.stats.con.consess{2}.tcon.weights = [0 0 0 0 0 0 0 1];
matlabbatch{40}.spm.stats.con.consess{2}.tcon.sessrep = 'none';
matlabbatch{40}.spm.stats.con.consess{3}.tcon.name = 'Lips';
matlabbatch{40}.spm.stats.con.consess{3}.tcon.weights = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 1];
matlabbatch{40}.spm.stats.con.consess{3}.tcon.sessrep = 'none';
matlabbatch{40}.spm.stats.con.consess{4}.tcon.name = 'Fluency';
matlabbatch{40}.spm.stats.con.consess{4}.tcon.weights = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1];
matlabbatch{40}.spm.stats.con.consess{4}.tcon.sessrep = 'none';
matlabbatch{40}.spm.stats.con.consess{5}.tcon.name = 'Verb-Generation';
matlabbatch{40}.spm.stats.con.consess{5}.tcon.weights = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1];
matlabbatch{40}.spm.stats.con.consess{5}.tcon.sessrep = 'none';
matlabbatch{40}.spm.stats.con.delete = 0;
matlabbatch{41}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: fMRI Results(1)', substruct('.','val', '{}',{37}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{41}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^spmT';
matlabbatch{41}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{42}.spm.spatial.coreg.write.ref(1) = cfg_dep('Named File Selector: Structural T1 Reference(1) - Files', substruct('.','val', '{}',{29}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{1}));
matlabbatch{42}.spm.spatial.coreg.write.source(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^spmT)', substruct('.','val', '{}',{41}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{42}.spm.spatial.coreg.write.roptions.interp = 4;
matlabbatch{42}.spm.spatial.coreg.write.roptions.wrap = [0 0 0];
matlabbatch{42}.spm.spatial.coreg.write.roptions.mask = 0;
matlabbatch{42}.spm.spatial.coreg.write.roptions.prefix = 'r';
matlabbatch{43}.cfg_basicio.file_dir.file_ops.file_fplist.dir(1) = cfg_dep('Named Directory Selector: fMRI Data(1)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dirs', '{}',{1}));
matlabbatch{43}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^meanu';
matlabbatch{43}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{44}.spm.spatial.coreg.write.ref(1) = cfg_dep('Named File Selector: Structural T1 Reference(1) - Files', substruct('.','val', '{}',{29}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{1}));
matlabbatch{44}.spm.spatial.coreg.write.source(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^meanu)', substruct('.','val', '{}',{43}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{44}.spm.spatial.coreg.write.roptions.interp = 4;
matlabbatch{44}.spm.spatial.coreg.write.roptions.wrap = [0 0 0];
matlabbatch{44}.spm.spatial.coreg.write.roptions.mask = 0;
matlabbatch{44}.spm.spatial.coreg.write.roptions.prefix = 'r';
matlabbatch{45}.spm.spatial.coreg.estwrite.ref(1) = cfg_dep('Named File Selector: Structural T1 Reference(1) - Files', substruct('.','val', '{}',{29}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{1}));
matlabbatch{45}.spm.spatial.coreg.estwrite.source = '<UNDEFINED>';
matlabbatch{45}.spm.spatial.coreg.estwrite.other = {''};
matlabbatch{45}.spm.spatial.coreg.estwrite.eoptions.cost_fun = 'nmi';
matlabbatch{45}.spm.spatial.coreg.estwrite.eoptions.sep = [4 2];
matlabbatch{45}.spm.spatial.coreg.estwrite.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
matlabbatch{45}.spm.spatial.coreg.estwrite.eoptions.fwhm = [7 7];
matlabbatch{45}.spm.spatial.coreg.estwrite.roptions.interp = 4;
matlabbatch{45}.spm.spatial.coreg.estwrite.roptions.wrap = [0 0 0];
matlabbatch{45}.spm.spatial.coreg.estwrite.roptions.mask = 0;
matlabbatch{45}.spm.spatial.coreg.estwrite.roptions.prefix = 'r';
matlabbatch{46}.spm.spatial.coreg.estwrite.ref(1) = cfg_dep('Named File Selector: Structural T1 Reference(1) - Files', substruct('.','val', '{}',{29}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{1}));
matlabbatch{46}.spm.spatial.coreg.estwrite.source = '<UNDEFINED>';
matlabbatch{46}.spm.spatial.coreg.estwrite.other = {''};
matlabbatch{46}.spm.spatial.coreg.estwrite.eoptions.cost_fun = 'nmi';
matlabbatch{46}.spm.spatial.coreg.estwrite.eoptions.sep = [4 2];
matlabbatch{46}.spm.spatial.coreg.estwrite.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
matlabbatch{46}.spm.spatial.coreg.estwrite.eoptions.fwhm = [7 7];
matlabbatch{46}.spm.spatial.coreg.estwrite.roptions.interp = 4;
matlabbatch{46}.spm.spatial.coreg.estwrite.roptions.wrap = [0 0 0];
matlabbatch{46}.spm.spatial.coreg.estwrite.roptions.mask = 0;
matlabbatch{46}.spm.spatial.coreg.estwrite.roptions.prefix = 'r';
