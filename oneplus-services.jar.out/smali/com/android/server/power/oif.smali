.class Lcom/android/server/power/oif;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;->oxb(Ljava/util/List;)Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/oif;->this$0:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;

    check-cast p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/oif;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;)I

    move-result p0

    return p0
.end method

.method public zta(Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;)I
    .locals 2

    iget p0, p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->EI:I

    int-to-long v0, p0

    iget p0, p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;->EI:I

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method
