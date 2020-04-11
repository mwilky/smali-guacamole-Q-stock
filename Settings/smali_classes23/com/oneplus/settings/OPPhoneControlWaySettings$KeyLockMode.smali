.class public final enum Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;
.super Ljava/lang/Enum;
.source "OPPhoneControlWaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPPhoneControlWaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyLockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

.field public static final enum BACK_SWITCH:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

.field public static final enum BASE:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

.field public static final enum FOOT:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

.field public static final enum HOME:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

.field public static final enum NORMAL:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

.field public static final enum POWER:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

.field public static final enum POWER_HOME:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;->NORMAL:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    new-instance v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    const/4 v2, 0x1

    const-string v3, "POWER"

    invoke-direct {v0, v3, v2}, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;->POWER:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    new-instance v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    const/4 v3, 0x2

    const-string v4, "POWER_HOME"

    invoke-direct {v0, v4, v3}, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;->POWER_HOME:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    new-instance v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    const/4 v4, 0x3

    const-string v5, "HOME"

    invoke-direct {v0, v5, v4}, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;->HOME:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    new-instance v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    const/4 v5, 0x4

    const-string v6, "FOOT"

    invoke-direct {v0, v6, v5}, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;->FOOT:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    new-instance v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    const/4 v6, 0x5

    const-string v7, "BACK_SWITCH"

    invoke-direct {v0, v7, v6}, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;->BACK_SWITCH:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    new-instance v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    const/4 v7, 0x6

    const-string v8, "BASE"

    invoke-direct {v0, v8, v7}, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;->BASE:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    sget-object v8, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;->NORMAL:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    aput-object v8, v0, v1

    sget-object v1, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;->POWER:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;->POWER_HOME:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;->HOME:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;->FOOT:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;->BACK_SWITCH:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;->BASE:Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;->$VALUES:[Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;
    .locals 1

    const-class v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;->$VALUES:[Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    invoke-virtual {v0}, [Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;

    return-object v0
.end method
