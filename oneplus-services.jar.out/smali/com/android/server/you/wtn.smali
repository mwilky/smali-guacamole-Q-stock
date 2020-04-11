.class public Lcom/android/server/you/wtn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/you/wtn$zta;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OpVerificationCodeWindow"


# instance fields
.field private SL:Lcom/android/server/you/wtn$zta;

.field private final TL:Ljava/lang/Runnable;

.field private UL:Z

.field private final VL:Landroid/graphics/Rect;

.field private WL:Landroid/animation/AnimatorSet;

.field private XL:Landroid/animation/AnimatorSet;

.field private YL:Z

.field private ZL:Z

.field private _L:I

.field private aM:I

.field private bM:I

.field private cM:I

.field private dM:I

.field private eM:I

.field private fM:I

.field gM:Landroid/animation/Animator$AnimatorListener;

.field hM:Landroid/animation/Animator$AnimatorListener;

.field private volatile mContentHeight:I

.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mDecor:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/you/wtn;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/you/zta;

    invoke-direct {v0, p0}, Lcom/android/server/you/zta;-><init>(Lcom/android/server/you/wtn;)V

    iput-object v0, p0, Lcom/android/server/you/wtn;->TL:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/you/wtn;->mCreated:Z

    iput-boolean v0, p0, Lcom/android/server/you/wtn;->UL:Z

    iput v0, p0, Lcom/android/server/you/wtn;->mContentHeight:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/you/wtn;->VL:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/android/server/you/wtn;->YL:Z

    iput-boolean v0, p0, Lcom/android/server/you/wtn;->ZL:Z

    const/16 v1, 0x20

    iput v1, p0, Lcom/android/server/you/wtn;->_L:I

    const/16 v1, 0x31

    iput v1, p0, Lcom/android/server/you/wtn;->aM:I

    const/16 v1, 0x27

    iput v1, p0, Lcom/android/server/you/wtn;->bM:I

    const/16 v1, 0x18

    iput v1, p0, Lcom/android/server/you/wtn;->cM:I

    const/16 v1, 0xe

    iput v1, p0, Lcom/android/server/you/wtn;->dM:I

    const/16 v1, 0x145

    iput v1, p0, Lcom/android/server/you/wtn;->eM:I

    const/16 v1, 0x96

    iput v1, p0, Lcom/android/server/you/wtn;->fM:I

    new-instance v1, Lcom/android/server/you/bio;

    invoke-direct {v1, p0}, Lcom/android/server/you/bio;-><init>(Lcom/android/server/you/wtn;)V

    iput-object v1, p0, Lcom/android/server/you/wtn;->gM:Landroid/animation/Animator$AnimatorListener;

    new-instance v1, Lcom/android/server/you/igw;

    invoke-direct {v1, p0}, Lcom/android/server/you/igw;-><init>(Lcom/android/server/you/wtn;)V

    iput-object v1, p0, Lcom/android/server/you/wtn;->hM:Landroid/animation/Animator$AnimatorListener;

    sget-boolean v1, Lcom/android/server/you/wtn;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpVerificationCodeWindow Construct Thread @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpVerificationCodeWindow"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/you/wtn;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/you/wtn;->mHandler:Landroid/os/Handler;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/server/you/wtn;->mWindowManager:Landroid/view/WindowManager;

    iget-object p1, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object p1, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    check-cast p0, Lcom/android/internal/policy/PhoneWindow;

    const p1, 0x5090004

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->setContentView(I)V

    return-void
.end method

.method private Ao()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "translationX"

    const-string v2, "alpha"

    sget-boolean v3, Lcom/android/server/you/wtn;->DEBUG:Z

    const-string v4, "OpVerificationCodeWindow"

    if-eqz v3, :cond_0

    const-string v3, "Show Anim"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, v0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-object v3, v0, Lcom/android/server/you/wtn;->WL:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v0, Lcom/android/server/you/wtn;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "Single Start Animation Limited"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    :try_start_0
    iget-object v3, v0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    const v5, 0x5070045

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    const v6, 0x5070043

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    const v7, 0x5070044

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v8, 0x3ecccccd    # 0.4f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v7, v8, v10, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v8, 0x2

    new-array v11, v8, [F

    const/high16 v12, 0x42b80000    # 92.0f

    const/4 v13, 0x0

    aput v12, v11, v13

    const/4 v12, 0x1

    aput v10, v11, v12

    invoke-static {v3, v1, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-array v14, v8, [F

    aput v10, v14, v13

    aput v9, v14, v12

    invoke-static {v3, v2, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v14, v8, [F

    const/high16 v15, -0x3d480000    # -92.0f

    aput v15, v14, v13

    aput v10, v14, v12

    invoke-static {v5, v1, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v14, v8, [F

    aput v10, v14, v13

    aput v9, v14, v12

    invoke-static {v5, v2, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-string v14, "scaleX"

    new-array v15, v8, [F

    const/high16 v16, 0x3f000000    # 0.5f

    aput v16, v15, v13

    aput v9, v15, v12

    invoke-static {v6, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    new-array v15, v8, [F

    aput v10, v15, v13

    aput v9, v15, v12

    invoke-static {v6, v2, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v11, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v14, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, v0, Lcom/android/server/you/wtn;->WL:Landroid/animation/AnimatorSet;

    iget-object v6, v0, Lcom/android/server/you/wtn;->WL:Landroid/animation/AnimatorSet;

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v11, v7, v13

    aput-object v1, v7, v12

    aput-object v14, v7, v8

    const/4 v1, 0x3

    aput-object v3, v7, v1

    const/4 v1, 0x4

    aput-object v5, v7, v1

    const/4 v1, 0x5

    aput-object v2, v7, v1

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, v0, Lcom/android/server/you/wtn;->WL:Landroid/animation/AnimatorSet;

    iget v2, v0, Lcom/android/server/you/wtn;->eM:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lcom/android/server/you/wtn;->WL:Landroid/animation/AnimatorSet;

    iget-object v2, v0, Lcom/android/server/you/wtn;->hM:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-boolean v13, v0, Lcom/android/server/you/wtn;->YL:Z

    iget-object v0, v0, Lcom/android/server/you/wtn;->WL:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAnim Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/you/wtn;->DEBUG:Z

    return v0
.end method

.method public static synthetic bio(Lcom/android/server/you/wtn;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/you/wtn;->xo()V

    return-void
.end method

.method static synthetic cno(Lcom/android/server/you/wtn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/you/wtn;->ZL:Z

    return p0
.end method

.method static synthetic kth(Lcom/android/server/you/wtn;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/you/wtn;->xo()V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/you/wtn;)I
    .locals 0

    iget p0, p0, Lcom/android/server/you/wtn;->bM:I

    return p0
.end method

.method static synthetic sis(Lcom/android/server/you/wtn;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/you/wtn;->YL:Z

    return p0
.end method

.method static synthetic ssp(Lcom/android/server/you/wtn;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/you/wtn;->zo()V

    return-void
.end method

.method private tsu(Landroid/content/Context;I)I
    .locals 0

    int-to-float p0, p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/you/wtn;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/you/wtn;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private vo()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/you/wtn;->XL:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/you/wtn;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpVerificationCodeWindow"

    const-string v1, "Cancel Dismiss Anim"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/you/wtn;->ZL:Z

    iget-object p0, p0, Lcom/android/server/you/wtn;->XL:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method

.method private wo()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/you/wtn;->WL:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/you/wtn;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpVerificationCodeWindow"

    const-string v1, "Cancel Show Anim"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/you/wtn;->YL:Z

    iget-object p0, p0, Lcom/android/server/you/wtn;->WL:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method

.method private xo()V
    .locals 4

    sget-boolean v0, Lcom/android/server/you/wtn;->DEBUG:Z

    const-string v1, "OpVerificationCodeWindow"

    if-eqz v0, :cond_0

    const-string v0, "detachWindow"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/you/wtn;->UL:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean p0, Lcom/android/server/you/wtn;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Cannot Dismiss a Destroyed Window!"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/you/wtn;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->closeAllPanels()V

    invoke-virtual {p0}, Lcom/android/server/you/wtn;->onStop()V

    iput-boolean v0, p0, Lcom/android/server/you/wtn;->UL:Z

    iput-object v1, p0, Lcom/android/server/you/wtn;->SL:Lcom/android/server/you/wtn$zta;

    return-void

    :catchall_0
    move-exception v2

    iput-object v1, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->closeAllPanels()V

    invoke-virtual {p0}, Lcom/android/server/you/wtn;->onStop()V

    iput-boolean v0, p0, Lcom/android/server/you/wtn;->UL:Z

    iput-object v1, p0, Lcom/android/server/you/wtn;->SL:Lcom/android/server/you/wtn$zta;

    throw v2

    :cond_4
    :goto_0
    return-void
.end method

.method private yo()V
    .locals 12

    const-string v0, "alpha"

    sget-boolean v1, Lcom/android/server/you/wtn;->DEBUG:Z

    const-string v2, "OpVerificationCodeWindow"

    if-eqz v1, :cond_0

    const-string v1, "Dismiss Anim"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    if-nez v1, :cond_2

    sget-boolean p0, Lcom/android/server/you/wtn;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "Dismiss Anim, Null Decor "

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/you/wtn;->XL:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean p0, Lcom/android/server/you/wtn;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "Single Exit Animation Limited."

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    const v3, 0x5070045

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    const v4, 0x5070043

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    const v5, 0x5070044

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3f19999a    # 0.6f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v6, 0x2

    new-array v9, v6, [F

    const/4 v10, 0x0

    aput v7, v9, v10

    const/4 v11, 0x1

    aput v8, v9, v11

    invoke-static {v1, v0, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v9, v6, [F

    aput v7, v9, v10

    aput v8, v9, v11

    invoke-static {v3, v0, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v9, v6, [F

    aput v7, v9, v10

    aput v8, v9, v11

    invoke-static {v4, v0, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/you/wtn;->XL:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/server/you/wtn;->XL:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v10

    aput-object v3, v5, v11

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/server/you/wtn;->XL:Landroid/animation/AnimatorSet;

    iget v1, p0, Lcom/android/server/you/wtn;->fM:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/server/you/wtn;->XL:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/server/you/wtn;->gM:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-boolean v10, p0, Lcom/android/server/you/wtn;->ZL:Z

    iget-object p0, p0, Lcom/android/server/you/wtn;->XL:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dismiss Anim Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic you(Lcom/android/server/you/wtn;)I
    .locals 0

    iget p0, p0, Lcom/android/server/you/wtn;->mContentHeight:I

    return p0
.end method

.method static synthetic you(Lcom/android/server/you/wtn;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/server/you/wtn;->XL:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private you(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x5070046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/server/you/rtg;

    invoke-direct {v1, p0}, Lcom/android/server/you/rtg;-><init>(Lcom/android/server/you/wtn;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x5070045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/server/you/ssp;

    invoke-direct {v1, p0}, Lcom/android/server/you/ssp;-><init>(Lcom/android/server/you/wtn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x5070043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/android/server/you/cno;

    invoke-direct {v1, p0}, Lcom/android/server/you/cno;-><init>(Lcom/android/server/you/wtn;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/server/you/kth;

    invoke-direct {v1, p0, p1}, Lcom/android/server/you/kth;-><init>(Lcom/android/server/you/wtn;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/you/wtn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/you/wtn;->ZL:Z

    return p1
.end method

.method private zo()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/you/wtn;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/you/wtn;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force ReLayout, IME startY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/you/wtn;->VL:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ContentH = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/you/wtn;->mContentHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpVerificationCodeWindow"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/you/wtn;->VL:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x31

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/android/server/you/wtn;->mContentHeight:I

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/server/you/wtn;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/you/wtn;->dM:I

    invoke-direct {p0, v1, v3}, Lcom/android/server/you/wtn;->tsu(Landroid/content/Context;I)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/server/you/wtn;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/you/wtn;->cM:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/you/wtn;->tsu(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_1
    iget-object v1, p0, Lcom/android/server/you/wtn;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/you/wtn;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/you/wtn;->mContentHeight:I

    return p1
.end method

.method static synthetic zta(Lcom/android/server/you/wtn;Landroid/content/Context;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/you/wtn;->tsu(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/you/wtn;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/server/you/wtn;->WL:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/you/wtn;)Lcom/android/server/you/wtn$zta;
    .locals 0

    iget-object p0, p0, Lcom/android/server/you/wtn;->SL:Lcom/android/server/you/wtn$zta;

    return-object p0
.end method

.method private zta(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    const/16 p0, 0x7dc

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p0, -0x2

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x28

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p0, 0x1

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method static synthetic zta(Lcom/android/server/you/wtn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/you/wtn;->YL:Z

    return p1
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/you/wtn;->yo()V

    return-void
.end method

.method dispatchOnCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/you/wtn;->mCreated:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/you/wtn;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/you/wtn;->mCreated:Z

    :cond_0
    return-void
.end method

.method public ea(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/you/wtn;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    const v0, 0x5070046

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/you/wtn;->wo()V

    invoke-direct {p0}, Lcom/android/server/you/wtn;->yo()V

    goto :goto_0

    :cond_0
    sget-boolean p0, Lcom/android/server/you/wtn;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "OpVerificationCodeWindow"

    const-string v0, "hide with null Decor"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method public zta(Lcom/android/server/you/wtn$zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/you/wtn;->SL:Lcom/android/server/you/wtn$zta;

    return-void
.end method

.method public zta(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/you/wtn;->VL:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean p2, p0, Lcom/android/server/you/wtn;->UL:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/server/you/wtn;->vo()V

    iget-object p2, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/you/wtn;->ea(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/you/wtn;->zo()V

    invoke-direct {p0}, Lcom/android/server/you/wtn;->Ao()V

    :cond_0
    return-void

    :cond_1
    iget-boolean p2, p0, Lcom/android/server/you/wtn;->mCreated:Z

    if-nez p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/you/wtn;->dispatchOnCreate(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/server/you/wtn;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/you/wtn;->onStart()V

    iget-object p2, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    iget-object p2, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/you/wtn;->ea(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/server/you/wtn;->you(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/server/you/wtn;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/you/wtn;->zta(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p2, p0, Lcom/android/server/you/wtn;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/server/you/wtn;->mDecor:Landroid/view/View;

    invoke-interface {p2, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/you/wtn;->UL:Z

    invoke-direct {p0}, Lcom/android/server/you/wtn;->Ao()V

    return-void
.end method
