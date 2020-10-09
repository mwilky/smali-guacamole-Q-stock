.class public Lcom/oneplus/android/server/context/OneplusContextStubImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/context/IOneplusContextStub;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OneplusContextStubImpl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private nca:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_windowmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v3, Lcom/android/server/wm/OpWindowManagerService;

    invoke-direct {v3}, Lcom/android/server/wm/OpWindowManagerService;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xf

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_permissioncontrolservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;

    invoke-direct {v5}, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-array v2, v0, [I

    const/16 v4, 0x9a

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_consumption_statistics:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {v5}, Lcom/android/server/wm/OpPowerConsumpStats;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-array v2, v0, [I

    const/16 v4, 0x9c

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_colordisplay:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/display/OpColorDisplayService;

    invoke-direct {v5, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-array v2, v0, [I

    const/16 v4, 0x15

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_reserve_app:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/pm/gck;

    invoke-direct {v5}, Lcom/android/server/pm/gck;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-array v2, v0, [I

    const/16 v4, 0x16

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_openid:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/openid/sis;

    invoke-direct {v5, p1}, Lcom/oneplus/android/server/openid/sis;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-array v2, v0, [I

    const/16 v4, 0xfc

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_heytap_business:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/heytapbusiness/sis;

    invoke-direct {v5, p1}, Lcom/oneplus/android/server/heytapbusiness/sis;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-array v2, v0, [I

    const/16 v4, 0x6e

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_motor:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/vdb;

    invoke-direct {v5, p1}, Lcom/oneplus/android/server/vdb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-array v2, v0, [I

    const/16 v4, 0x9b

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/OpPowerControllerService;

    iget-object v6, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/OpPowerControllerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-array v2, v0, [I

    const/16 v4, 0xa0

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_opservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/server/OnePlusService;

    invoke-direct {v5}, Lcom/oneplus/server/OnePlusService;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v0, [I

    const/16 v4, 0x64

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_highpowerdetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/zta/you/zta;

    invoke-direct {v5}, Lcom/oneplus/android/server/zta/you/zta;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    new-array v2, v0, [I

    const/16 v4, 0x9e

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_exservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/OnePlusExService;

    invoke-direct {v5}, Lcom/android/server/OnePlusExService;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v0, [I

    const/16 v4, 0x9f

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_standbydetect:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/you/zta;

    invoke-direct {v5}, Lcom/oneplus/android/server/you/zta;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystatsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/am/ibl;

    invoke-direct {v5}, Lcom/android/server/am/ibl;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batteryoutlier:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/am/wtn;

    invoke-direct {v5}, Lcom/android/server/am/wtn;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_param_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/ParamService;

    invoke-direct {v5}, Lcom/android/server/ParamService;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v0, [I

    const/16 v4, 0x2e

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-nez v2, :cond_a

    new-array v2, v0, [I

    const/16 v4, 0x76

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_vibratorservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/OpVibratorService;

    invoke-direct {v5}, Lcom/android/server/OpVibratorService;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_phonewindowmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-direct {v5}, Lcom/android/server/policy/OpPhoneWindowManager;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alertslider_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/alertslider/tsu;

    invoke-direct {v5}, Lcom/oneplus/android/server/alertslider/tsu;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/power/ugm;

    invoke-direct {v5}, Lcom/android/server/power/ugm;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v0, [I

    const/16 v4, 0xa1

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_fast_charge:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/irq;

    invoke-direct {v5}, Lcom/android/server/irq;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    new-array v2, v0, [I

    const/16 v4, 0x71

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_process_resident:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/wm/obl;

    invoke-direct {v5}, Lcom/android/server/wm/obl;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    new-array v2, v0, [I

    const/16 v4, 0x5c

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_aggressive_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/obl;

    invoke-direct {v5}, Lcom/android/server/obl;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    new-array v2, v0, [I

    const/16 v4, 0x5d

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    iget-object v5, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/i;->getInstance(Landroid/content/Context;)Lcom/android/server/i;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    new-array v2, v0, [I

    const/16 v4, 0xc3

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_process_adj_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/am/t;

    invoke-direct {v5}, Lcom/android/server/am/t;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_nfc:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/OnePlusNfcService;

    invoke-direct {v5, p1}, Lcom/android/server/OnePlusNfcService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v0, [I

    const/16 v4, 0xad

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_wifi:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/oneplus/android/server/wifi/OpWifiService;

    invoke-direct {v5}, Lcom/oneplus/android/server/wifi/OpWifiService;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    new-array v2, v0, [I

    const/16 v4, 0xb3

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_oputil:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/OnePlusUtil;

    invoke-direct {v5}, Lcom/android/server/OnePlusUtil;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    new-array v2, v0, [I

    const/16 v4, 0x1a

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_appbootmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/am/o;

    invoke-direct {v5}, Lcom/android/server/am/o;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    new-array v2, v0, [I

    const/16 v4, 0x1d

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_applocker:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/wm/OpAppLocker;

    invoke-direct {v5}, Lcom/android/server/wm/OpAppLocker;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    new-array v2, v0, [I

    const/16 v4, 0xb1

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_perf_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManager;->getInstance()Lcom/android/server/wm/OnePlusPerfManager;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    new-array v2, v0, [I

    const/16 v4, 0x20

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_quickpay:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/policy/OpQuickPay;

    invoke-direct {v5}, Lcom/android/server/policy/OpQuickPay;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_activitystarter:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/wm/OpActivityStarter;

    invoke-direct {v5}, Lcom/android/server/wm/OpActivityStarter;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v2, v0, [I

    const/16 v4, 0x22

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_launcherappsservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/pm/OpLauncherAppsService;

    invoke-direct {v5}, Lcom/android/server/pm/OpLauncherAppsService;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    new-array v2, v0, [I

    const/16 v4, 0xb2

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v4, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_restartprocessmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v5, Lcom/android/server/am/v;

    invoke-direct {v5}, Lcom/android/server/am/v;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    new-array v2, v0, [I

    aput v1, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_19

    new-array v1, v0, [I

    const/16 v2, 0x29

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screencompat:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/OpScreenCompat;

    invoke-direct {v4, p1}, Lcom/android/server/wm/OpScreenCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    new-array v1, v0, [I

    const/16 v2, 0xb4

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_uididle:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/sis/you;

    invoke-direct {v4, p1}, Lcom/oneplus/android/server/sis/you;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    new-array v1, v0, [I

    const/16 v2, 0xb5

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenshotimprovement:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/policy/cgv;

    invoke-direct {v4, p1}, Lcom/android/server/policy/cgv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    new-array v1, v0, [I

    const/16 v2, 0xb6

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_gps_notification:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/qbh;

    invoke-direct {v4, p1}, Lcom/android/server/qbh;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    new-array v1, v0, [I

    const/16 v2, 0xb7

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_zenmode:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/scene/f;

    invoke-direct {v4}, Lcom/oneplus/android/server/scene/f;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    new-array v1, v0, [I

    const/16 v2, 0x80

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smartboost:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/zta/tsu;

    invoke-direct {v4}, Lcom/oneplus/android/server/zta/tsu;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_displaypowercontroller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {}, Lcom/android/server/backlight/OpBacklightManager;->getInstance()Lcom/android/server/backlight/OpBacklightManager;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v2, 0x1b

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_memorytracker:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {p1}, Lcom/android/server/am/OnePlusMemoryTracker;->getInstance(Landroid/content/Context;)Lcom/android/server/am/OnePlusMemoryTracker;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    new-array v1, v0, [I

    const/16 v2, 0x1c

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_apprecord:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    new-array v1, v0, [I

    const/16 v2, 0x5e

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_alignment:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/cjf;

    invoke-direct {v4}, Lcom/android/server/cjf;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    new-array v1, v0, [I

    const/16 v2, 0xb8

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_networkpolicymanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/net/OpNetworkPolicy;

    invoke-direct {v4}, Lcom/android/server/net/OpNetworkPolicy;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    new-array v1, v0, [I

    const/16 v2, 0x75

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/OpScreenModeService;

    invoke-direct {v4}, Lcom/android/server/wm/OpScreenModeService;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    new-array v1, v0, [I

    const/16 v2, 0xc1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_dexoptmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {}, Lcom/android/server/pm/you;->getInstance()Lcom/android/server/pm/you;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_powerkey_launch:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/policy/oxb;

    invoke-direct {v4}, Lcom/android/server/policy/oxb;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_secrecy:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/secrecy/SecrecyService;

    iget-object v5, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/secrecy/SecrecyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_engineer:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/engineer/OneplusEngineerService;

    iget-object v5, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/engineer/OneplusEngineerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v2, 0xc2

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_skipdoframe:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/am/l;

    invoke-direct {v4, p1}, Lcom/android/server/am/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    new-array v1, v0, [I

    const/16 v2, 0xc4

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenrotationimprovement:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/a;

    invoke-direct {v4, p1}, Lcom/android/server/wm/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    new-array v1, v0, [I

    const/16 v2, 0xc6

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_activitytaskmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/ywr;

    invoke-direct {v4}, Lcom/android/server/wm/ywr;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_displaycontent:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/qbh;

    invoke-direct {v4}, Lcom/android/server/wm/qbh;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/ear;

    invoke-direct {v4}, Lcom/android/server/ear;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v2, 0xc5

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_jankmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/zta/sis/you;

    invoke-direct {v4, p1}, Lcom/oneplus/android/server/zta/sis/you;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    new-array v1, v0, [I

    aput v3, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_china_gms:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/pm/sis;

    invoke-direct {v4}, Lcom/android/server/pm/sis;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    new-array v1, v0, [I

    aput v3, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_package_manager_helper:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/pm/wtn;

    invoke-direct {v4}, Lcom/android/server/pm/wtn;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    new-array v1, v0, [I

    const/16 v2, 0xc7

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_embryo_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {}, Lcom/android/server/am/oif;->getInstance()Lcom/android/server/am/IEmbryoManager;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    new-array v1, v0, [I

    const/16 v2, 0x85

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_connor:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/zta/zta/zta;

    invoke-direct {v4}, Lcom/oneplus/android/server/zta/zta/zta;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    new-array v1, v0, [I

    const/16 v2, 0x1f

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_scenemode:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/wm/dma;

    invoke-direct {v4}, Lcom/android/server/wm/dma;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    new-array v1, v0, [I

    const/16 v2, 0x2a

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_quickreply:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {p1}, Lcom/android/server/wm/vju;->getInstance(Landroid/content/Context;)Lcom/android/server/wm/vju;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_carkit_identification:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/zta;

    invoke-direct {v4}, Lcom/oneplus/android/server/zta;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [I

    const/16 v2, 0xd6

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_verificationcode_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/inputmethod/OpVerificationCodeController;

    invoke-direct {v4}, Lcom/android/server/inputmethod/OpVerificationCodeController;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    new-array v1, v0, [I

    const/16 v2, 0x5f

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_background_freeze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/am/q;

    invoke-direct {v4}, Lcom/android/server/am/q;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    new-array v1, v0, [I

    const/16 v2, 0xd2

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_opsla:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/sis/sis;

    invoke-direct {v4}, Lcom/android/server/sis/sis;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_scene_call_block:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;

    invoke-direct {v4}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_longshot_manager_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {p1}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->getInstance(Landroid/content/Context;)Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_compatibility_helper:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/pm/tsu;

    invoke-direct {v4}, Lcom/android/server/pm/tsu;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_op_ads:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/OpAppSwitchManagerServiceHelper;

    invoke-direct {v4}, Lcom/android/server/OpAppSwitchManagerServiceHelper;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_game_shake:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    iget-object v4, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/am/b;->getInstance(Landroid/content/Context;)Lcom/android/server/am/b;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_op_instant_app:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/vdw;

    invoke-direct {v4}, Lcom/android/server/vdw;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_antiburn_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v4, Lcom/android/server/am/n;

    invoke-direct {v4}, Lcom/android/server/am/n;-><init>()V

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [I

    const/16 v1, 0x100

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_batterystats_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v2, Lcom/android/server/am/s;

    invoke-direct {v2, p1}, Lcom/android/server/am/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    sget-boolean p1, Lcom/oneplus/theme/OpFontHelperInjector;->sFeatureEnable:Z

    if-eqz p1, :cond_34

    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object p1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_font_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v0, Lcom/oneplus/server/theme/OnePlusFontController;

    invoke-direct {v0}, Lcom/oneplus/server/theme/OnePlusFontController;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    return-void
.end method


# virtual methods
.method public bootComplete()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OneplusContextStubImpl"

    const-string v1, "bootComplete()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/zta/sis;->getInstance()Lcom/oneplus/android/server/zta/sis;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/zta/sis;->initEnv(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OpPowerControllerService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/OpPowerControllerService;->init()V

    invoke-virtual {v0}, Lcom/android/server/OpPowerControllerService;->bootCompleted()V

    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x5d

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/i;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/i;->onBootComplete()V

    :cond_2
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/am/ivd;->init(Landroid/content/Context;)Lcom/android/server/am/ivd;

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/pm/InstalledAppLoggingService;->schedule(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_engineer:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/engineer/OneplusEngineerService;

    if-eqz v1, :cond_3

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/server/engineer/OneplusEngineerService;->onBootPhase(I)V

    const/16 v2, 0x1e0

    invoke-virtual {v1, v2}, Lcom/android/server/engineer/OneplusEngineerService;->onBootPhase(I)V

    :cond_3
    new-array v1, v0, [I

    const/16 v2, 0x16

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_openid:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/openid/sis;

    invoke-virtual {v1}, Lcom/oneplus/android/server/openid/sis;->onBootComplete()V

    :cond_4
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_exservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusExService;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/server/OnePlusExService;->bootComplete()V

    :cond_5
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_windowmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/OpWindowManagerService;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/OpWindowManagerService;->bootComplete(Landroid/content/Context;)V

    :cond_6
    new-array v1, v0, [I

    const/16 v2, 0x2a

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_quickreply:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/vju;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/server/wm/vju;->bootComplete()V

    :cond_7
    new-array v0, v0, [I

    aput v3, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_apperror_dialog:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v1, Lcom/android/server/am/p;

    invoke-direct {v1}, Lcom/android/server/am/p;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method public queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public shutdown()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OneplusContextStubImpl"

    const-string v1, "shutdown()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x9b

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/OpPowerControllerService;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/OpPowerControllerService;->shutdown()V

    :cond_1
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 4

    sget-boolean p1, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->DEBUG:Z

    const-string v0, "OneplusContextStubImpl"

    if-eqz p1, :cond_0

    const-string p1, "start"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_windowmanagerservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/OpWindowManagerService;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/OpWindowManagerService;->publish(Landroid/content/Context;)V

    :cond_1
    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/OpPowerControllerService;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/OpPowerControllerService;->publish()V

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_opservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/server/OnePlusService;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/oneplus/server/OnePlusService;->publish(Landroid/content/Context;)V

    :cond_3
    const/4 p1, 0x1

    new-array v1, p1, [I

    const/16 v2, 0xf

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_permissioncontrolservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/permissioncontrol/OPPermissionControlService;->publish(Landroid/content/Context;)V

    :cond_4
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_exservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusExService;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusExService;->publish(Landroid/content/Context;)V

    :cond_5
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_param_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ParamService;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/ParamService;->publish(Landroid/content/Context;)V

    :cond_6
    new-array v1, p1, [I

    const/16 v2, 0x9c

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_colordisplay:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/display/OpColorDisplayService;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->publish(Landroid/content/Context;)V

    :cond_7
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_nfc:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusNfcService;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusNfcService;->publish(Landroid/content/Context;)V

    :cond_8
    new-array v1, p1, [I

    const/16 v2, 0xad

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_wifi:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/wifi/OpWifiService;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/wifi/OpWifiService;->publish(Landroid/content/Context;)V

    :cond_9
    new-array p1, p1, [I

    const/16 v1, 0xfc

    aput v1, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_heytap_business:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/android/server/heytapbusiness/sis;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/oneplus/android/server/heytapbusiness/sis;->onStart()V

    :cond_a
    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_secrecy:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/secrecy/SecrecyService;

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/server/secrecy/SecrecyService;->publish(Landroid/content/Context;)V

    :cond_b
    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_engineer:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/engineer/OneplusEngineerService;

    if-eqz p1, :cond_c

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/server/engineer/OneplusEngineerService;->publish(Landroid/content/Context;)V

    :cond_c
    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_scene_call_block:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->publish()V

    :cond_d
    iget-object p1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_longshot_manager_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;

    if-eqz p1, :cond_e

    const-string v1, "Longshot publishing"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/oneplus/server/longshot/OpLongScreenshotManagerService;->publish(Landroid/content/Context;)V

    :cond_e
    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object p1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_bluetooth_service_information:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    new-instance v0, Lcom/oneplus/android/server/tsu;

    invoke-direct {v0}, Lcom/oneplus/android/server/tsu;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public systemReady()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OneplusContextStubImpl"

    const-string v1, "systemReady()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppRecordManagerService;->initEnv(Landroid/content/Context;)V

    :cond_1
    new-array v1, v0, [I

    const/16 v2, 0x6e

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_motor:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/vdb;

    invoke-virtual {v1}, Lcom/oneplus/android/server/vdb;->systemReady()V

    :cond_2
    new-array v1, v0, [I

    const/16 v2, 0x16

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_openid:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/openid/sis;

    invoke-virtual {v1}, Lcom/oneplus/android/server/openid/sis;->onSystemReady()V

    :cond_3
    new-array v1, v0, [I

    const/16 v2, 0xfc

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_heytap_business:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/heytapbusiness/sis;

    invoke-virtual {v1}, Lcom/oneplus/android/server/heytapbusiness/sis;->onSystemReady()V

    :cond_4
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_opservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/server/OnePlusService;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/oneplus/server/OnePlusService;->systemReady()V

    :cond_5
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_exservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusExService;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/server/OnePlusExService;->systemRunning()V

    :cond_6
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_nfc:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusNfcService;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/server/OnePlusNfcService;->systemRunning()V

    :cond_7
    new-array v1, v0, [I

    const/16 v2, 0x9c

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_colordisplay:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/display/OpColorDisplayService;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->systemReady()V

    :cond_8
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_restartprocessmanager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/v;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/am/v;->systemReady(Landroid/content/Context;)V

    :cond_9
    new-array v1, v0, [I

    const/16 v2, 0xb6

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_gps_notification:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/qbh;

    invoke-virtual {v1}, Lcom/android/server/qbh;->systemReady()V

    :cond_a
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_secrecy:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/secrecy/SecrecyService;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/android/server/secrecy/SecrecyService;->systemReady()V

    :cond_b
    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_engineer:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/engineer/OneplusEngineerService;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/server/engineer/OneplusEngineerService;->systemReady()V

    :cond_c
    new-array v1, v0, [I

    const/16 v2, 0x80

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smartboost:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/zta/tsu;

    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/zta/tsu;->initOnlineConfig(Landroid/content/Context;)V

    :cond_d
    invoke-static {}, Lcom/android/server/backlight/OpBacklightManager;->getInstance()Lcom/android/server/backlight/OpBacklightManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/backlight/OpBacklightManager;->initOnlineConfig(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/am/b;->getInstance(Landroid/content/Context;)Lcom/android/server/am/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/b;->initOnlineConfig()V

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->nca:Landroid/util/ArrayMap;

    sget-object v2, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_scene_call_block:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockService;->systemReady(Landroid/content/Context;)V

    :cond_e
    new-array v1, v0, [I

    const/16 v2, 0x105

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->initOnlineConfig(Landroid/content/Context;)V

    :cond_f
    new-array v1, v0, [I

    const/16 v2, 0x54

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/server/sis;->systemReady(Landroid/content/Context;)V

    :cond_10
    new-array v0, v0, [I

    const/16 v1, 0xb1

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManager;->getInstance()Lcom/android/server/wm/OnePlusPerfManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/OnePlusPerfManager;->initOnlineConfig(Landroid/content/Context;)V

    :cond_11
    sget-boolean v0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->IN_USING:Z

    if-eqz v0, :cond_12

    :try_start_0
    new-instance v0, Lcom/oneplus/android/server/scene/kth;

    invoke-direct {v0, v3, v3}, Lcom/oneplus/android/server/scene/kth;-><init>(II)V

    iget-object v1, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->setHapticEffect(Lcom/oneplus/android/server/scene/kth;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/oneplus/android/server/context/OneplusContextStubImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->disableFeatureWhenException()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_0
    return-void
.end method
