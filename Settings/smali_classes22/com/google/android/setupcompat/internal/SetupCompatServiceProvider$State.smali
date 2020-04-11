.class final enum Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;
.super Ljava/lang/Enum;
.source "SetupCompatServiceProvider.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum BINDING:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum BIND_FAILED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum DISCONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum NOT_STARTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum REBIND_REQUIRED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum SERVICE_NOT_USABLE:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v1, 0x0

    const-string v2, "NOT_STARTED"

    invoke-direct {v0, v2, v1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->NOT_STARTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v2, 0x1

    const-string v3, "BIND_FAILED"

    invoke-direct {v0, v3, v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BIND_FAILED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v3, 0x2

    const-string v4, "BINDING"

    invoke-direct {v0, v4, v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BINDING:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v4, 0x3

    const-string v5, "CONNECTED"

    invoke-direct {v0, v5, v4}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v5, 0x4

    const-string v6, "DISCONNECTED"

    invoke-direct {v0, v6, v5}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->DISCONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v6, 0x5

    const-string v7, "SERVICE_NOT_USABLE"

    invoke-direct {v0, v7, v6}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->SERVICE_NOT_USABLE:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v7, 0x6

    const-string v8, "REBIND_REQUIRED"

    invoke-direct {v0, v8, v7}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->REBIND_REQUIRED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    sget-object v8, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->NOT_STARTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v8, v0, v1

    sget-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BIND_FAILED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BINDING:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->DISCONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->SERVICE_NOT_USABLE:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->REBIND_REQUIRED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->$VALUES:[Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;
    .locals 1

    const-class v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;
    .locals 1

    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->$VALUES:[Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    invoke-virtual {v0}, [Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    return-object v0
.end method
