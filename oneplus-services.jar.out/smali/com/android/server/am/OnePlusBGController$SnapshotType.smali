.class public final enum Lcom/android/server/am/OnePlusBGController$SnapshotType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SnapshotType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$SnapshotType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/OnePlusBGController$SnapshotType;

.field public static final enum Rha:Lcom/android/server/am/OnePlusBGController$SnapshotType;

.field public static final enum Sha:Lcom/android/server/am/OnePlusBGController$SnapshotType;

.field public static final enum Tha:Lcom/android/server/am/OnePlusBGController$SnapshotType;

.field public static final enum Uha:Lcom/android/server/am/OnePlusBGController$SnapshotType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/am/OnePlusBGController$SnapshotType;

    const/4 v1, 0x0

    const-string v2, "INIT_OBSERVE"

    invoke-direct {v0, v2, v1}, Lcom/android/server/am/OnePlusBGController$SnapshotType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$SnapshotType;->Rha:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$SnapshotType;

    const/4 v2, 0x1

    const-string v3, "ONESHOT"

    invoke-direct {v0, v3, v2}, Lcom/android/server/am/OnePlusBGController$SnapshotType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$SnapshotType;->Sha:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$SnapshotType;

    const/4 v3, 0x2

    const-string v4, "BUDGET_RESET"

    invoke-direct {v0, v4, v3}, Lcom/android/server/am/OnePlusBGController$SnapshotType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$SnapshotType;->Tha:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$SnapshotType;

    const/4 v4, 0x3

    const-string v5, "CALCULATE"

    invoke-direct {v0, v5, v4}, Lcom/android/server/am/OnePlusBGController$SnapshotType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$SnapshotType;->Uha:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/am/OnePlusBGController$SnapshotType;

    sget-object v5, Lcom/android/server/am/OnePlusBGController$SnapshotType;->Rha:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/server/am/OnePlusBGController$SnapshotType;->Sha:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/OnePlusBGController$SnapshotType;->Tha:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/OnePlusBGController$SnapshotType;->Uha:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/am/OnePlusBGController$SnapshotType;->$VALUES:[Lcom/android/server/am/OnePlusBGController$SnapshotType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$SnapshotType;
    .locals 1

    const-class v0, Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$SnapshotType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$SnapshotType;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController$SnapshotType;->$VALUES:[Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$SnapshotType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$SnapshotType;

    return-object v0
.end method
