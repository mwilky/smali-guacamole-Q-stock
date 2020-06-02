.class public Lcom/android/server/backlight/zta$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backlight/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zta"
.end annotation


# instance fields
.field private Az:I

.field private Bz:I

.field private Zf:Ljava/lang/String;

.field private xz:D

.field private yz:D

.field private zz:I


# direct methods
.method public constructor <init>(Ljava/lang/String;DDIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/backlight/zta$zta;->Zf:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backlight/zta$zta;->zz:I

    iput v0, p0, Lcom/android/server/backlight/zta$zta;->Az:I

    iput v0, p0, Lcom/android/server/backlight/zta$zta;->Bz:I

    iput-object p1, p0, Lcom/android/server/backlight/zta$zta;->Zf:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/backlight/zta$zta;->xz:D

    iput-wide p4, p0, Lcom/android/server/backlight/zta$zta;->yz:D

    iput p6, p0, Lcom/android/server/backlight/zta$zta;->zz:I

    iput p7, p0, Lcom/android/server/backlight/zta$zta;->Az:I

    iput p8, p0, Lcom/android/server/backlight/zta$zta;->Bz:I

    return-void
.end method


# virtual methods
.method public Ac()I
    .locals 0

    iget p0, p0, Lcom/android/server/backlight/zta$zta;->zz:I

    return p0
.end method

.method public Bc()I
    .locals 0

    iget p0, p0, Lcom/android/server/backlight/zta$zta;->Az:I

    return p0
.end method

.method public Cc()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/backlight/zta$zta;->yz:D

    return-wide v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/backlight/zta$zta;->Zf:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Param:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backlight/zta$zta;->Zf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/backlight/zta$zta;->xz:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", inc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/backlight/zta$zta;->yz:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", enter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/backlight/zta$zta;->zz:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/backlight/zta$zta;->Az:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/backlight/zta$zta;->Bz:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public yc()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/backlight/zta$zta;->xz:D

    return-wide v0
.end method

.method public zc()I
    .locals 0

    iget p0, p0, Lcom/android/server/backlight/zta$zta;->Bz:I

    return p0
.end method
