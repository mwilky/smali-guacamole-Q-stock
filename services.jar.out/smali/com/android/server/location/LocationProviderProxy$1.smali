.class Lcom/android/server/location/LocationProviderProxy$1;
.super Lcom/android/internal/location/ILocationProviderManager$Stub;
.source "LocationProviderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationProviderProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0}, Lcom/android/internal/location/ILocationProviderManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReportLocation(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationProviderProxy;->reportLocation(Landroid/location/Location;)V

    return-void
.end method

.method public onSetAdditionalProviderPackages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-static {v0, p1}, Lcom/android/server/location/LocationProviderProxy;->access$000(Lcom/android/server/location/LocationProviderProxy;Ljava/util/List;)V

    return-void
.end method

.method public onSetEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationProviderProxy;->setEnabled(Z)V

    return-void
.end method

.method public onSetProperties(Lcom/android/internal/location/ProviderProperties;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationProviderProxy;->setProperties(Lcom/android/internal/location/ProviderProperties;)V

    return-void
.end method
