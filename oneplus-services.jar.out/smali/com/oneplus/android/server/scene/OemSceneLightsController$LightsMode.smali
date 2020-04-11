.class public final enum Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneLightsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LightsMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

.field public static final enum BASE:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

.field public static final enum ZEN_MODE:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

.field public static final enum Zla:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    const/4 v1, 0x0

    const-string v2, "ALLOW_ALL"

    invoke-direct {v0, v2, v1}, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->Zla:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    const/4 v2, 0x1

    const-string v3, "ZEN_MODE"

    invoke-direct {v0, v3, v2}, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->ZEN_MODE:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    const/4 v3, 0x2

    const-string v4, "BASE"

    invoke-direct {v0, v4, v3}, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->BASE:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    sget-object v4, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->Zla:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->ZEN_MODE:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->BASE:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->$VALUES:[Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;
    .locals 1

    const-class v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->$VALUES:[Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    invoke-virtual {v0}, [Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    return-object v0
.end method
