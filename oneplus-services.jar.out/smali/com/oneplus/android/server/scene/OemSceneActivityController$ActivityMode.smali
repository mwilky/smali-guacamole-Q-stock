.class public final enum Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

.field public static final enum Aoa:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

.field public static final enum BASE:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

.field public static final enum zoa:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    const/4 v1, 0x0

    const-string v2, "ALLOW_ALL"

    invoke-direct {v0, v2, v1}, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->zoa:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    const/4 v2, 0x1

    const-string v3, "ALLOW_WHITE"

    invoke-direct {v0, v3, v2}, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->Aoa:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    const/4 v3, 0x2

    const-string v4, "BASE"

    invoke-direct {v0, v4, v3}, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->BASE:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    sget-object v4, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->zoa:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->Aoa:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->BASE:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->$VALUES:[Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;
    .locals 1

    const-class v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->$VALUES:[Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    invoke-virtual {v0}, [Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    return-object v0
.end method
