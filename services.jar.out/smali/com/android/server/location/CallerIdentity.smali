.class public Lcom/android/server/location/CallerIdentity;
.super Ljava/lang/Object;
.source "CallerIdentity.java"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/CallerIdentity;->mUid:I

    iput p2, p0, Lcom/android/server/location/CallerIdentity;->mPid:I

    iput-object p3, p0, Lcom/android/server/location/CallerIdentity;->mPackageName:Ljava/lang/String;

    return-void
.end method
