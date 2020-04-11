.class public Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;
.super Ljava/lang/Object;
.source "FiveGNetWorkStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FiveGServiceState"
.end annotation


# instance fields
.field private mBearerAllocationStatus:I

.field private mCampOnFiveGService:Z

.field private mDcnr:I

.field private mLevel:I

.field private mNrConfigType:I

.field private mNrIconType:I

.field private mPlmn:I

.field private mRsrp:I

.field private mShowFiveGService:Z

.field private mSnr:I

.field private mUpperLayerInd:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mBearerAllocationStatus:I

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mPlmn:I

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mUpperLayerInd:I

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mDcnr:I

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mLevel:I

    iput v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrConfigType:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrIconType:I

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mShowFiveGService:Z

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mCampOnFiveGService:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrConfigType:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrConfigType:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mShowFiveGService:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mDcnr:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mLevel:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mRsrp:I

    return p1
.end method

.method static synthetic access$1902(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mSnr:I

    return p1
.end method

.method static synthetic access$2002(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mPlmn:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mCampOnFiveGService:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mUpperLayerInd:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrIconType:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrIconType:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mBearerAllocationStatus:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mBearerAllocationStatus:I

    return p1
.end method


# virtual methods
.method public equals(Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;)Z
    .locals 2

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mBearerAllocationStatus:I

    iget v1, p1, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mBearerAllocationStatus:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mPlmn:I

    iget v1, p1, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mPlmn:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mUpperLayerInd:I

    iget v1, p1, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mUpperLayerInd:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mDcnr:I

    iget v1, p1, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mDcnr:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mLevel:I

    iget v1, p1, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mLevel:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrConfigType:I

    iget v1, p1, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrConfigType:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mShowFiveGService:Z

    iget-boolean v1, p1, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mShowFiveGService:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mCampOnFiveGService:Z

    iget-boolean v1, p1, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mCampOnFiveGService:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrIconType:I

    iget v1, p1, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrIconType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAllocated()I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mBearerAllocationStatus:I

    return v0
.end method

.method public getCampOnFiveGService()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mCampOnFiveGService:Z

    return v0
.end method

.method getDcnr()I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mDcnr:I

    return v0
.end method

.method getNrConfigType()I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrConfigType:I

    return v0
.end method

.method getNrIconType()I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrIconType:I

    return v0
.end method

.method getPlmn()I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mPlmn:I

    return v0
.end method

.method public getRsrp()I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mRsrp:I

    return v0
.end method

.method public getShowFiveGService()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mShowFiveGService:Z

    return v0
.end method

.method public getSignalLevel()I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mLevel:I

    return v0
.end method

.method getUpperLayerInd()I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mUpperLayerInd:I

    return v0
.end method

.method public isConnectedOnNsaMode()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrConfigType:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mShowFiveGService:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isConnectedOnSaMode()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mNrConfigType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/simstatus/FiveGNetWorkStatus$FiveGServiceState;->mShowFiveGService:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
