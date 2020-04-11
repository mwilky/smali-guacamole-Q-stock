.class public final enum Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Param"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

.field public static final enum ALL:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

.field public static final enum ama:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

.field public static final enum bma:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

.field public static final enum cma:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    const/4 v1, 0x0

    const-string v2, "ALL"

    invoke-direct {v0, v2, v1}, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->ALL:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    const/4 v2, 0x1

    const-string v3, "NOT_FROM_NAVBAR"

    invoke-direct {v0, v3, v2}, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->ama:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    const/4 v3, 0x2

    const-string v4, "FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR"

    invoke-direct {v0, v4, v3}, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->bma:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    const/4 v4, 0x3

    const-string v5, "FROM_NAVBAR_AND_HAS_NAVIGATIONBAR"

    invoke-direct {v0, v5, v4}, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->cma:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    sget-object v5, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->ALL:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    aput-object v5, v0, v1

    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->ama:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->bma:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->cma:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->$VALUES:[Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;
    .locals 1

    const-class v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->$VALUES:[Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    invoke-virtual {v0}, [Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    return-object v0
.end method
