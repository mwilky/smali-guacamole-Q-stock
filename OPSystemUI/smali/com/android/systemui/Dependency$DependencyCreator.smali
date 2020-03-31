.class public Lcom/android/systemui/Dependency$DependencyCreator;
.super Ljava/lang/Object;
.source "Dependency.java"

# interfaces
.implements Lcom/android/systemui/SystemUI$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/Dependency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DependencyCreator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;)Lcom/android/systemui/SystemUI;
    .locals 0

    new-instance p0, Lcom/android/systemui/Dependency;

    invoke-direct {p0}, Lcom/android/systemui/Dependency;-><init>()V

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/SystemUIFactory;->getRootComponent()Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;->createDependency()Lcom/android/systemui/Dependency$DependencyInjector;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/systemui/Dependency$DependencyInjector;->createSystemUI(Lcom/android/systemui/Dependency;)V

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency$DependencyCreator;->apply(Landroid/content/Context;)Lcom/android/systemui/SystemUI;

    move-result-object p0

    return-object p0
.end method
