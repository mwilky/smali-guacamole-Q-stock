.class public Lcom/android/systemui/classifier/FalsingManagerFactory;
.super Ljava/lang/Object;
.source "FalsingManagerFactory.java"


# static fields
.field private static sInstance:Lcom/android/systemui/plugins/FalsingManager;


# direct methods
.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    sget-object p0, Lcom/android/systemui/classifier/FalsingManagerFactory;->sInstance:Lcom/android/systemui/plugins/FalsingManager;

    if-nez p0, :cond_0

    const-class p0, Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/FalsingManager;

    sput-object p0, Lcom/android/systemui/classifier/FalsingManagerFactory;->sInstance:Lcom/android/systemui/plugins/FalsingManager;

    :cond_0
    sget-object p0, Lcom/android/systemui/classifier/FalsingManagerFactory;->sInstance:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method
