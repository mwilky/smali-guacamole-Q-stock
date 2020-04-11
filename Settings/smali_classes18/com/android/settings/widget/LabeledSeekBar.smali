.class public Lcom/android/settings/widget/LabeledSeekBar;
.super Landroid/widget/SeekBar;
.source "LabeledSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;
    }
.end annotation


# instance fields
.field private final mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

.field private mLabels:[Ljava/lang/String;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/LabeledSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/LabeledSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/settings/widget/LabeledSeekBar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/LabeledSeekBar$1;-><init>(Lcom/android/settings/widget/LabeledSeekBar;)V

    iput-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;-><init>(Lcom/android/settings/widget/LabeledSeekBar;Lcom/android/settings/widget/LabeledSeekBar;)V

    iput-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/LabeledSeekBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/LabeledSeekBar;->sendClickEventForAccessibility(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/widget/LabeledSeekBar;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mVibratePattern:[J

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/widget/LabeledSeekBar;[J)[J
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->mVibratePattern:[J

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/widget/LabeledSeekBar;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mLabels:[Ljava/lang/String;

    return-object v0
.end method

.method private sendClickEventForAccessibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setLabels([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->mLabels:[Ljava/lang/String;

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
