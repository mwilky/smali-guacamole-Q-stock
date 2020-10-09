.class public final enum Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyLockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

.field public static final enum BASE:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

.field public static final enum FOOT:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

.field public static final enum HOME:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

.field public static final enum NORMAL:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

.field public static final enum POWER:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

.field public static final enum tla:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

.field public static final enum ula:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->NORMAL:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    const/4 v2, 0x1

    const-string v3, "POWER"

    invoke-direct {v0, v3, v2}, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->POWER:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    const/4 v3, 0x2

    const-string v4, "POWER_HOME"

    invoke-direct {v0, v4, v3}, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->tla:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    const/4 v4, 0x3

    const-string v5, "HOME"

    invoke-direct {v0, v5, v4}, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->HOME:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    const/4 v5, 0x4

    const-string v6, "FOOT"

    invoke-direct {v0, v6, v5}, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->FOOT:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    const/4 v6, 0x5

    const-string v7, "BACK_SWITCH"

    invoke-direct {v0, v7, v6}, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->ula:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    const/4 v7, 0x6

    const-string v8, "BASE"

    invoke-direct {v0, v8, v7}, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->BASE:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    sget-object v8, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->NORMAL:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    aput-object v8, v0, v1

    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->POWER:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->tla:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->HOME:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->FOOT:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->ula:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->BASE:Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->$VALUES:[Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;
    .locals 1

    const-class v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->$VALUES:[Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    invoke-virtual {v0}, [Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/android/server/scene/OemSceneButtonController$KeyLockMode;

    return-object v0
.end method
