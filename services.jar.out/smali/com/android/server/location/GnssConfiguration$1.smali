.class Lcom/android/server/location/GnssConfiguration$1;
.super Ljava/util/HashMap;
.source "GnssConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssConfiguration;->reloadGpsProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/android/server/location/GnssConfiguration$SetCarrierProperty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssConfiguration;

.field final synthetic val$gnssConfigurationIfaceVersion:Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssConfiguration;Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/location/GnssConfiguration$1;->this$0:Lcom/android/server/location/GnssConfiguration;

    iput-object p2, p0, Lcom/android/server/location/GnssConfiguration$1;->val$gnssConfigurationIfaceVersion:Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object p2, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$9cfNUAWKKutp5KSqhvHSGJNe0ao;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$9cfNUAWKKutp5KSqhvHSGJNe0ao;

    const-string v0, "SUPL_VER"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$384RrX20Mx6OJsRiqsQcSxYdcZc;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$384RrX20Mx6OJsRiqsQcSxYdcZc;

    const-string v0, "SUPL_MODE"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/server/location/GnssConfiguration$1;->val$gnssConfigurationIfaceVersion:Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    invoke-static {p2}, Lcom/android/server/location/GnssConfiguration;->access$000(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$sKzdHBM7V7DxdhcWx1u8hipJYFo;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$sKzdHBM7V7DxdhcWx1u8hipJYFo;

    const-string v0, "SUPL_ES"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p2, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$5tBf0Ru8L994vqKbXOeOBj2A-CA;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$5tBf0Ru8L994vqKbXOeOBj2A-CA;

    const-string v0, "LPP_PROFILE"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$aaV8BigB_1Oil1H82EHUb0zvWPo;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$aaV8BigB_1Oil1H82EHUb0zvWPo;

    const-string v0, "A_GLONASS_POS_PROTOCOL_SELECT"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$8lp2ukEzg_Agf73p3ka-dqhWUpE;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$8lp2ukEzg_Agf73p3ka-dqhWUpE;

    const-string v0, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v0, 0x0

    const/16 v1, 0xfa

    aput v1, p2, v0

    invoke-static {p2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p2

    const-string v0, "GPS_LOCK"

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$rRu0NBMB8DgPt3DY5__6u_WNl7A;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$rRu0NBMB8DgPt3DY5__6u_WNl7A;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/server/location/GnssConfiguration$1;->val$gnssConfigurationIfaceVersion:Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;

    invoke-static {p2}, Lcom/android/server/location/GnssConfiguration;->access$100(Lcom/android/server/location/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$PZrQoifKfk74FWJJM3A3tbAk7FE;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssConfiguration$1$PZrQoifKfk74FWJJM3A3tbAk7FE;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic lambda$new$0(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$800(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$1(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$700(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$2(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$600(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$3(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$500(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$4(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$400(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$5(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$300(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$6(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$200(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$7(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssConfiguration;->access$200(I)Z

    move-result v0

    return v0
.end method
