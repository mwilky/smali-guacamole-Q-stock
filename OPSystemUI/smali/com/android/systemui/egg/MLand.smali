.class public Lcom/android/systemui/egg/MLand;
.super Landroid/widget/FrameLayout;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/egg/MLand$Star;,
        Lcom/android/systemui/egg/MLand$Cloud;,
        Lcom/android/systemui/egg/MLand$Mountain;,
        Lcom/android/systemui/egg/MLand$Cactus;,
        Lcom/android/systemui/egg/MLand$Building;,
        Lcom/android/systemui/egg/MLand$Scenery;,
        Lcom/android/systemui/egg/MLand$Stem;,
        Lcom/android/systemui/egg/MLand$Pop;,
        Lcom/android/systemui/egg/MLand$Obstacle;,
        Lcom/android/systemui/egg/MLand$Player;,
        Lcom/android/systemui/egg/MLand$GameView;,
        Lcom/android/systemui/egg/MLand$Params;
    }
.end annotation


# static fields
.field static final ANTENNAE:[I

.field static final CACTI:[I

.field public static final DEBUG:Z

.field public static final DEBUG_IDDQD:Z

.field static final EYES:[I

.field static final MOUNTAINS:[I

.field static final MOUTHS:[I

.field private static PARAMS:Lcom/android/systemui/egg/MLand$Params;

.field private static final SKIES:[[I

.field private static dp:F

.field static final hsv:[F

.field static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private dt:F

.field private mAnim:Landroid/animation/TimeAnimator;

.field private mAnimating:Z

.field private final mAudioAttrs:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCountdown:I

.field private mCurrentPipeId:I

.field private mFlipped:Z

.field private mFrozen:Z

.field private mGameControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mLastPipeTime:F

.field private mObstaclesInPlay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/egg/MLand$Obstacle;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerTracePaint:Landroid/graphics/Paint;

.field private mPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/egg/MLand$Player;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaying:Z

.field private mScene:I

.field private mScoreFields:Landroid/view/ViewGroup;

.field private mSplash:Landroid/view/View;

.field private mTaps:I

.field private mTimeOfDay:I

.field private mTouchPaint:Landroid/graphics/Paint;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWidth:I

.field private t:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x3

    const-string v1, "MLand"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    const-string v1, "MLand.iddqd"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    const/4 v1, 0x4

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    aput-object v4, v2, v0

    sput-object v2, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    const/high16 v2, 0x3f800000    # 1.0f

    sput v2, Lcom/android/systemui/egg/MLand;->dp:F

    new-array v2, v0, [F

    fill-array-data v2, :array_4

    sput-object v2, Lcom/android/systemui/egg/MLand;->hsv:[F

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Lcom/android/systemui/egg/MLand;->sTmpRect:Landroid/graphics/Rect;

    new-array v2, v3, [I

    sget v4, Lcom/android/systemui/R$drawable;->mm_antennae:I

    aput v4, v2, v5

    sget v4, Lcom/android/systemui/R$drawable;->mm_antennae2:I

    aput v4, v2, v6

    sput-object v2, Lcom/android/systemui/egg/MLand;->ANTENNAE:[I

    new-array v2, v3, [I

    sget v4, Lcom/android/systemui/R$drawable;->mm_eyes:I

    aput v4, v2, v5

    sget v4, Lcom/android/systemui/R$drawable;->mm_eyes2:I

    aput v4, v2, v6

    sput-object v2, Lcom/android/systemui/egg/MLand;->EYES:[I

    new-array v1, v1, [I

    sget v2, Lcom/android/systemui/R$drawable;->mm_mouth1:I

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$drawable;->mm_mouth2:I

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$drawable;->mm_mouth3:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->mm_mouth4:I

    aput v2, v1, v0

    sput-object v1, Lcom/android/systemui/egg/MLand;->MOUTHS:[I

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->cactus1:I

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$drawable;->cactus2:I

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$drawable;->cactus3:I

    aput v2, v1, v3

    sput-object v1, Lcom/android/systemui/egg/MLand;->CACTI:[I

    new-array v0, v0, [I

    sget v1, Lcom/android/systemui/R$drawable;->mountain1:I

    aput v1, v0, v5

    sget v1, Lcom/android/systemui/R$drawable;->mountain2:I

    aput v1, v0, v6

    sget v1, Lcom/android/systemui/R$drawable;->mountain3:I

    aput v1, v0, v3

    sput-object v0, Lcom/android/systemui/egg/MLand;->MOUNTAINS:[I

    return-void

    :array_0
    .array-data 4
        -0x3f3f01
        -0x5f5f01
    .end array-data

    :array_1
    .array-data 4
        -0xfffff0
        -0x1000000
    .end array-data

    :array_2
    .array-data 4
        -0xffffc0
        -0xfffff0
    .end array-data

    :array_3
    .array-data 4
        -0x5f7fe0
        -0xdfbf80
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/egg/MLand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/egg/MLand;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 p3, 0xe

    invoke-virtual {p2, p3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/egg/MLand;->mAudioAttrs:Landroid/media/AudioAttributes;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    const-string/jumbo p3, "vibrator"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Vibrator;

    iput-object p3, p0, Lcom/android/systemui/egg/MLand;->mVibrator:Landroid/os/Vibrator;

    const-string p3, "audio"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/systemui/egg/MLand;->mAudioManager:Landroid/media/AudioManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    new-instance p3, Lcom/android/systemui/egg/MLand$Params;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/android/systemui/egg/MLand$Params;-><init>(Landroid/content/res/Resources;)V

    sput-object p3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    sget-object p3, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    array-length p3, p3

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    const/4 p3, 0x3

    invoke-static {p2, p3}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/egg/MLand;->mScene:I

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    const v0, -0x7f000001

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p3, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    sget v0, Lcom/android/systemui/egg/MLand;->dp:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->setupPlayers(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "egg_mland_create"

    invoke-static {p0, p2, p1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static varargs L(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-eqz v0, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "MLand"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/egg/MLand;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/egg/MLand;->step(JJ)V

    return-void
.end method

.method static synthetic access$1000()Lcom/android/systemui/egg/MLand$Params;
    .locals 1

    sget-object v0, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    return-object v0
.end method

.method static synthetic access$1100(I)F
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/egg/MLand;->luma(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/egg/MLand;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/egg/MLand;->mHeight:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/egg/MLand;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/egg/MLand;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    return p0
.end method

.method static synthetic access$210(Lcom/android/systemui/egg/MLand;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/egg/MLand;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/egg/MLand;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    return p1
.end method

.method private addPlayerInternal(Lcom/android/systemui/egg/MLand$Player;)I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->mland_scorefield:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/egg/MLand$Player;->setScoreField(Landroid/widget/TextView;)V

    iget-object p0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final clamp(F)F
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, v2

    if-lez v0, :cond_1

    move p0, v2

    :cond_1
    :goto_0
    return p0
.end method

.method private clearPlayers()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->removePlayerInternal(Lcom/android/systemui/egg/MLand$Player;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final frand()F
    .locals 2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static final frand(FF)F
    .locals 1

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v0

    invoke-static {v0, p0, p1}, Lcom/android/systemui/egg/MLand;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method public static final irand(II)I
    .locals 0

    int-to-float p0, p0

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static isGamePad(Landroid/view/InputDevice;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result p0

    and-int/lit16 v0, p0, 0x401

    const/16 v1, 0x401

    if-eq v0, v1, :cond_1

    const v0, 0x1000010

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final lerp(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p2, p0

    add-float/2addr p2, p1

    return p2
.end method

.method private static luma(I)F
    .locals 3

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    int-to-float v0, v0

    const v1, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v0, v1

    const/high16 v1, 0x4b7f0000    # 1.671168E7f

    div-float/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    int-to-float v1, v1

    const v2, 0x3f371759    # 0.7152f

    mul-float/2addr v1, v2

    const/high16 v2, 0x477f0000    # 65280.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    const v1, 0x3d93dd98    # 0.0722f

    mul-float/2addr p0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static pick([I)I
    .locals 2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    aget p0, p0, v0

    return p0
.end method

.method private poke(I)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/egg/MLand;->poke(IFF)V

    return-void
.end method

.method private poke(IFF)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "poke(%d)"

    invoke-static {v2, v1}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->reset()V

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand;->start(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->getPlayer(I)Lcom/android/systemui/egg/MLand$Player;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/egg/MLand$Player;->boost(FF)V

    iget p2, p0, Lcom/android/systemui/egg/MLand;->mTaps:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/systemui/egg/MLand;->mTaps:I

    sget-boolean p0, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-eqz p0, :cond_4

    iget p0, p1, Lcom/android/systemui/egg/MLand$Player;->dv:F

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p0, p2

    iput p0, p1, Lcom/android/systemui/egg/MLand$Player;->dv:F

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x190

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_4
    :goto_0
    return-void
.end method

.method private realignPlayers()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/egg/MLand;->mWidth:I

    add-int/lit8 v2, v0, -0x1

    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/egg/MLand$Player;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setX(F)V

    sget-object v3, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v3, v3, Lcom/android/systemui/egg/MLand$Params;->PLAYER_SIZE:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removePlayerInternal(Lcom/android/systemui/egg/MLand$Player;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/systemui/egg/MLand$Player;->access$000(Lcom/android/systemui/egg/MLand$Player;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    :cond_0
    return-void
.end method

.method public static final rlerp(FFF)F
    .locals 0

    sub-float/2addr p0, p1

    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    return p0
.end method

.method private step(JJ)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v8, p1

    long-to-float v1, v8

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/egg/MLand;->t:F

    move-wide/from16 v10, p3

    long-to-float v1, v10

    div-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/egg/MLand;->dt:F

    sget-boolean v1, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/systemui/egg/MLand;->t:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/egg/MLand;->t:F

    iget v1, v0, Lcom/android/systemui/egg/MLand;->dt:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/egg/MLand;->dt:F

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    if-ge v14, v12, :cond_2

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/egg/MLand$GameView;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/systemui/egg/MLand$GameView;

    iget v6, v0, Lcom/android/systemui/egg/MLand;->t:F

    iget v7, v0, Lcom/android/systemui/egg/MLand;->dt:F

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/egg/MLand$GameView;->step(JJFF)V

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v1, v0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    move v1, v13

    move v14, v1

    :goto_1
    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_a

    invoke-virtual {v0, v14}, Lcom/android/systemui/egg/MLand;->getPlayer(I)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/egg/MLand$Player;->access$500(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/egg/MLand$Player;->below(I)Z

    move-result v4

    const-wide/16 v5, 0x50

    if-eqz v4, :cond_4

    sget-boolean v4, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    if-eqz v4, :cond_3

    invoke-direct {v0, v14}, Lcom/android/systemui/egg/MLand;->poke(I)V

    invoke-direct {v0, v14}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    goto :goto_2

    :cond_3
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v13

    const-string v7, "player %d hit the floor"

    invoke-static {v7, v4}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v0, v14, v5, v6}, Lcom/android/systemui/egg/MLand;->thump(IJ)V

    invoke-virtual {v3}, Lcom/android/systemui/egg/MLand$Player;->die()V

    :cond_4
    :goto_2
    iget-object v4, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v7, v13

    :goto_3
    add-int/lit8 v8, v4, -0x1

    if-lez v4, :cond_7

    iget-object v4, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/egg/MLand$Obstacle;

    invoke-virtual {v4, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->intersects(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-boolean v9, Lcom/android/systemui/egg/MLand;->DEBUG_IDDQD:Z

    if-nez v9, :cond_5

    new-array v4, v13, [Ljava/lang/Object;

    const-string v9, "player hit an obstacle"

    invoke-static {v9, v4}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v0, v14, v5, v6}, Lcom/android/systemui/egg/MLand;->thump(IJ)V

    invoke-virtual {v3}, Lcom/android/systemui/egg/MLand$Player;->die()V

    goto :goto_4

    :cond_5
    invoke-virtual {v4, v3}, Lcom/android/systemui/egg/MLand$Obstacle;->cleared(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v9

    if-eqz v9, :cond_6

    instance-of v9, v4, Lcom/android/systemui/egg/MLand$Stem;

    if-eqz v9, :cond_6

    check-cast v4, Lcom/android/systemui/egg/MLand$Stem;

    iget v4, v4, Lcom/android/systemui/egg/MLand$Stem;->id:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v7, v4

    :cond_6
    :goto_4
    move v4, v8

    goto :goto_3

    :cond_7
    invoke-static {v3}, Lcom/android/systemui/egg/MLand$Player;->access$600(Lcom/android/systemui/egg/MLand$Player;)I

    move-result v4

    if-le v7, v4, :cond_8

    invoke-static {v3, v2}, Lcom/android/systemui/egg/MLand$Player;->access$700(Lcom/android/systemui/egg/MLand$Player;I)V

    :cond_8
    invoke-static {v3}, Lcom/android/systemui/egg/MLand$Player;->access$500(Lcom/android/systemui/egg/MLand$Player;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v1, v1, 0x1

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_a
    if-nez v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/egg/MLand;->stop()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, v0, Lcom/android/systemui/egg/MLand;->mTaps:I

    const-string v4, "egg_mland_taps"

    invoke-static {v1, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    iput v13, v0, Lcom/android/systemui/egg/MLand;->mTaps:I

    iget-object v1, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v13

    :goto_5
    if-ge v3, v1, :cond_b

    iget-object v4, v0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/egg/MLand$Player;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/systemui/egg/MLand$Player;->getScore()I

    move-result v4

    const-string v6, "egg_mland_score"

    invoke-static {v5, v6, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    add-int/lit8 v1, v14, -0x1

    const/4 v3, 0x0

    if-lez v14, :cond_e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/android/systemui/egg/MLand$Obstacle;

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v3, v5, v3

    if-gez v3, :cond_d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    instance-of v5, v4, Lcom/android/systemui/egg/MLand$Scenery;

    if-eqz v5, :cond_d

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/egg/MLand$Scenery;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v6

    iget v5, v5, Lcom/android/systemui/egg/MLand$Scenery;->w:I

    int-to-float v5, v5

    add-float/2addr v6, v5

    cmpg-float v3, v6, v3

    if-gez v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationX(F)V

    :cond_d
    :goto_7
    move v14, v1

    goto :goto_6

    :cond_e
    iget-boolean v1, v0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-eqz v1, :cond_f

    iget v1, v0, Lcom/android/systemui/egg/MLand;->t:F

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mLastPipeTime:F

    sub-float v4, v1, v4

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_PERIOD:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    iput v1, v0, Lcom/android/systemui/egg/MLand;->mLastPipeTime:F

    iget v1, v0, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v1

    iget v4, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    sget-object v5, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v6, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_MIN:I

    mul-int/lit8 v7, v6, 0x2

    sub-int/2addr v4, v7

    iget v7, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_GAP:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    add-int/2addr v1, v6

    iget v4, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    iget v5, v5, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    sub-int v5, v4, v5

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/16 v6, 0xfa

    invoke-static {v13, v6}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v7

    new-instance v8, Lcom/android/systemui/egg/MLand$Stem;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    sub-int v10, v1, v4

    int-to-float v10, v10

    invoke-direct {v8, v0, v9, v10, v13}, Lcom/android/systemui/egg/MLand$Stem;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;FZ)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v10, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v10, v10, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    iget v11, v8, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    float-to-int v11, v11

    const/16 v12, 0x33

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v9, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    add-int/2addr v9, v5

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationX(F)V

    iget v9, v8, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    neg-float v9, v9

    int-to-float v10, v4

    sub-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    sget-object v9, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v9, v9, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    const/high16 v11, 0x3f400000    # 0.75f

    mul-float/2addr v9, v11

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationZ(F)V

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v14, v7

    invoke-virtual {v3, v14, v15}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v6, 0xfa

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v3, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v11, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v11, v11, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v11, v11

    invoke-direct {v3, v0, v9, v11}, Lcom/android/systemui/egg/MLand$Pop;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v11, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v11, v11, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    invoke-direct {v9, v11, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v9, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    int-to-float v9, v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setTranslationX(F)V

    sget-object v9, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v9, v9, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setTranslationY(F)V

    sget-object v9, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v9, v9, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    invoke-virtual {v3, v9}, Landroid/view/View;->setTranslationZ(F)V

    const/high16 v9, 0x3e800000    # 0.25f

    invoke-virtual {v3, v9}, Landroid/view/View;->setScaleX(F)V

    const/high16 v11, -0x41800000    # -0.25f

    invoke-virtual {v3, v11}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    iget v8, v8, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    int-to-float v9, v5

    sub-float/2addr v8, v9

    invoke-virtual {v11, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v8, v11}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v6, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xfa

    invoke-static {v13, v3}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v3

    new-instance v6, Lcom/android/systemui/egg/MLand$Stem;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    sub-int/2addr v8, v1

    sget-object v1, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_GAP:I

    sub-int/2addr v8, v1

    sub-int/2addr v8, v4

    int-to-float v1, v8

    invoke-direct {v6, v0, v7, v1, v2}, Lcom/android/systemui/egg/MLand$Stem;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;FZ)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v2, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v2, v2, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_STEM_WIDTH:I

    iget v7, v6, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    float-to-int v7, v7

    invoke-direct {v1, v2, v7, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationX(F)V

    iget v1, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationY(F)V

    sget-object v1, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationZ(F)V

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v2, v2

    iget v4, v6, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    sub-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v1, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v8, v8, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    int-to-float v8, v8

    invoke-direct {v1, v0, v7, v8}, Lcom/android/systemui/egg/MLand$Pop;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v8, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v8, v8, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_WIDTH:I

    invoke-direct {v7, v8, v8, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v7, v0, Lcom/android/systemui/egg/MLand;->mWidth:I

    int-to-float v7, v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setTranslationX(F)V

    iget v7, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v7, v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setTranslationY(F)V

    sget-object v7, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v7, v7, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_Z:F

    invoke-virtual {v1, v7}, Landroid/view/View;->setTranslationZ(F)V

    const/high16 v7, 0x3e800000    # 0.25f

    invoke-virtual {v1, v7}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    iget v8, v0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v8, v8

    iget v6, v6, Lcom/android/systemui/egg/MLand$Obstacle;->h:F

    sub-float/2addr v8, v6

    sub-float/2addr v8, v10

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v2, v0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private thump(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object p1

    long-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p2, p3

    float-to-long p2, p2

    iget-object p0, p0, Lcom/android/systemui/egg/MLand;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/egg/MLand;->mVibrator:Landroid/os/Vibrator;

    iget-object p0, p0, Lcom/android/systemui/egg/MLand;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    return-void
.end method

.method private unpoke(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "unboost(%d)"

    invoke-static {v1, v0}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->getPlayer(I)Lcom/android/systemui/egg/MLand$Player;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Player;->unboost()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addPlayer()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/egg/MLand$Player;->create(Lcom/android/systemui/egg/MLand;)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->addPlayerInternal(Lcom/android/systemui/egg/MLand$Player;)I

    return-void
.end method

.method public getControllerPlayer(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getGameControllers()Ljava/util/ArrayList;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/egg/MLand;->isGamePad(Landroid/view/InputDevice;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/egg/MLand;->mGameControllers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getGameTime()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/egg/MLand;->t:F

    return p0
.end method

.method public getNumPlayers()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getPlayer(I)Lcom/android/systemui/egg/MLand$Player;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/egg/MLand$Player;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public hideSplash()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/egg/MLand$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/egg/MLand$3;-><init>(Lcom/android/systemui/egg/MLand;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/systemui/egg/MLand;->dp:F

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand;->start(Z)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/egg/MLand$Player;

    invoke-static {v1}, Lcom/android/systemui/egg/MLand$Player;->access$800(Lcom/android/systemui/egg/MLand$Player;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/android/systemui/egg/MLand$Player;->color:I

    const v4, -0x7f000001

    and-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/android/systemui/egg/MLand$Player;->color:I

    and-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v1}, Lcom/android/systemui/egg/MLand$Player;->access$800(Lcom/android/systemui/egg/MLand$Player;)F

    move-result v2

    invoke-static {v1}, Lcom/android/systemui/egg/MLand$Player;->access$900(Lcom/android/systemui/egg/MLand$Player;)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, p0, Lcom/android/systemui/egg/MLand;->mTouchPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPivotX()F

    move-result v5

    add-float v9, v4, v5

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPivotY()F

    move-result v1

    add-float v10, v4, v1

    const v1, 0x3fc90fdb

    sub-float v4, v9, v2

    float-to-double v4, v4

    sub-float v6, v10, v3

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float/2addr v1, v4

    float-to-double v4, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v11

    add-double/2addr v4, v6

    double-to-float v7, v4

    float-to-double v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, v11

    add-double/2addr v3, v1

    double-to-float v8, v3

    iget-object v11, p0, Lcom/android/systemui/egg/MLand;->mPlayerTracePaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const-string p1, "generic: %s"

    invoke-static {p1, p0}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "keyDown: %d"

    invoke-static {v2, v1}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x13

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x60

    if-eq p1, v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->getControllerPlayer(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/egg/MLand;->poke(I)V

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "keyDown: %d"

    invoke-static {v2, v1}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x13

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x60

    if-eq p1, v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->getControllerPlayer(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    sput p1, Lcom/android/systemui/egg/MLand;->dp:F

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->stop()V

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->reset()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/egg/MLand;->start(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo v3, "touch: %s"

    invoke-static {v3, v1}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v3, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-boolean v5, p0, Lcom/android/systemui/egg/MLand;->mFlipped:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v5

    sub-int/2addr v5, v0

    sub-int v4, v5, v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v5, 0x5

    if-eq p1, v5, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    return v0

    :cond_2
    invoke-direct {p0, v4, v3, v1}, Lcom/android/systemui/egg/MLand;->poke(IFF)V

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo v3, "trackball: %s"

    invoke-static {v3, v1}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/egg/MLand;->unpoke(I)V

    return v0

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/egg/MLand;->poke(I)V

    return v0
.end method

.method public removePlayer()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    invoke-direct {p0, v0}, Lcom/android/systemui/egg/MLand;->removePlayerInternal(Lcom/android/systemui/egg/MLand$Player;)V

    return-void
.end method

.method public reset()V
    .locals 13

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "reset"

    invoke-static {v2, v1}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v3, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    iget v4, p0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    aget-object v3, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mFlipped:Z

    iget-boolean v1, p0, Lcom/android/systemui/egg/MLand;->mFlipped:Z

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    :goto_2
    add-int/lit8 v6, v1, -0x1

    if-lez v1, :cond_3

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/egg/MLand$GameView;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    :cond_2
    move v1, v6

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mObstaclesInPlay:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput v0, p0, Lcom/android/systemui/egg/MLand;->mCurrentPipeId:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/egg/MLand;->mWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/egg/MLand;->mHeight:I

    iget v1, p0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    if-eqz v1, :cond_4

    const/4 v8, 0x3

    if-ne v1, v8, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v1

    float-to-double v8, v1

    cmpl-double v1, v8, v6

    if-lez v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    if-eqz v1, :cond_7

    new-instance v8, Lcom/android/systemui/egg/MLand$Star;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/egg/MLand$Star;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    sget v9, Lcom/android/systemui/R$drawable;->sun:I

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/systemui/R$dimen;->sun_size:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v10, v9

    iget v11, p0, Lcom/android/systemui/egg/MLand;->mWidth:I

    sub-int/2addr v11, v9

    int-to-float v11, v11

    invoke-static {v10, v11}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v11

    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget v11, p0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    const v12, 0x3f28f5c3    # 0.66f

    if-nez v11, :cond_6

    iget v11, p0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v11, v11

    mul-float/2addr v11, v12

    invoke-static {v10, v11}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_4

    :cond_6
    iget v10, p0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v11, v10

    mul-float/2addr v11, v12

    sub-int/2addr v10, v9

    int-to-float v10, v10

    invoke-static {v11, v10}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const v11, -0x3f008000    # -7.984375f

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_4
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v8, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    const/4 v8, 0x2

    if-nez v1, :cond_e

    iget v1, p0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    if-eq v1, v2, :cond_9

    if-ne v1, v8, :cond_8

    goto :goto_5

    :cond_8
    move v1, v0

    goto :goto_6

    :cond_9
    :goto_5
    move v1, v2

    :goto_6
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v9

    if-eqz v1, :cond_a

    const/high16 v10, 0x3f400000    # 0.75f

    cmpg-float v10, v9, v10

    if-ltz v10, :cond_b

    :cond_a
    cmpg-float v3, v9, v3

    if-gez v3, :cond_e

    :cond_b
    new-instance v3, Lcom/android/systemui/egg/MLand$Star;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, p0, v9}, Lcom/android/systemui/egg/MLand$Star;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    sget v9, Lcom/android/systemui/R$drawable;->moon:I

    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v1, :cond_c

    const/16 v1, 0xff

    goto :goto_7

    :cond_c
    const/16 v1, 0x80

    :goto_7
    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v1

    float-to-double v9, v1

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v9, v11

    if-lez v1, :cond_d

    goto :goto_8

    :cond_d
    move v4, v5

    :goto_8
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v1

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v4, v9}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setRotation(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/systemui/R$dimen;->sun_size:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v4, v1

    iget v9, p0, Lcom/android/systemui/egg/MLand;->mWidth:I

    sub-int/2addr v9, v1

    int-to-float v9, v9

    invoke-static {v4, v9}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget v9, p0, Lcom/android/systemui/egg/MLand;->mHeight:I

    sub-int/2addr v9, v1

    int-to-float v9, v9

    invoke-static {v4, v9}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    iget v1, p0, Lcom/android/systemui/egg/MLand;->mHeight:I

    div-int/lit8 v1, v1, 0x6

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v3

    float-to-double v3, v3

    cmpg-double v3, v3, v6

    if-gez v3, :cond_f

    move v3, v2

    goto :goto_9

    :cond_f
    move v3, v0

    :goto_9
    const/16 v4, 0x14

    if-ge v0, v4, :cond_18

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v4

    float-to-double v6, v4

    const-wide v9, 0x3fd3333333333333L    # 0.3

    cmpg-double v4, v6, v9

    if-gez v4, :cond_10

    iget v4, p0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    if-eqz v4, :cond_10

    new-instance v4, Lcom/android/systemui/egg/MLand$Star;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Lcom/android/systemui/egg/MLand$Star;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    goto :goto_b

    :cond_10
    const-wide v9, 0x3fe3333333333333L    # 0.6

    cmpg-double v4, v6, v9

    if-gez v4, :cond_11

    if-nez v3, :cond_11

    new-instance v4, Lcom/android/systemui/egg/MLand$Cloud;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Lcom/android/systemui/egg/MLand$Cloud;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    goto :goto_b

    :cond_11
    iget v4, p0, Lcom/android/systemui/egg/MLand;->mScene:I

    if-eq v4, v2, :cond_13

    if-eq v4, v8, :cond_12

    new-instance v4, Lcom/android/systemui/egg/MLand$Building;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Lcom/android/systemui/egg/MLand$Building;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    goto :goto_a

    :cond_12
    new-instance v4, Lcom/android/systemui/egg/MLand$Mountain;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Lcom/android/systemui/egg/MLand$Mountain;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    goto :goto_a

    :cond_13
    new-instance v4, Lcom/android/systemui/egg/MLand$Cactus;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, p0, v6}, Lcom/android/systemui/egg/MLand$Cactus;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    :goto_a
    int-to-float v6, v0

    const/high16 v7, 0x41a00000    # 20.0f

    div-float/2addr v6, v7

    iput v6, v4, Lcom/android/systemui/egg/MLand$Scenery;->z:F

    const v6, 0x3f59999a    # 0.85f

    iget v7, v4, Lcom/android/systemui/egg/MLand$Scenery;->z:F

    mul-float/2addr v7, v6

    iput v7, v4, Lcom/android/systemui/egg/MLand$Scenery;->v:F

    iget v6, p0, Lcom/android/systemui/egg/MLand;->mScene:I

    if-nez v6, :cond_14

    const v6, -0x777778

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    sget-object v6, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v6, v6, Lcom/android/systemui/egg/MLand$Params;->BUILDING_HEIGHT_MIN:I

    invoke-static {v6, v1}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v6

    iput v6, v4, Lcom/android/systemui/egg/MLand$Scenery;->h:I

    :cond_14
    const/high16 v6, 0x437f0000    # 255.0f

    iget v7, v4, Lcom/android/systemui/egg/MLand$Scenery;->z:F

    mul-float/2addr v7, v6

    float-to-int v6, v7

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_15

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v6, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_15
    :goto_b
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v4, Lcom/android/systemui/egg/MLand$Scenery;->w:I

    iget v9, v4, Lcom/android/systemui/egg/MLand$Scenery;->h:I

    invoke-direct {v6, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    instance-of v7, v4, Lcom/android/systemui/egg/MLand$Building;

    if-eqz v7, :cond_16

    const/16 v7, 0x50

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_c

    :cond_16
    const/16 v7, 0x30

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v7

    instance-of v9, v4, Lcom/android/systemui/egg/MLand$Star;

    if-eqz v9, :cond_17

    mul-float/2addr v7, v7

    iget v9, p0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v9, v9

    mul-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_c

    :cond_17
    mul-float/2addr v7, v7

    iget v9, p0, Lcom/android/systemui/egg/MLand;->mHeight:I

    int-to-float v10, v9

    mul-float/2addr v7, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    sub-float v7, v5, v7

    float-to-int v7, v7

    div-int/2addr v9, v8

    add-int/2addr v7, v9

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_c
    invoke-virtual {p0, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    neg-int v7, v7

    int-to-float v7, v7

    iget v9, p0, Lcom/android/systemui/egg/MLand;->mWidth:I

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v9, v6

    int-to-float v6, v9

    invoke-static {v7, v6}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_18
    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/egg/MLand$Player;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/android/systemui/egg/MLand$Player;->reset()V

    goto :goto_d

    :cond_19
    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    :cond_1a
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    new-instance v1, Lcom/android/systemui/egg/MLand$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/egg/MLand$1;-><init>(Lcom/android/systemui/egg/MLand;)V

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    return-void
.end method

.method public setScoreFieldHolder(Landroid/view/ViewGroup;)V
    .locals 5

    iput-object p1, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand$Player;

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mScoreFields:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/systemui/egg/MLand$Player;->access$000(Lcom/android/systemui/egg/MLand$Player;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSplash(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    return-void
.end method

.method public setupPlayers(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->clearPlayers()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/egg/MLand$Player;->create(Lcom/android/systemui/egg/MLand;)Lcom/android/systemui/egg/MLand$Player;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/egg/MLand;->addPlayerInternal(Lcom/android/systemui/egg/MLand$Player;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showSplash()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->play_button_image:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    sget v3, Lcom/android/systemui/R$id;->play_button_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->play_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->play_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public start(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string/jumbo v2, "true"

    goto :goto_0

    :cond_0
    const-string v2, "false"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "start(startPlaying=%s)"

    invoke-static {v2, v1}, Lcom/android/systemui/egg/MLand;->L(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    if-gtz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->showSplash()V

    iget-object p1, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->play_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->play_button_image:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mSplash:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->play_button_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/systemui/egg/MLand;->mCountdown:I

    new-instance p1, Lcom/android/systemui/egg/MLand$2;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/egg/MLand$2;-><init>(Lcom/android/systemui/egg/MLand;Landroid/widget/TextView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/egg/MLand$Player;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {p1}, Landroid/animation/TimeAnimator;->start()V

    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    :cond_3
    return-void
.end method

.method public startPlaying()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/egg/MLand;->t:F

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->getGameTime()F

    move-result v0

    sget-object v1, Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->OBSTACLE_PERIOD:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/egg/MLand;->mLastPipeTime:F

    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand;->hideSplash()V

    invoke-direct {p0}, Lcom/android/systemui/egg/MLand;->realignPlayers()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/egg/MLand;->mTaps:I

    iget-object v1, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "egg_mland_players"

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/egg/MLand$Player;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/systemui/egg/MLand$Player;->reset()V

    invoke-virtual {v3}, Lcom/android/systemui/egg/MLand$Player;->start()V

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v3, v4, v4}, Lcom/android/systemui/egg/MLand$Player;->boost(FF)V

    invoke-virtual {v3}, Lcom/android/systemui/egg/MLand$Player;->unboost()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/egg/MLand;->mAnim:Landroid/animation/TimeAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mAnimating:Z

    iput-boolean v0, p0, Lcom/android/systemui/egg/MLand;->mPlaying:Z

    sget-object v1, Lcom/android/systemui/egg/MLand;->SKIES:[[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/egg/MLand;->mTimeOfDay:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand;->mScene:I

    iput-boolean v2, p0, Lcom/android/systemui/egg/MLand;->mFrozen:Z

    iget-object v0, p0, Lcom/android/systemui/egg/MLand;->mPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/egg/MLand$Player;

    invoke-virtual {v1}, Lcom/android/systemui/egg/MLand$Player;->die()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/egg/MLand$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/egg/MLand$4;-><init>(Lcom/android/systemui/egg/MLand;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public willNotDraw()Z
    .locals 0

    sget-boolean p0, Lcom/android/systemui/egg/MLand;->DEBUG:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
