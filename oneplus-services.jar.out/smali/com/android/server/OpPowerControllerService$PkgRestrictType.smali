.class public final enum Lcom/android/server/OpPowerControllerService$PkgRestrictType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpPowerControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PkgRestrictType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OpPowerControllerService$PkgRestrictType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OpPowerControllerService$PkgRestrictType;

.field public static final enum DISABLE:Lcom/android/server/OpPowerControllerService$PkgRestrictType;

.field public static final enum ENABLE:Lcom/android/server/OpPowerControllerService$PkgRestrictType;

.field public static final enum NA:Lcom/android/server/OpPowerControllerService$PkgRestrictType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    const/4 v1, 0x0

    const-string v2, "NA"

    invoke-direct {v0, v2, v1}, Lcom/android/server/OpPowerControllerService$PkgRestrictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;->NA:Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    new-instance v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    const/4 v2, 0x1

    const-string v3, "ENABLE"

    invoke-direct {v0, v3, v2}, Lcom/android/server/OpPowerControllerService$PkgRestrictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;->ENABLE:Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    new-instance v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    const/4 v3, 0x2

    const-string v4, "DISABLE"

    invoke-direct {v0, v4, v3}, Lcom/android/server/OpPowerControllerService$PkgRestrictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;->DISABLE:Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    sget-object v4, Lcom/android/server/OpPowerControllerService$PkgRestrictType;->NA:Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/server/OpPowerControllerService$PkgRestrictType;->ENABLE:Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OpPowerControllerService$PkgRestrictType;->DISABLE:Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;->$VALUES:[Lcom/android/server/OpPowerControllerService$PkgRestrictType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OpPowerControllerService$PkgRestrictType;
    .locals 1

    const-class v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/OpPowerControllerService$PkgRestrictType;
    .locals 1

    sget-object v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;->$VALUES:[Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    invoke-virtual {v0}, [Lcom/android/server/OpPowerControllerService$PkgRestrictType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    return-object v0
.end method
