.class final Lcom/android/server/am/v$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "sis"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/v$you;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/u;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/v$sis;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/am/v$you;

    check-cast p2, Lcom/android/server/am/v$you;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/v$sis;->zta(Lcom/android/server/am/v$you;Lcom/android/server/am/v$you;)I

    move-result p0

    return p0
.end method

.method public zta(Lcom/android/server/am/v$you;Lcom/android/server/am/v$you;)I
    .locals 0

    iget-wide p0, p1, Lcom/android/server/am/v$you;->Gx:D

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iget-wide p1, p2, Lcom/android/server/am/v$you;->Gx:D

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p0

    return p0
.end method
