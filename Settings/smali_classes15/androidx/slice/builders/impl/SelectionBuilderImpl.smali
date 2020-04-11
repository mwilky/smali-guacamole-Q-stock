.class public abstract Landroidx/slice/builders/impl/SelectionBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "SelectionBuilderImpl.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mSelectionBuilder:Landroidx/slice/builders/SelectionBuilder;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/builders/SelectionBuilder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    iput-object p2, p0, Landroidx/slice/builders/impl/SelectionBuilderImpl;->mSelectionBuilder:Landroidx/slice/builders/SelectionBuilder;

    return-void
.end method


# virtual methods
.method public abstract apply(Landroidx/slice/Slice$Builder;)V
.end method

.method protected getSelectionBuilder()Landroidx/slice/builders/SelectionBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/impl/SelectionBuilderImpl;->mSelectionBuilder:Landroidx/slice/builders/SelectionBuilder;

    return-object v0
.end method
