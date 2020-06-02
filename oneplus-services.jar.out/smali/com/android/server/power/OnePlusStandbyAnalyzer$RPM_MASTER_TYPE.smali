.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RPM_MASTER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum Bna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum Cna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum Dna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum Ena:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum Fna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum Gna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum UNKNOWN:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const/4 v1, 0x0

    const-string v2, "APSS"

    invoke-direct {v0, v2, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Fna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const/4 v2, 0x1

    const-string v3, "MPSS"

    invoke-direct {v0, v3, v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Dna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const/4 v3, 0x2

    const-string v4, "ADSP"

    invoke-direct {v0, v4, v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Cna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const/4 v4, 0x3

    const-string v5, "CDSP"

    invoke-direct {v0, v5, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Bna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const/4 v5, 0x4

    const-string v6, "SPSS"

    invoke-direct {v0, v6, v5, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Gna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const/4 v6, 0x5

    const-string v7, "SLPI"

    invoke-direct {v0, v7, v6, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Ena:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const/4 v7, 0x6

    const-string v8, "UNKNOWN"

    invoke-direct {v0, v8, v7, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Fna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v8, v0, v1

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Dna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Cna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Bna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Gna:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->Ena:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->text:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .locals 5

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->text:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->UNKNOWN:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->$VALUES:[Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    return-object v0
.end method
