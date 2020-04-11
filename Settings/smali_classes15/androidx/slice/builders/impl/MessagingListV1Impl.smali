.class public Landroidx/slice/builders/impl/MessagingListV1Impl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "MessagingListV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/MessagingBuilder;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;
    }
.end annotation


# instance fields
.field private final mListBuilder:Landroidx/slice/builders/impl/ListBuilderImpl;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderImpl;

    invoke-direct {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    iput-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderImpl;

    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderImpl;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroidx/slice/builders/impl/ListBuilderImpl;->setTtl(J)V

    return-void
.end method


# virtual methods
.method public add(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;

    iget-object v1, p0, Landroidx/slice/builders/impl/MessagingListV1Impl;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderImpl;

    iget-object v2, v0, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;

    invoke-virtual {v1, v2}, Landroidx/slice/builders/impl/ListBuilderImpl;->addRow(Landroidx/slice/builders/impl/ListBuilderImpl$RowBuilderImpl;)V

    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderImpl;

    invoke-virtual {v0, p1}, Landroidx/slice/builders/impl/ListBuilderImpl;->apply(Landroidx/slice/Slice$Builder;)V

    return-void
.end method

.method public createMessageBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    new-instance v0, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;-><init>(Landroidx/slice/builders/impl/MessagingListV1Impl;)V

    return-object v0
.end method
