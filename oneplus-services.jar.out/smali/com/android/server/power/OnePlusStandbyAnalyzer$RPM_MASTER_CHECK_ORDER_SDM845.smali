.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RPM_MASTER_CHECK_ORDER_SDM845"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

.field public static final enum Mna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

.field public static final enum Nna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

.field public static final enum Ona:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

.field public static final enum Pna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    const/4 v1, 0x0

    const-string v2, "CDSP"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->Mna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    const/4 v2, 0x1

    const-string v3, "ADSP"

    invoke-direct {v0, v3, v2, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->Nna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    const/4 v3, 0x2

    const-string v4, "MPSS"

    invoke-direct {v0, v4, v3, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->Ona:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    const/4 v4, 0x3

    const-string v5, "SLPI"

    invoke-direct {v0, v5, v4, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->Pna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->Mna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->Nna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->Ona:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->Pna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->value:I

    return-void
.end method

.method static fromValue(I)Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;
    .locals 5

    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_CHECK_ORDER_SDM845;

    return-object v0
.end method
