.class public Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FaceEnrollAnimationDrawable.java"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;


# static fields
.field private static final BORDER_BOUNDS:I = 0x14


# instance fields
.field private final mAnimationListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

.field private mBounds:Landroid/graphics/Rect;

.field private final mCircleCutoutPaint:Landroid/graphics/Paint;

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

.field private mParticleCollection:Lcom/android/settings/biometrics/face/ParticleCollection;

.field private final mSquarePaint:Landroid/graphics/Paint;

.field private mTimeAnimator:Landroid/animation/TimeAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/ParticleCollection$Listener;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mAnimationListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mSquarePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mSquarePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mSquarePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mCircleCutoutPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mCircleCutoutPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mCircleCutoutPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mCircleCutoutPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;)Landroid/animation/TimeAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;)Lcom/android/settings/biometrics/face/ParticleCollection$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mSquarePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mCircleCutoutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mParticleCollection:Lcom/android/settings/biometrics/face/ParticleCollection;

    invoke-virtual {v0, p1}, Lcom/android/settings/biometrics/face/ParticleCollection;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public synthetic lambda$onBoundsChange$0$FaceEnrollAnimationDrawable(Landroid/animation/TimeAnimator;JJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mParticleCollection:Lcom/android/settings/biometrics/face/ParticleCollection;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/settings/biometrics/face/ParticleCollection;->update(JJ)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->invalidateSelf()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/settings/biometrics/face/ParticleCollection;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mAnimationListener:Lcom/android/settings/biometrics/face/ParticleCollection$Listener;

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/settings/biometrics/face/ParticleCollection;-><init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/ParticleCollection$Listener;Landroid/graphics/Rect;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mParticleCollection:Lcom/android/settings/biometrics/face/ParticleCollection;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    new-instance v1, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollAnimationDrawable$EJxkbtE_2JMB5kTUkaZeIH01LO0;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollAnimationDrawable$EJxkbtE_2JMB5kTUkaZeIH01LO0;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mParticleCollection:Lcom/android/settings/biometrics/face/ParticleCollection;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/biometrics/face/ParticleCollection;->onEnrollmentError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mParticleCollection:Lcom/android/settings/biometrics/face/ParticleCollection;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/biometrics/face/ParticleCollection;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAnimationDrawable;->mParticleCollection:Lcom/android/settings/biometrics/face/ParticleCollection;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/biometrics/face/ParticleCollection;->onEnrollmentProgressChange(II)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
