.class public Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "FaceEnrollPreviewFragment.java"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;


# static fields
.field private static final MAX_PREVIEW_HEIGHT:I = 0x438

.field private static final MAX_PREVIEW_WIDTH:I = 0x780

.field private static final TAG:Ljava/lang/String; = "FaceEnrollPreviewFragment"


# instance fields
.field private mAnimationDrawable:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

.field private final mAnimationListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraId:Ljava/lang/String;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCircleView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewSize:Landroid/util/Size;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Lcom/android/settings/biometrics/face/ParticleCollection$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->openCamera(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->configureTransform(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CameraDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Lcom/android/settings/biometrics/face/FaceSquareTextureView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private chooseOptimalSize([Landroid/util/Size;)Landroid/util/Size;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/16 v2, 0x438

    if-ne v1, v2, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0x780

    if-ne v1, v2, :cond_0

    aget-object v1, p1, v0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "FaceEnrollPreviewFragment"

    const-string v1, "Unable to find a good resolution"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method private closeCamera()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    iput-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_1
    return-void
.end method

.method private configureTransform(II)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v0, v2

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070184

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;->setTranslationX(F)V

    iget-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070185

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;->setTranslationY(F)V

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070183

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v4, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    mul-float/2addr v5, v0

    invoke-virtual {v4, v5}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;->setScaleX(F)V

    iget-object v4, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    mul-float/2addr v5, v1

    invoke-virtual {v4, v5}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;->setScaleY(F)V

    return-void
.end method

.method private openCamera(II)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->setUpCameraOutputs()V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->configureTransform(II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FaceEnrollPreviewFragment"

    const-string v2, "Unable to open camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setUpCameraOutputs()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    iput-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraId:Ljava/lang/String;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->chooseOptimalSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewSize:Landroid/util/Size;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "FaceEnrollPreviewFragment"

    const-string v2, "Unable to access camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x612

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a06df

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0155

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCircleView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCircleView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;-><init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/ParticleCollection$Listener;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCircleView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->onEnrollmentError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->onEnrollmentProgressChange(II)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->closeCamera()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    invoke-virtual {v1}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->openCamera(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/android/settings/biometrics/face/FaceSquareTextureView;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSquareTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    return-void
.end method

.method public setListener(Lcom/android/settings/biometrics/face/ParticleCollection$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    return-void
.end method
