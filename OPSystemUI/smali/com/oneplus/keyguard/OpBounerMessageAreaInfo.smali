.class public Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;
.super Ljava/lang/Object;
.source "OpBounerMessageAreaInfo.java"


# instance fields
.field private mColorStateList:Landroid/content/res/ColorStateList;

.field private mDisplayMessage:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->mType:I

    return-void
.end method


# virtual methods
.method public getDisplayMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->mDisplayMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->mType:I

    return p0
.end method

.method public setDisplayMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->mDisplayMessage:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisplayMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->mDisplayMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mColorStateList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->mColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/keyguard/OpBounerMessageAreaInfo;->mType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
