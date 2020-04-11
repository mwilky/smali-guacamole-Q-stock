.class public Lcom/google/android/startop/iorap/RequestId;
.super Ljava/lang/Object;
.source "RequestId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/startop/iorap/RequestId;",
            ">;"
        }
    .end annotation
.end field

.field private static mLock:Ljava/lang/Object;

.field private static mNextRequestId:J


# instance fields
.field public final requestId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/startop/iorap/RequestId;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/startop/iorap/RequestId;->mNextRequestId:J

    new-instance v0, Lcom/google/android/startop/iorap/RequestId$1;

    invoke-direct {v0}, Lcom/google/android/startop/iorap/RequestId$1;-><init>()V

    sput-object v0, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/startop/iorap/RequestId;->requestId:J

    invoke-direct {p0}, Lcom/google/android/startop/iorap/RequestId;->checkConstructorArguments()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/startop/iorap/RequestId;->requestId:J

    invoke-direct {p0}, Lcom/google/android/startop/iorap/RequestId;->checkConstructorArguments()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/startop/iorap/RequestId$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/RequestId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private checkConstructorArguments()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/startop/iorap/RequestId;->requestId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request id must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private equals(Lcom/google/android/startop/iorap/RequestId;)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/startop/iorap/RequestId;->requestId:J

    iget-wide v2, p1, Lcom/google/android/startop/iorap/RequestId;->requestId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static nextValueForSequence()Lcom/google/android/startop/iorap/RequestId;
    .locals 7

    sget-object v0, Lcom/google/android/startop/iorap/RequestId;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lcom/google/android/startop/iorap/RequestId;->mNextRequestId:J

    sget-wide v3, Lcom/google/android/startop/iorap/RequestId;->mNextRequestId:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    sput-wide v3, Lcom/google/android/startop/iorap/RequestId;->mNextRequestId:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/google/android/startop/iorap/RequestId;

    invoke-direct {v0, v1, v2}, Lcom/google/android/startop/iorap/RequestId;-><init>(J)V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/startop/iorap/RequestId;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/startop/iorap/RequestId;

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/RequestId;->equals(Lcom/google/android/startop/iorap/RequestId;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/startop/iorap/RequestId;->requestId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "{requestId: %d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/startop/iorap/RequestId;->requestId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
