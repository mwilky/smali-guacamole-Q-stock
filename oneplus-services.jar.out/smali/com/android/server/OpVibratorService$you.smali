.class public Lcom/android/server/OpVibratorService$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpVibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "you"
.end annotation


# instance fields
.field final mEffect:I

.field final mMaxDuration:I

.field final mMinDuration:I

.field final synthetic this$0:Lcom/android/server/OpVibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/OpVibratorService;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpVibratorService$you;->this$0:Lcom/android/server/OpVibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/OpVibratorService$you;->mMinDuration:I

    iput p3, p0, Lcom/android/server/OpVibratorService$you;->mMaxDuration:I

    iput p4, p0, Lcom/android/server/OpVibratorService$you;->mEffect:I

    return-void
.end method


# virtual methods
.method public W()I
    .locals 0

    iget p0, p0, Lcom/android/server/OpVibratorService$you;->mEffect:I

    return p0
.end method

.method X()I
    .locals 0

    iget p0, p0, Lcom/android/server/OpVibratorService$you;->mMaxDuration:I

    return p0
.end method

.method Y()I
    .locals 0

    iget p0, p0, Lcom/android/server/OpVibratorService$you;->mMinDuration:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ minDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OpVibratorService$you;->mMinDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OpVibratorService$you;->mMaxDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }, effect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/OpVibratorService$you;->mEffect:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " } "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
