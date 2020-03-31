.class final enum Lcom/android/keyguard/CarrierTextController$StatusMode;
.super Ljava/lang/Enum;
.source "CarrierTextController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StatusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/CarrierTextController$StatusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/CarrierTextController$StatusMode;

.field public static final enum NetworkLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

.field public static final enum Normal:Lcom/android/keyguard/CarrierTextController$StatusMode;

.field public static final enum SimIoError:Lcom/android/keyguard/CarrierTextController$StatusMode;

.field public static final enum SimLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

.field public static final enum SimMissing:Lcom/android/keyguard/CarrierTextController$StatusMode;

.field public static final enum SimMissingLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

.field public static final enum SimNotReady:Lcom/android/keyguard/CarrierTextController$StatusMode;

.field public static final enum SimPermDisabled:Lcom/android/keyguard/CarrierTextController$StatusMode;

.field public static final enum SimPukLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

.field public static final enum SimUnknown:Lcom/android/keyguard/CarrierTextController$StatusMode;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/keyguard/CarrierTextController$StatusMode;

    const/4 v1, 0x0

    const-string v2, "Normal"

    invoke-direct {v0, v2, v1}, Lcom/android/keyguard/CarrierTextController$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierTextController$StatusMode;->Normal:Lcom/android/keyguard/CarrierTextController$StatusMode;

    new-instance v0, Lcom/android/keyguard/CarrierTextController$StatusMode;

    const/4 v2, 0x1

    const-string v3, "NetworkLocked"

    invoke-direct {v0, v3, v2}, Lcom/android/keyguard/CarrierTextController$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierTextController$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    new-instance v0, Lcom/android/keyguard/CarrierTextController$StatusMode;

    const/4 v3, 0x2

    const-string v4, "SimMissing"

    invoke-direct {v0, v4, v3}, Lcom/android/keyguard/CarrierTextController$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierTextController$StatusMode;

    new-instance v0, Lcom/android/keyguard/CarrierTextController$StatusMode;

    const/4 v4, 0x3

    const-string v5, "SimMissingLocked"

    invoke-direct {v0, v5, v4}, Lcom/android/keyguard/CarrierTextController$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    new-instance v0, Lcom/android/keyguard/CarrierTextController$StatusMode;

    const/4 v5, 0x4

    const-string v6, "SimPukLocked"

    invoke-direct {v0, v6, v5}, Lcom/android/keyguard/CarrierTextController$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    new-instance v0, Lcom/android/keyguard/CarrierTextController$StatusMode;

    const/4 v6, 0x5

    const-string v7, "SimLocked"

    invoke-direct {v0, v7, v6}, Lcom/android/keyguard/CarrierTextController$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    new-instance v0, Lcom/android/keyguard/CarrierTextController$StatusMode;

    const/4 v7, 0x6

    const-string v8, "SimPermDisabled"

    invoke-direct {v0, v8, v7}, Lcom/android/keyguard/CarrierTextController$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierTextController$StatusMode;

    new-instance v0, Lcom/android/keyguard/CarrierTextController$StatusMode;

    const/4 v8, 0x7

    const-string v9, "SimNotReady"

    invoke-direct {v0, v9, v8}, Lcom/android/keyguard/CarrierTextController$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierTextController$StatusMode;

    new-instance v0, Lcom/android/keyguard/CarrierTextController$StatusMode;

    const/16 v9, 0x8

    const-string v10, "SimIoError"

    invoke-direct {v0, v10, v9}, Lcom/android/keyguard/CarrierTextController$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierTextController$StatusMode;

    new-instance v0, Lcom/android/keyguard/CarrierTextController$StatusMode;

    const/16 v10, 0x9

    const-string v11, "SimUnknown"

    invoke-direct {v0, v11, v10}, Lcom/android/keyguard/CarrierTextController$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextController$StatusMode;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/keyguard/CarrierTextController$StatusMode;

    sget-object v11, Lcom/android/keyguard/CarrierTextController$StatusMode;->Normal:Lcom/android/keyguard/CarrierTextController$StatusMode;

    aput-object v11, v0, v1

    sget-object v1, Lcom/android/keyguard/CarrierTextController$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierTextController$StatusMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierTextController$StatusMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierTextController$StatusMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierTextController$StatusMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierTextController$StatusMode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/keyguard/CarrierTextController$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierTextController$StatusMode;

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/keyguard/CarrierTextController$StatusMode;->$VALUES:[Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/CarrierTextController$StatusMode;
    .locals 1

    const-class v0, Lcom/android/keyguard/CarrierTextController$StatusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/CarrierTextController$StatusMode;
    .locals 1

    sget-object v0, Lcom/android/keyguard/CarrierTextController$StatusMode;->$VALUES:[Lcom/android/keyguard/CarrierTextController$StatusMode;

    invoke-virtual {v0}, [Lcom/android/keyguard/CarrierTextController$StatusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/CarrierTextController$StatusMode;

    return-object v0
.end method
