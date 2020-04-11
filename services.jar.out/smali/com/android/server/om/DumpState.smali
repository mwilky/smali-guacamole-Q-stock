.class public final Lcom/android/server/om/DumpState;
.super Ljava/lang/Object;
.source "DumpState.java"


# instance fields
.field private mField:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mUserId:I

.field private mVerbose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/om/DumpState;->mUserId:I

    return-void
.end method


# virtual methods
.method public getField()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/DumpState;->mField:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/om/DumpState;->mUserId:I

    return v0
.end method

.method public isVerbose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/om/DumpState;->mVerbose:Z

    return v0
.end method

.method public setField(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/om/DumpState;->mField:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/om/DumpState;->mUserId:I

    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/om/DumpState;->mVerbose:Z

    return-void
.end method
