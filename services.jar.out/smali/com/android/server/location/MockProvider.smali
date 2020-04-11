.class public Lcom/android/server/location/MockProvider;
.super Lcom/android/server/location/AbstractLocationProvider;
.source "MockProvider.java"


# instance fields
.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mLocation:Landroid/location/Location;

.field private mStatus:I

.field private mStatusUpdateTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Lcom/android/internal/location/ProviderProperties;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    iput-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, p3}, Lcom/android/server/location/MockProvider;->setProperties(Lcom/android/internal/location/ProviderProperties;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " last location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    invoke-super {p0, p1}, Lcom/android/server/location/AbstractLocationProvider;->setEnabled(Z)V

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 2

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/android/server/location/MockProvider;->reportLocation(Landroid/location/Location;)V

    :cond_1
    return-void
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 0

    return-void
.end method

.method public setStatus(ILandroid/os/Bundle;J)V
    .locals 0

    iput p1, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    iput-wide p3, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    iput-object p2, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    return-void
.end method
