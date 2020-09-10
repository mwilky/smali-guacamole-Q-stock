.class public Lcom/android/server/display/BrightnessStaticBeans$DataBean;
.super Ljava/lang/Object;
.source "BrightnessStaticBeans.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessStaticBeans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private mDate:Ljava/lang/String;

.field private mDuration:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/BrightnessStaticBeans$DataBean;->mDate:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/display/BrightnessStaticBeans$DataBean;->mDuration:J

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/BrightnessStaticBeans$DataBean;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/display/BrightnessStaticBeans$DataBean;->mDuration:J

    return-wide v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/BrightnessStaticBeans$DataBean;->mDate:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/display/BrightnessStaticBeans$DataBean;->mDuration:J

    return-void
.end method
