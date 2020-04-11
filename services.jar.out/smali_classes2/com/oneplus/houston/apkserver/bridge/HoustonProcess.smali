.class Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
.super Ljava/lang/Object;
.source "HoustonProcess.java"


# instance fields
.field public mAppInfo:Landroid/content/pm/ApplicationInfo;

.field public mCreateReason:Ljava/lang/String;

.field public mCreateTime:J

.field public mCurAdj:I

.field public mCurOomPid:I

.field public mCurOomString:Ljava/lang/String;

.field public mFlags:I

.field public mLastActiveTime:J

.field public mName:Ljava/lang/String;

.field public mPid:I

.field public mPss:I

.field public mRss:I

.field public mSetAdj:I

.field public mSetOomPid:I

.field public mSetOomString:Ljava/lang/String;

.field public mShowUI:Z


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mName:Ljava/lang/String;

    iput p3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mPid:I

    iput-object p4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mCreateReason:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mCreateTime:J

    iget-wide v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mCreateTime:J

    iput-wide v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mLastActiveTime:J

    return-void
.end method


# virtual methods
.method public addFlags(I)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->setFlags(II)V

    return-void
.end method

.method public clearFlags(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->setFlags(II)V

    return-void
.end method

.method public setFlags(II)V
    .locals 2

    iget v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mFlags:I

    return-void
.end method

.method public setPss(II)V
    .locals 0

    iput p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mPss:I

    iput p2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mRss:I

    return-void
.end method
