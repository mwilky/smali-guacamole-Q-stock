.class public Lcom/android/server/connectivity/FiveGServiceState;
.super Ljava/lang/Object;
.source "FiveGServiceState.java"


# instance fields
.field private mBearerAllocationStatus:I

.field private mCampOnFiveGService:Z

.field private mDcnr:I

.field private mNrConfigType:I

.field private mNrIconType:I

.field private mPlmn:I

.field private mShowFiveGService:Z

.field private mSignalLevel:I

.field private mUpperLayerInd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mBearerAllocationStatus:I

    iput v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mPlmn:I

    iput v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mUpperLayerInd:I

    iput v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mDcnr:I

    iput v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mSignalLevel:I

    iput v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mNrConfigType:I

    iput-boolean v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mShowFiveGService:Z

    iput-boolean v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mCampOnFiveGService:Z

    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/connectivity/FiveGServiceState;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mBearerAllocationStatus:I

    iget v1, p1, Lcom/android/server/connectivity/FiveGServiceState;->mBearerAllocationStatus:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mPlmn:I

    iget v1, p1, Lcom/android/server/connectivity/FiveGServiceState;->mPlmn:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mUpperLayerInd:I

    iget v1, p1, Lcom/android/server/connectivity/FiveGServiceState;->mUpperLayerInd:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mDcnr:I

    iget v1, p1, Lcom/android/server/connectivity/FiveGServiceState;->mDcnr:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mSignalLevel:I

    iget v1, p1, Lcom/android/server/connectivity/FiveGServiceState;->mSignalLevel:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mNrConfigType:I

    iget v1, p1, Lcom/android/server/connectivity/FiveGServiceState;->mNrConfigType:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mShowFiveGService:Z

    iget-boolean v1, p1, Lcom/android/server/connectivity/FiveGServiceState;->mShowFiveGService:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mCampOnFiveGService:Z

    iget-boolean v1, p1, Lcom/android/server/connectivity/FiveGServiceState;->mCampOnFiveGService:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBearerAllocationStatus()I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mBearerAllocationStatus:I

    return v0
.end method

.method public getCampOnFiveGService()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mCampOnFiveGService:Z

    return v0
.end method

.method public getDcnr()I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mDcnr:I

    return v0
.end method

.method public getNrConfigType()I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mNrConfigType:I

    return v0
.end method

.method public getNrIconType()I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mNrIconType:I

    return v0
.end method

.method public getPlmn()I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mPlmn:I

    return v0
.end method

.method public getShowFiveGService()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mShowFiveGService:Z

    return v0
.end method

.method public getSignalLevel()I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mSignalLevel:I

    return v0
.end method

.method public getUpperLayerInd()I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/FiveGServiceState;->mUpperLayerInd:I

    return v0
.end method

.method public isConnectedOnNsaMode()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mNrConfigType:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mShowFiveGService:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isConnectedOnSaMode()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mNrConfigType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mShowFiveGService:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setBearerAllocationStatus(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mBearerAllocationStatus:I

    return-void
.end method

.method public setCampOnFiveGService(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mCampOnFiveGService:Z

    return-void
.end method

.method public setDcnr(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mDcnr:I

    return-void
.end method

.method public setNrConfigType(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mNrConfigType:I

    return-void
.end method

.method public setNrIconType(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mNrIconType:I

    return-void
.end method

.method public setPlmn(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mPlmn:I

    return-void
.end method

.method public setShowFiveGService(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mShowFiveGService:Z

    return-void
.end method

.method public setSignalLevel(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mSignalLevel:I

    return-void
.end method

.method public setUpperLayerInd(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/FiveGServiceState;->mUpperLayerInd:I

    return-void
.end method
