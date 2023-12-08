# 1. MRI Acquisition Protocol
## 1.1. Introduction
We recommend acquiring [T1](#12-t1-weighted-structural-image), 
[T2](#13-t2-weighted-structural-image) and 
[T2-FLAIR](#14-t2-flair-weighted-structural-image) weighted structural images, 
[BOLD fMRI](#15-bold-fmri), $B_0$ [field map](#16-b0-field-map) and 
[diffusion](#17-diffusion-data) data on a 3 T MRI system with gradient coils 
capable of producing a maximum amplitude of 80 mT/m at a slew rate of 
200 T/m/s.

>[!IMPORTANT]
>Check all the images for artefacts such as signal dropout, distortion, subject 
>motion and ghosts as they are acquired on the scanner. It is generally easier 
>to rectify in problems real-time and/or re-acquire data as necessary than to 
>try to correct poor quality images using software tools.

## 1.2. T1-Weighted Structural Image
Acquire a T1-weighted structural image using a SPACE sequence with the 
following parameters:

### 1.2.1. Contrast Parameters
| Parameter | Value |
|-----------|-------|
| TE        | 11 ms |
| TR        | 700 ms |
| Averages  | 1.4     |
| Restore magnetisation | On |

### 1.2.2. Resolution Parameters
| Parameter | Value |
|-----------|-------|
| Field-of-view (readout)| 230 mm |
| Field-of-view (phase)  | 85.9 %  |
| Slice thickness  | 0.9 mm |
| Phase resolution  | 90 % |
| Slice resolution  | 90 % |
| Number of slices | 192 |
| Matrix size | 256 by 256 |
| Phase partial Fourier | Off |
| Slice partial Fourier | Off |
| Interpolation | Off |
| In plane acceleration factor | 2 |
| Through plane acceleration factor | 2 |
| Distortion correction| 3D |

### 1.2.3. Sequence Parameters
| Parameter | Value |
|-----------|-------|
| Elliptic scanning | On|
| Reordering| Radial|
| Echo spacing | 3.74 ms |
| Bandwidth | 630 Hz  |
| RF pulse type | Normal |
| Gradient mode | Fast |
| Excitation | Non-selective |
| Flip angle mode | T1 var |
| Turbo factor | 38 |

## 1.3. T2-Weighted Structural Image
Acquire a T2-weighted structural image using a SPACE sequence with the 
following parameters:

### 1.3.1. Contrast Parameters
| Parameter | Value |
|-----------|-------|
| TE        | 401 ms |
| TR        | 3200 ms |
| Averages  | 1    |
| Restore magnetisation | Off |

### 1.3.2. Resolution Parameters
| Parameter | Value |
|-----------|-------|
| Field-of-view (readout)| 282 mm |
| Field-of-view (phase)  | 100 %  |
| Slice thickness  | 1.1 mm |
| Phase resolution  | 100 % |
| Slice resolution  | 100 % |
| Number of slices | 176 |
| Matrix size | 256 by 256 |
| Phase partial Fourier | Allowed |
| Slice partial Fourier | Off |
| Interpolation | Off |
| In plane acceleration factor | 2 |
| Through plane acceleration factor | 1 |
| Distortion correction| 3D |

### 1.3.3. Sequence Parameters
| Parameter | Value |
|-----------|-------|
| Elliptic scanning | On|
| Reordering| Linear |
| Echo spacing | 3.38 ms |
| Bandwidth | 751 Hz  |
| RF pulse type | Normal |
| Gradient mode | Fast |
| Excitation | Non-selective |
| Flip angle mode | T2 var |
| Turbo factor | 282 |

## 1.4. T2-FLAIR-Weighted Structural Image
Acquire a T2-FLAIR-weighted structural image using a SPACE sequence with the 
following parameters:

### 1.4.1. Contrast Parameters
| Parameter | Value |
|-----------|-------|
| TE        | 502 ms |
| TR        | 5000 ms |
| TI        | 1600 ms |
| Magnetisation Preparation | Non-selective T2 IR|
| Fat saturation | Strong|
| Averages  | 1    |
| Restore magnetisation | Off |

### 1.4.2. Resolution Parameters
| Parameter | Value |
|-----------|-------|
| Field-of-view (readout)| 250 mm |
| Field-of-view (phase)  | 100 %  |
| Slice thickness  | 1.0 mm |
| Phase resolution  | 100 % |
| Slice resolution  | 69 % |
| Number of slices | 176 |
| Matrix size | 256 by 256 |
| Phase partial Fourier | Allowed |
| Slice partial Fourier | 7/8 |
| Interpolation | Off |
| In plane acceleration factor | 2 |
| Through plane acceleration factor | 1 |
| Distortion correction| 3D |

### 1.4.3. Sequence Parameters
| Parameter | Value |
|-----------|-------|
| Elliptic scanning | Off |
| Reordering| Linear |
| Echo spacing | 3.46 ms |
| Bandwidth | 751 Hz  |
| RF pulse type | Normal |
| Gradient mode | Fast |
| Excitation | Non-selective |
| Flip angle mode | T2 var |
| Turbo factor | 300 |
 
## 1.5. BOLD fMRI
Acquire BOLD fMRI data using a gradient-echo echo-planar imaging (GE-EPI) 
pulse sequence with the following parameters:

### 1.5.1. Contrast Parameters
| Parameter | Value |
|-----------|-------|
| TE        | 30 ms |
| TR        | 2670 ms |
| Flip Angle | 90 deg |
| Averages  | 1     |
| Fat Saturation | On |

### 1.5.2. Resolution Parameters
| Parameter | Value |
|-----------|-------|
| Field-of-view (readout)| 192 mm |
| Field-of-view (phase)  | 100 %  |
| Slice thickness  | 2.7 mm |
| Slice gap  | 12 % |
| Number of slices | 49 |
| Matrix size | 64 by 64 |
| Phase partial Fourier | Off |
| Interpolation | Off |
| In plane acceleration factor | 2 |
| Phase-encode direction | A >> P |

### 1.5.3. Sequence Parameters
| Parameter | Value |
|-----------|-------|
| Echo spacing | 0.56 ms |
| Bandwidth | 2112 Hz  |
| RF pulse type | Normal |
| Gradient mode | Fast |

### 1.5.4. BOLD Parameters
| Parameter | Value |
|-----------|-------|
| Measurements | 111 |

## 1.6. B0 Field Map
Acquire a $B_0$ field map using a double-echo 2D gradient-echo pulse sequence 
with the following parameters:   

>[!TIP]
>The $B_0$ field map is used to correct spatial distortions in the BOLD fMRI 
>data.

### 1.6.1. Contrast Parameters
| Parameter | Value |
|-----------|-------|
| TE1       | 4.92 ms |
| TE2       | 7.38 ms |
| TR        | 688 ms |
| Averages  | 1     |
| Flip Angle | 60 deg |

### 1.6.2. Resolution Parameters
| Parameter | Value |
|-----------|-------|
| Field-of-view (readout)| 220 mm |
| Field-of-view (phase)  | 100 %  |
| Slice thickness  | 3 mm |
| Slice gap  | 0 % |
| Number of slices | 50 |
| Matrix size | 80 by 80 |
| Phase partial Fourier | Off |
| Interpolation | Off |

### 1.6.3. Sequence Parameters
| Parameter | Value |
|-----------|-------|
| Bandwidth | 282 Hz  |
| RF pulse type | Normal |
| Gradient mode | Fast |
| RF Spoiling | On |

## 1.7. Diffusion Data
Acquire five separate series with b-values ranging from 0 to 2500 $s/mm^2$ and 
acquisition parameters as described below.

### 1.7.1. Diffusion Parameters
| Series | Phase-encode direction | b-value | number of directions | b-value | number of volumes |  
|---|---|---|---|---|---|
| 1 | A >> P | 2500 | 75 | 0 | 6 |
| 2 | P >> A | 0 | 4 | | |
| 3 | A >> P | 1700 | 55 | 0 | 5 |
| 4 | A >> P | 1000 | 30 | 0 | 4 |
| 5 | A >> P | 400 | 18  | 0 | 3 |

Create uniformly distributed diffusion gradient directions using 
[dirgen](https://mrtrix.readthedocs.io/en/latest/reference/commands/dirgen.html). 

### 1.7.2. Contrast Parameters
| Parameter | Value |
|-----------|-------|
| TE        | 82 ms |
| TR        | 3500 ms |
| Averages  | 1     |
| Fat Saturation | On |

### 1.7.3. Resolution Parameters
| Parameter | Value |
|-----------|-------|
| Field-of-view (readout)| 220 mm |
| Field-of-view (phase)  | 100 %  |
| Slice thickness  | 2.5 mm |
| Number of slices | 54 |
| Matrix size | 88 by 88 |
| Phase partial Fourier | 7/8 |
| Interpolation | Off |
| In plane acceleration factor | 2 |
| Slice acceleration (multi-band) factor | 2 |

### 1.7.4. Sequence Parameters
| Parameter | Value |
|-----------|-------|
| Echo spacing | 0.58 ms |
| Bandwidth | 2030 Hz  |
| RF pulse type | Normal |
| Gradient mode | Performance |