.class public final enum Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyLockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

.field public static final enum BASE:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

.field public static final enum FOOT:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

.field public static final enum HOME:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

.field public static final enum NORMAL:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

.field public static final enum POWER:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

.field public static final enum tla:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

.field public static final enum ula:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    const/4 v2, 0x1

    const-string v3, "POWER"

    invoke-direct {v0, v3, v2}, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->POWER:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    const/4 v3, 0x2

    const-string v4, "POWER_HOME"

    invoke-direct {v0, v4, v3}, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->tla:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    const/4 v4, 0x3

    const-string v5, "HOME"

    invoke-direct {v0, v5, v4}, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->HOME:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    const/4 v5, 0x4

    const-string v6, "FOOT"

    invoke-direct {v0, v6, v5}, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->FOOT:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    const/4 v6, 0x5

    const-string v7, "BACK_SWITCH"

    invoke-direct {v0, v7, v6}, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->ula:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    const/4 v7, 0x6

    const-string v8, "BASE"

    invoke-direct {v0, v8, v7}, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->BASE:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    sget-object v8, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    aput-object v8, v0, v1

    sget-object v1, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->POWER:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->tla:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->HOME:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->FOOT:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->ula:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->BASE:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->$VALUES:[Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;
    .locals 1

    const-class v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    return-object p0
.end method

.method public static values()[Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;
    .locals 1

    sget-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->$VALUES:[Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    invoke-virtual {v0}, [Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    return-object v0
.end method
