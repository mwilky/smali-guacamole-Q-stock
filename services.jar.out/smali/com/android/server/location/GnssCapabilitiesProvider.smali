.class public Lcom/android/server/location/GnssCapabilitiesProvider;
.super Ljava/lang/Object;
.source "GnssCapabilitiesProvider.java"


# static fields
.field private static final DEBUG:Z

.field private static final GNSS_CAPABILITIES_SUB_HAL_MEASUREMENT_CORRECTIONS:J = 0x1e0L

.field private static final GNSS_CAPABILITIES_TOP_HAL:J = 0x1fL

.field private static final TAG:Ljava/lang/String; = "GnssCapabilitiesProvider"


# instance fields
.field private mGnssCapabilities:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GnssCapabilitiesProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssCapabilitiesProvider;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasCapability(II)Z
    .locals 1

    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getGnssCapabilities()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setSubHalMeasurementCorrectionsCapabilities(I)V
    .locals 6

    const-wide/16 v0, 0x20

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/server/location/GnssCapabilitiesProvider;->hasCapability(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    :cond_0
    const/4 v2, 0x2

    invoke-static {p1, v2}, Lcom/android/server/location/GnssCapabilitiesProvider;->hasCapability(II)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    :cond_1
    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/android/server/location/GnssCapabilitiesProvider;->hasCapability(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    const-wide/16 v4, -0x1e1

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    iget-wide v2, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    sget-boolean v2, Lcom/android/server/location/GnssCapabilitiesProvider;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "GnssCapabilitiesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSubHalMeasurementCorrectionsCapabilities, mGnssCapabilities=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    invoke-static {v4, v5}, Landroid/location/GnssCapabilities;->of(J)Landroid/location/GnssCapabilities;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setTopHalCapabilities(I)V
    .locals 6

    const-wide/16 v0, 0x0

    const/16 v2, 0x100

    invoke-static {p1, v2}, Lcom/android/server/location/GnssCapabilitiesProvider;->hasCapability(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    :cond_0
    const/16 v2, 0x200

    invoke-static {p1, v2}, Lcom/android/server/location/GnssCapabilitiesProvider;->hasCapability(II)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    :cond_1
    const/16 v2, 0x20

    invoke-static {p1, v2}, Lcom/android/server/location/GnssCapabilitiesProvider;->hasCapability(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    :cond_2
    const/16 v2, 0x40

    invoke-static {p1, v2}, Lcom/android/server/location/GnssCapabilitiesProvider;->hasCapability(II)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    :cond_3
    const/16 v2, 0x80

    invoke-static {p1, v2}, Lcom/android/server/location/GnssCapabilitiesProvider;->hasCapability(II)Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    :cond_4
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    const-wide/16 v4, -0x20

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    iget-wide v2, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    sget-boolean v2, Lcom/android/server/location/GnssCapabilitiesProvider;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "GnssCapabilitiesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTopHalCapabilities, mGnssCapabilities=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/location/GnssCapabilitiesProvider;->mGnssCapabilities:J

    invoke-static {v4, v5}, Landroid/location/GnssCapabilities;->of(J)Landroid/location/GnssCapabilities;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
