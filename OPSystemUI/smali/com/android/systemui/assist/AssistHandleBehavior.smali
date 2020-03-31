.class public final enum Lcom/android/systemui/assist/AssistHandleBehavior;
.super Ljava/lang/Enum;
.source "AssistHandleBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/assist/AssistHandleBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/assist/AssistHandleBehavior;

.field public static final enum LIKE_HOME:Lcom/android/systemui/assist/AssistHandleBehavior;

.field public static final enum OFF:Lcom/android/systemui/assist/AssistHandleBehavior;

.field public static final enum REMINDER_EXP:Lcom/android/systemui/assist/AssistHandleBehavior;

.field public static final enum TEST:Lcom/android/systemui/assist/AssistHandleBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/assist/AssistHandleBehavior;

    const/4 v1, 0x0

    const-string v2, "TEST"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/assist/AssistHandleBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/assist/AssistHandleBehavior;->TEST:Lcom/android/systemui/assist/AssistHandleBehavior;

    new-instance v0, Lcom/android/systemui/assist/AssistHandleBehavior;

    const/4 v2, 0x1

    const-string v3, "OFF"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/assist/AssistHandleBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/assist/AssistHandleBehavior;->OFF:Lcom/android/systemui/assist/AssistHandleBehavior;

    new-instance v0, Lcom/android/systemui/assist/AssistHandleBehavior;

    const/4 v3, 0x2

    const-string v4, "LIKE_HOME"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/assist/AssistHandleBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/assist/AssistHandleBehavior;->LIKE_HOME:Lcom/android/systemui/assist/AssistHandleBehavior;

    new-instance v0, Lcom/android/systemui/assist/AssistHandleBehavior;

    const/4 v4, 0x3

    const-string v5, "REMINDER_EXP"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/assist/AssistHandleBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/assist/AssistHandleBehavior;->REMINDER_EXP:Lcom/android/systemui/assist/AssistHandleBehavior;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/assist/AssistHandleBehavior;

    sget-object v5, Lcom/android/systemui/assist/AssistHandleBehavior;->TEST:Lcom/android/systemui/assist/AssistHandleBehavior;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/systemui/assist/AssistHandleBehavior;->OFF:Lcom/android/systemui/assist/AssistHandleBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/assist/AssistHandleBehavior;->LIKE_HOME:Lcom/android/systemui/assist/AssistHandleBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/assist/AssistHandleBehavior;->REMINDER_EXP:Lcom/android/systemui/assist/AssistHandleBehavior;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/assist/AssistHandleBehavior;->$VALUES:[Lcom/android/systemui/assist/AssistHandleBehavior;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/assist/AssistHandleBehavior;
    .locals 1

    const-class v0, Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistHandleBehavior;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/assist/AssistHandleBehavior;
    .locals 1

    sget-object v0, Lcom/android/systemui/assist/AssistHandleBehavior;->$VALUES:[Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-virtual {v0}, [Lcom/android/systemui/assist/AssistHandleBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/assist/AssistHandleBehavior;

    return-object v0
.end method
