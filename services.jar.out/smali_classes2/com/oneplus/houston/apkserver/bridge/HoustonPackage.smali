.class public final Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
.super Ljava/lang/Object;
.source "HoustonPackage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;,
        Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;
    }
.end annotation


# static fields
.field public static final AI_BOOST_DIED:I = 0x0

.field public static final AI_BOOST_PAUSE:I = 0x1

.field public static final AI_BOOST_RESUME:I = 0x2

.field public static final IDENTIFIER:Ljava/lang/String; = "_"

.field private static final INFLATION:F = 2.0f

.field private static final LAUNCH_THRESHOLD_FOR_SAVE:I = 0x3

.field public static final MAX_JANK_INFO_SIZE:I = 0x32

.field public static final MAX_LAUNCH_INFO_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "HoustonPackage"

.field public static mColdLaunchThreshold:I

.field public static mWarmLaunchThreshold:I


# instance fields
.field private isColdLaunch:Z

.field private isFrezzedLaunchCount:Z

.field public mAiBoostFlag:I

.field public mAppInfo:Landroid/content/pm/ApplicationInfo;

.field public mColdStartCounts:I

.field public mComponentLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mJankInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mMainProcess:I

.field public mPackageName:Ljava/lang/String;

.field public mTotalLaunchCount:I

.field public mType:I

.field public mWarmStartCounts:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xbb8

    sput v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdLaunchThreshold:I

    const/16 v0, 0x5dc

    sput v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmLaunchThreshold:I

    return-void
.end method

.method constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isFrezzedLaunchCount:Z

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdStartCounts:I

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmStartCounts:I

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mJankInfo:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mType:I

    return-void
.end method

.method private startFreezingLaunchCount()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isFrezzedLaunchCount:Z

    return-void
.end method


# virtual methods
.method public addJankInfo(Ljava/lang/String;II)V
    .locals 3

    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mJankInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x31

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mJankInfo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mJankInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLaunchInfo(Ljava/lang/String;ZI)V
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isFrezzedLaunchCount:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    iget v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmStartCounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmStartCounts:I

    goto :goto_0

    :cond_0
    const-string v0, "HoustonPackage"

    const-string v1, "Maybe some err...."

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;

    iget-object v4, v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->mComponent:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    goto :goto_2

    :cond_2
    move v4, p2

    :goto_2
    invoke-virtual {v3, v4, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->addLaunchTimeInfo(ZI)V

    iput-boolean v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->startFreezingLaunchCount()V

    monitor-exit v0

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    new-instance v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;

    iget-boolean v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    goto :goto_3

    :cond_5
    move v4, p2

    :goto_3
    invoke-direct {v3, p1, v4, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;-><init>(Ljava/lang/String;ZI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->startFreezingLaunchCount()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addTotalLaunchCount()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isFrezzedLaunchCount:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    iget v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdStartCounts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdStartCounts:I

    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->startFreezingLaunchCount()V

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isFrezzedLaunchCount:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    :cond_1
    return-void
.end method

.method public canPreserveToMDM()Z
    .locals 2

    iget v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public formatLaunchInfo()Ljava/lang/String;
    .locals 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "HoustonPackage"

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mTotalLaunchCount"

    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mColdStartCounts"

    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdStartCounts:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "mWarmStartCounts"

    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmStartCounts:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "activity"

    iget-object v6, v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->mComponent:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "avgColdStartTime"

    invoke-static {v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->access$000(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "avgWarmStartTime"

    invoke-static {v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->access$100(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "cold"

    invoke-static {v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->access$200(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "warm"

    invoke-static {v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->access$300(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v8, "launchtime"

    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    nop

    goto :goto_0

    :cond_0
    const-string v2, "ComponentInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public markColdLaunched()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdStartCounts:I

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmStartCounts:I

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;

    invoke-virtual {v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->reset()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopFreezingLaunchCount()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isColdLaunch:Z

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->isFrezzedLaunchCount:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMainProcess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTotalLaunchCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mTotalLaunchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mColdStartCounts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdStartCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mWarmStartCounts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmStartCounts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "{"

    const-string v4, "}"

    const-string v5, "_"

    if-lez v2, :cond_0

    const-string v2, " ComponentInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mComponentLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->mComponent:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->access$200(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->access$300(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_mAvgColdStartTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->access$000(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;)F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_mAvgWarmStartTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;->access$100(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$ComponentInfo;)F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mJankInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "JankInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mJankInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;->mViewName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;->mJankType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage$JankInfo;->mJankLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
