.class public Lcom/android/server/location/GnssPositionMode;
.super Ljava/lang/Object;
.source "GnssPositionMode.java"


# instance fields
.field private final lowPowerMode:Z

.field private final minInterval:I

.field private final mode:I

.field private final preferredAccuracy:I

.field private final preferredTime:I

.field private final recurrence:I


# direct methods
.method public constructor <init>(IIIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/GnssPositionMode;->mode:I

    iput p2, p0, Lcom/android/server/location/GnssPositionMode;->recurrence:I

    iput p3, p0, Lcom/android/server/location/GnssPositionMode;->minInterval:I

    iput p4, p0, Lcom/android/server/location/GnssPositionMode;->preferredAccuracy:I

    iput p5, p0, Lcom/android/server/location/GnssPositionMode;->preferredTime:I

    iput-boolean p6, p0, Lcom/android/server/location/GnssPositionMode;->lowPowerMode:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/server/location/GnssPositionMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/server/location/GnssPositionMode;

    iget v2, p0, Lcom/android/server/location/GnssPositionMode;->mode:I

    iget v3, v0, Lcom/android/server/location/GnssPositionMode;->mode:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/location/GnssPositionMode;->recurrence:I

    iget v3, v0, Lcom/android/server/location/GnssPositionMode;->recurrence:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/location/GnssPositionMode;->minInterval:I

    iget v3, v0, Lcom/android/server/location/GnssPositionMode;->minInterval:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/location/GnssPositionMode;->preferredAccuracy:I

    iget v3, v0, Lcom/android/server/location/GnssPositionMode;->preferredAccuracy:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/location/GnssPositionMode;->preferredTime:I

    iget v3, v0, Lcom/android/server/location/GnssPositionMode;->preferredTime:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/server/location/GnssPositionMode;->lowPowerMode:Z

    iget-boolean v3, v0, Lcom/android/server/location/GnssPositionMode;->lowPowerMode:Z

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/location/GnssPositionMode;->mode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/location/GnssPositionMode;->recurrence:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/location/GnssPositionMode;->minInterval:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/location/GnssPositionMode;->preferredAccuracy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/location/GnssPositionMode;->preferredTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/location/GnssPositionMode;->lowPowerMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
