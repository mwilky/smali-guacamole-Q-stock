.class public Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;
.super Ljava/lang/Object;
.source "BackgroundDataBean.java"


# instance fields
.field private id:I

.field private package_name:Ljava/lang/String;

.field private type:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->id:I

    iput-object p2, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->package_name:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->uid:I

    iput p4, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->package_name:Ljava/lang/String;

    iput p2, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->uid:I

    iput p3, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->type:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->id:I

    return v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->type:I

    return v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->uid:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->id:I

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->type:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->uid:I

    return-void
.end method
