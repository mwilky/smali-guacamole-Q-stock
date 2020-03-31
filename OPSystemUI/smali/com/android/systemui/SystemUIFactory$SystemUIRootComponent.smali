.class public interface abstract Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;
.super Ljava/lang/Object;
.source "SystemUIFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SystemUIFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SystemUIRootComponent"
.end annotation


# virtual methods
.method public abstract createDependency()Lcom/android/systemui/Dependency$DependencyInjector;
.end method

.method public abstract createFragmentCreator()Lcom/android/systemui/fragments/FragmentService$FragmentCreator;
.end method

.method public abstract createGarbageMonitor()Lcom/android/systemui/util/leak/GarbageMonitor;
.end method

.method public abstract createViewCreator()Lcom/android/systemui/util/InjectionInflationController$ViewCreator;
.end method

.method public abstract getStatusBarInjector()Lcom/android/systemui/statusbar/phone/StatusBar$StatusBarInjector;
.end method
