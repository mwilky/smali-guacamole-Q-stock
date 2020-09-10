.class Lcom/android/server/wm/ActivityDisplay;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityDisplay.java"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/ConfigurationContainer<",
        "Lcom/android/server/wm/ActivityStack;",
        ">;",
        "Lcom/android/server/wm/WindowContainerListener;"
    }
.end annotation


# static fields
.field static final POSITION_BOTTOM:I = -0x80000000

.field static final POSITION_TOP:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityTaskManager"

.field public static mIsPerfBoostAcquired:Z

.field public static mPerfHandle:I

.field public static mPerfSendTapHint:Z

.field private static sNextFreeStackId:I


# instance fields
.field final mAllSleepTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field mDisplay:Landroid/view/Display;

.field private mDisplayAccessUIDs:Landroid/util/IntArray;

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mDisplayId:I

.field private mHomeStack:Lcom/android/server/wm/ActivityStack;

.field private mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

.field private mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

.field mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

.field public mPerfBoost:Landroid/util/BoostFramework;

.field private mPinnedStack:Lcom/android/server/wm/ActivityStack;

.field private mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

.field private mRecentsStack:Lcom/android/server/wm/ActivityStack;

.field private mRemoved:Z

.field private mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field private mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mSingleTaskInstance:Z

.field private mSleeping:Z

.field private mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

.field private mStackOrderChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpDisplaySize:Landroid/graphics/Point;

.field private final mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

.field public mUxPerf:Landroid/util/BoostFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ActivityDisplay;->mPerfSendTapHint:Z

    sput-boolean v0, Lcom/android/server/wm/ActivityDisplay;->mIsPerfBoostAcquired:Z

    const/4 v1, -0x1

    sput v1, Lcom/android/server/wm/ActivityDisplay;->mPerfHandle:I

    sput v0, Lcom/android/server/wm/ActivityDisplay;->sNextFreeStackId:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/RootActivityContainer;Landroid/view/Display;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mUxPerf:Landroid/util/BoostFramework;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    new-instance v0, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-direct {v0}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, p1, Lcom/android/server/wm/RootActivityContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iput-object p2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->createDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->updateBounds()V

    return-void
.end method

.method private addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, " stack="

    const-string v5, " already exist on display="

    if-ne v0, v3, :cond_2

    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v6, :cond_1

    if-ne v6, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addStackReferenceIfNeeded: home stack="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_2

    :cond_2
    if-ne v0, v2, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v6, :cond_4

    if-ne v6, p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addStackReferenceIfNeeded: recents stack="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    :cond_5
    :goto_2
    if-ne v1, v3, :cond_8

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_7

    if-ne v2, p1, :cond_6

    goto :goto_3

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addStackReferenceIfNeeded: pinned stack="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_5

    :cond_8
    if-ne v1, v2, :cond_b

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_a

    if-ne v2, p1, :cond_9

    goto :goto_4

    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addStackReferenceIfNeeded: split-screen-primary stack="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    :goto_4
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->onSplitScreenModeActivated()V

    :cond_b
    :goto_5
    return-void
.end method

.method private alwaysCreateStack(II)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getTopInsertPosition(Lcom/android/server/wm/ActivityStack;I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    :cond_0
    :goto_0
    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    nop

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private isWindowingModeSupported(IZZZZI)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x5

    if-eq p1, v3, :cond_5

    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    if-ne p1, v4, :cond_3

    return v1

    :cond_3
    if-nez p5, :cond_4

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    if-eqz p3, :cond_6

    invoke-static {p6}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eq v2, v4, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    return v0

    :cond_7
    :goto_2
    return v0
.end method

.method private onSplitScreenModeActivated()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-eq v1, v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private onSplitScreenModeDismissed()V
    .locals 11

    const-string v0, "onSplitScreenModeDismissed"

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    nop

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityDisplay;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v3, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityDisplay;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v2
.end method

.method private onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private positionChildAt(Lcom/android/server/wm/ActivityStack;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    return-void
.end method

.method private positionChildAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "positionChildAt: Can only have one child on display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->getTopInsertPosition(Lcom/android/server/wm/ActivityStack;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt p2, v4, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-ne v4, p1, :cond_4

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    :cond_4
    :goto_2
    if-eqz p4, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eq v0, v1, :cond_7

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v4, v4, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    iget v5, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    const/4 v6, -0x1

    if-nez v0, :cond_5

    move v7, v6

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result v7

    :goto_3
    iget-object v8, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result v6

    :goto_4
    invoke-static {v4, v5, v7, v6, p4}, Lcom/android/server/am/EventLogTags;->writeAmFocusedStack(IIIILjava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_8

    nop

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p3}, Lcom/android/server/wm/DisplayContent;->positionStackAt(ILcom/android/server/wm/TaskStack;Z)V

    :cond_8
    if-nez v2, :cond_9

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityStack;->setParent(Lcom/android/server/wm/ActivityDisplay;)V

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method private releaseSelfIfNeeded()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRemoved:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->remove()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->removeIfPossible()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/RootActivityContainer;->removeChild(Lcom/android/server/wm/ActivityDisplay;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->onDisplayRemoved(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_1

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_2

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-ne p1, v0, :cond_3

    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->onSplitScreenModeDismissed()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateBounds()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/server/wm/ActivityDisplay;->setBounds(IIII)I

    return-void
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x1081

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    sput-boolean v2, Lcom/android/server/wm/ActivityDisplay;->mPerfSendTapHint:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1601

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityDisplay;->mPerfHandle:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityDisplay;->mPerfHandle:I

    :goto_0
    sget v0, Lcom/android/server/wm/ActivityDisplay;->mPerfHandle:I

    if-lez v0, :cond_2

    sput-boolean v2, Lcom/android/server/wm/ActivityDisplay;->mIsPerfBoostAcquired:Z

    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-static {v0, v1}, Lcom/android/server/wm/OnePlusPerfManagerInjector;->acquirePerfForStartSpeed(Ljava/lang/String;Landroid/util/BoostFramework;)Z

    :cond_4
    return-void
.end method

.method acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x1081

    invoke-virtual {v0, v3, v1, p2, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    sput-boolean v2, Lcom/android/server/wm/ActivityDisplay;->mPerfSendTapHint:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, p2, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPerfBoost:Landroid/util/BoostFramework;

    const/4 v1, -0x1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method acquireUxPerfLock(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mUxPerf:Landroid/util/BoostFramework;

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    :cond_0
    return-void
.end method

.method addChild(Lcom/android/server/wm/ActivityStack;I)V
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addChild: attaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;I)V

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    return-void
.end method

.method allResumedActivitiesComplete()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allResumedActivitiesComplete: mLastFocusedStack changing from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    return v1
.end method

.method public continueUpdateImeTarget()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    :cond_0
    return-void
.end method

.method protected createDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/RootWindowContainer;->createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/ActivityDisplay;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method createStack(IIZ)Lcom/android/server/wm/ActivityStack;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(IIZ)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityDisplay;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x1

    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of activityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already on display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Can\'t have multiple."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    move-object v0, p0

    move v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityDisplay;->isWindowingModeSupported(IZZZZI)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getNextStackId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/ActivityDisplay;->createStackUnchecked(IIIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create stack for unsupported windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createStackUnchecked(IIIZ)Lcom/android/server/wm/ActivityStack;
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(IIIZ)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stack with windowing mode cannot with non standard activity type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/wm/ActivityStack;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v5, v1, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object v2, v0

    move-object v3, p0

    move v4, p3

    move v6, p1

    move v7, p2

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;-><init>(Lcom/android/server/wm/ActivityDisplay;ILcom/android/server/wm/ActivityStackSupervisor;IIZ)V

    return-object v0
.end method

.method public deferUpdateImeTarget()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->deferUpdateImeTarget()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    if-eqz v1, :cond_0

    const-string v1, " mSingleTaskInstance"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mHomeStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mRecentsStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mPinnedStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mSplitScreenPrimaryStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mPreferredTopFocusableStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mLastFocusedStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "  mAllSleepTokens="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_7

    const-string v2, "  #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public dumpStacks(Ljava/io/PrintWriter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    iget v1, v1, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    if-lez v0, :cond_0

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method findTaskLocked(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/RootActivityContainer$FindTaskResult;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->clear()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping stack: (mismatch activity/stack) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityStack;->findTaskLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-boolean v2, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-eq v3, v1, :cond_1

    const/16 v3, 0x1f4

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityDisplay;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;I)V

    const/4 v2, 0x1

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v3, v3, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v3, v3, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_3

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/ActivityDisplay;->acquireUxPerfLock(ILjava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {p3, v3}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->setTo(Lcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    return-void

    :cond_4
    if-eqz p2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    invoke-virtual {p3, v2}, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->setTo(Lcom/android/server/wm/RootActivityContainer$FindTaskResult;)V

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mTmpFindTaskResult:Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    iget-object v0, v0, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_8

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    :cond_8
    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/wm/ActivityStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    return-object p1
.end method

.method protected getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getFocusedStack()Lcom/android/server/wm/ActivityStack;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v0, v0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityDisplay;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1
    if-ltz v5, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, -0x1

    if-eq p1, v7, :cond_2

    iget v7, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v7, p1, :cond_3

    :cond_2
    return-object v6

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method getHomeStack()Lcom/android/server/wm/ActivityStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getIndexOf(Lcom/android/server/wm/ActivityStack;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method getLastFocusedStack()Lcom/android/server/wm/ActivityStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mLastFocusedStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getNextFocusableStack()Lcom/android/server/wm/ActivityStack;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityDisplay;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    if-eqz p2, :cond_1

    if-ne v3, p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    if-nez v1, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v1, v3

    nop

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v1

    :cond_4
    return-object v3

    :cond_5
    return-object v1
.end method

.method getNextStackId()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget v0, Lcom/android/server/wm/ActivityDisplay;->sNextFreeStackId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/wm/ActivityDisplay;->sNextFreeStackId:I

    return v0
.end method

.method getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(IIZ)TT;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->alwaysCreateStack(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityDisplay;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;IZ)Lcom/android/server/wm/ActivityStack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/server/wm/TaskRecord;",
            "IZ)TT;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/wm/ActivityDisplay;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I

    move-result v0

    invoke-virtual {p0, v0, p4, p5}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method protected getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    return-object v0
.end method

.method getPinnedStack()Lcom/android/server/wm/ActivityStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getPresentUIDs()Landroid/util/IntArray;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->getPresentUIDs(Landroid/util/IntArray;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayAccessUIDs:Landroid/util/IntArray;

    return-object v0
.end method

.method getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_3

    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    return-object v0
.end method

.method getStack(I)Lcom/android/server/wm/ActivityStack;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    iget v2, v1, Lcom/android/server/wm/ActivityStack;->mStackId:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/ActivityStack;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/wm/ActivityStack;",
            ">(II)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRecentsStack:Lcom/android/server/wm/ActivityStack;

    return-object v0

    :cond_1
    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    return-object v0

    :cond_2
    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityStack;->isCompatible(II)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getTopStack()Lcom/android/server/wm/ActivityStack;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStack;

    :goto_0
    return-object v0
.end method

.method getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne p1, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifySizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    :cond_1
    iput-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/android/server/wm/ActivityDisplay;->mLastCompatModeActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifySizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method hasPinnedStack()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPinnedStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasSplitScreenPrimaryStack()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPrivate()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRemoved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mRemoved:Z

    return v0
.end method

.method isSingleTaskInstance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    return v0
.end method

.method isSleeping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSleeping:Z

    return v0
.end method

.method isTopNotPinnedStack(Lcom/android/server/wm/ActivityStack;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_1

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method isTopStack(Lcom/android/server/wm/ActivityStack;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUidPresent(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack;->isUidPresent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method moveHomeActivityToTop(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    return-void
.end method

.method moveHomeStackToFront(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mHomeStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method moveStackBehindBottomMostVisibleStack(Lcom/android/server/wm/ActivityStack;)V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/wm/ActivityStack;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    if-ne v3, p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    const/4 v7, 0x4

    if-ne v4, v7, :cond_2

    goto :goto_1

    :cond_2
    move v6, v5

    :cond_3
    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    add-int/lit8 v0, v2, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;I)V

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method moveStackBehindStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;)V
    .locals 4

    if-eqz p2, :cond_2

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gt v0, v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;I)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->preOnConfigurationChanged()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method onDisplayChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v3, "Display-off"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mOffToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->updateBounds()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    :cond_2
    return-void
.end method

.method onExitingSplitScreenMode()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mSplitScreenPrimaryStack:Lcom/android/server/wm/ActivityStack;

    return-void
.end method

.method public onInitializeOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method onLockTaskPackagesUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->onLockTaskPackagesUpdated()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    nop

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_0

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/DisplayContent;->applyRotationLocked(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->setNewDisplayOverrideConfiguration(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)V

    :cond_1
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->addStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method pauseBackStacks(ZLcom/android/server/wm/ActivityRecord;Z)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, p2}, Lcom/android/server/wm/ActivityStack;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->isQuickReplyRunning()Z

    move-result v4

    const-string v5, "ActivityTaskManager"

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v6, 0x5

    if-eq v4, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickReply: skip pausing stack="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " resumedActivity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pauseBackStacks: stack="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mResumedActivity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, p2, p3}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    move-result v4

    or-int/2addr v0, v4

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method positionChildAtBottom(Lcom/android/server/wm/ActivityStack;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/ActivityStack;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V

    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/wm/ActivityDisplay;->positionChildAt(Lcom/android/server/wm/ActivityStack;IZLjava/lang/String;)V

    return-void
.end method

.method registerStackOrderChangedListener(Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method remove()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->shouldDestroyContentOnRemove()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->beginDeferResume()V

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityStack;

    if-nez v0, :cond_2

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    nop

    invoke-virtual {v6, v2, v5, v5}, Lcom/android/server/wm/ActivityStack;->reparent(Lcom/android/server/wm/ActivityDisplay;ZZ)V

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    move-object v1, v6

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityStack;->finishAllActivitiesLocked(Z)V

    :goto_3
    iget-object v7, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v7, v3, v7

    sub-int/2addr v4, v7

    iget-object v7, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v7

    add-int/2addr v4, v5

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    nop

    iput-boolean v5, p0, Lcom/android/server/wm/ActivityDisplay;->mRemoved:Z

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->postReparent()V

    :cond_4
    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->releaseSelfIfNeeded()V

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, v3, Lcom/android/server/wm/RootActivityContainer;->mSleepTokens:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear mAllSleepTokens for remove display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    :cond_6
    return-void

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    throw v3
.end method

.method removeChild(Lcom/android/server/wm/ActivityStack;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeChild: detaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mPreferredTopFocusableStack:Lcom/android/server/wm/ActivityStack;

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->removeStackReferenceIfNeeded(Lcom/android/server/wm/ActivityStack;)V

    invoke-direct {p0}, Lcom/android/server/wm/ActivityDisplay;->releaseSelfIfNeeded()V

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityDisplay;->onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method varargs removeStacksInWindowingModes([I)V
    .locals 6

    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    aget v2, p1, v1

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-eq v5, v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    return-void

    :cond_6
    :goto_4
    return-void
.end method

.method varargs removeStacksWithActivityTypes([I)V
    .locals 6

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    aget v2, p1, v1

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v5

    if-ne v5, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;I)I
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result v0

    :cond_3
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/server/wm/ActivityDisplay;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method setDisplayToSingleTaskInstance()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    if-lez v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v3

    if-gt v3, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display stack already has multiple tasks. display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display already has multiple stacks. display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setFocusedApp(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v1, "WindowManager"

    if-nez v0, :cond_2

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing focused app, displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set focused app to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " moveFocusNow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_5

    invoke-static {p1}, Lcom/android/server/wm/OpScreenCompatInjector;->getCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/AppWindowToken;->mAppCompat:I

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v2

    if-eqz p2, :cond_6

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_6
    return-void
.end method

.method setIsSleeping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityDisplay;->mSleeping:Z

    return-void
.end method

.method shouldDestroyContentOnRemove()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRemoveMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method shouldSleep()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method supportsSystemDecorations()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityDisplay={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " numStacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityStack;

    if-eq v3, v1, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/ActivityDisplay;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    return-object v2

    :cond_4
    return-object v0
.end method

.method unregisterStackOrderChangedListener(Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ActivityDisplay;->mStackOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I
    .locals 14

    move-object v7, p0

    move v0, p1

    iget-object v1, v7, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    iget-object v2, v7, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    iget-object v3, v7, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v4, v7, Lcom/android/server/wm/ActivityDisplay;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v2

    move v11, v1

    move v8, v2

    move v9, v3

    move v10, v4

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeform()Z

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v4

    move v11, v1

    move v8, v2

    move v9, v3

    move v10, v4

    goto :goto_0

    :cond_1
    move v11, v1

    move v8, v2

    move v9, v3

    move v10, v4

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    move v13, v0

    goto :goto_1

    :cond_2
    if-eqz v12, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    if-eqz v8, :cond_4

    const/4 v0, 0x4

    move v13, v0

    goto :goto_1

    :cond_4
    move v13, v0

    :goto_1
    if-eqz v13, :cond_5

    move-object v0, p0

    move v1, v13

    move v2, v11

    move v3, v8

    move v4, v9

    move v5, v10

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityDisplay;->isWindowingModeSupported(IZZZZI)Z

    move-result v0

    if-eqz v0, :cond_5

    return v13

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 7

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    iget v2, p0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityDisplay;->mSingleTaskInstance:Z

    const-wide v3, 0x10800000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    const-wide v3, 0x10500000004L

    if-eqz v2, :cond_1

    iget v5, v2, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    const-wide v4, 0x10b00000005L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityStack;

    const-wide v5, 0x20b00000003L

    invoke-virtual {v4, p1, v5, v6, p4}, Lcom/android/server/wm/ActivityStack;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
