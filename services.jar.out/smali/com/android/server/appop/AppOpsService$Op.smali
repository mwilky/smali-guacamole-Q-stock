.class final Lcom/android/server/appop/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# instance fields
.field private mAccessTimes:Landroid/util/LongSparseLongArray;

.field private mDurations:Landroid/util/LongSparseLongArray;

.field private mProxyPackageNames:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyUids:Landroid/util/LongSparseLongArray;

.field private mRejectTimes:Landroid/util/LongSparseLongArray;

.field private mode:I

.field op:I

.field final packageName:Ljava/lang/String;

.field running:Z

.field startNesting:I

.field startRealtime:J

.field final uidState:Lcom/android/server/appop/AppOpsService$UidState;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService$UidState;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    invoke-static {p3}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/appop/AppOpsService$Op;)I
    .locals 1

    iget v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/appop/AppOpsService$Op;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseLongArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyUids:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/appop/AppOpsService$Op;)Landroid/util/LongSparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyPackageNames:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method private updateAccessTimeAndDuration(JJII)V
    .locals 3

    invoke-static {p5, p6}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/LongSparseLongArray;

    invoke-direct {v2}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    :cond_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    if-nez v2, :cond_1

    new-instance v2, Landroid/util/LongSparseLongArray;

    invoke-direct {v2}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    :cond_1
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    invoke-virtual {v2, v0, v1, p3, p4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    return-void
.end method

.method private updateProxyState(JILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyUids:Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyUids:Landroid/util/LongSparseLongArray;

    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyUids:Landroid/util/LongSparseLongArray;

    int-to-long v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyPackageNames:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyPackageNames:Landroid/util/LongSparseArray;

    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mProxyPackageNames:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public accessed(JILjava/lang/String;II)V
    .locals 3

    invoke-static {p5, p6}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/LongSparseLongArray;

    invoke-direct {v2}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    :cond_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/appop/AppOpsService$Op;->updateProxyState(JILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseLongArray;->delete(J)V

    :cond_1
    return-void
.end method

.method public continuing(JII)V
    .locals 3

    invoke-static {p3, p4}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/LongSparseLongArray;

    invoke-direct {v2}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    :cond_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    return-void
.end method

.method evalMode()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v1, p0, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/appop/AppOpsService$UidState;->evalMode(II)I

    move-result v0

    return v0
.end method

.method public finished(JJII)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$Op;->updateAccessTimeAndDuration(JJII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    return-void
.end method

.method getMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mode:I

    return v0
.end method

.method hasAnyTime()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mAccessTimes:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public rejected(JILjava/lang/String;II)V
    .locals 3

    invoke-static {p5, p6}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/LongSparseLongArray;

    invoke-direct {v2}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    :cond_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mRejectTimes:Landroid/util/LongSparseLongArray;

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/util/LongSparseLongArray;->put(JJ)V

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/appop/AppOpsService$Op;->updateProxyState(JILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Op;->mDurations:Landroid/util/LongSparseLongArray;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseLongArray;->delete(J)V

    :cond_1
    return-void
.end method

.method public running(JJII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$Op;->updateAccessTimeAndDuration(JJII)V

    return-void
.end method

.method public started(JII)V
    .locals 7

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/appop/AppOpsService$Op;->updateAccessTimeAndDuration(JJII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/appop/AppOpsService$Op;->running:Z

    return-void
.end method
