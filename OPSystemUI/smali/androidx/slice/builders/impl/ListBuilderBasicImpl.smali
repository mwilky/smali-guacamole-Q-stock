.class public Landroidx/slice/builders/impl/ListBuilderBasicImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderBasicImpl.java"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder;


# instance fields
.field private mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

.field mIsError:Z

.field private mKeywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSliceAction:Landroidx/slice/builders/SliceAction;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method


# virtual methods
.method public addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    :cond_1
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    :cond_2
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    :cond_3
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->getTitleIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    :cond_4
    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 8

    iget-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIsError:Z

    if-eqz v0, :cond_0

    const-string v0, "error"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mKeywords:Ljava/util/Set;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mKeywords:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/String;

    invoke-virtual {v0, v4, v2, v5}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    goto :goto_0

    :cond_1
    const-string v3, "keywords"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    :cond_2
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    if-eqz v3, :cond_5

    iget-object v4, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    invoke-virtual {v3}, Landroidx/slice/builders/SliceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v3}, Landroidx/slice/builders/SliceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    :cond_3
    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v3, :cond_4

    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v3}, Landroidx/slice/builders/SliceAction;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v3}, Landroidx/slice/builders/SliceAction;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    iput-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    :cond_4
    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v3, v0}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    :cond_5
    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    const-string/jumbo v4, "title"

    const-string/jumbo v5, "text"

    if-eqz v3, :cond_6

    new-instance v6, Landroidx/slice/SliceItem;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v5, v2, v7}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    :cond_6
    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    new-instance v6, Landroidx/slice/SliceItem;

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v6, v3, v5, v2, v1}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    :cond_7
    iget-object p0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIconCompat:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p0, :cond_8

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v2, v1}, Landroidx/slice/Slice$Builder;->addIcon(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_8
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mTitle:Ljava/lang/CharSequence;

    :cond_0
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSubtitle:Ljava/lang/CharSequence;

    :cond_1
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mSliceAction:Landroidx/slice/builders/SliceAction;

    :cond_2
    return-void
.end method

.method public setTtl(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getClock()Landroidx/slice/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/Clock;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    :goto_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    const-string/jumbo p1, "ttl"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string p2, "millis"

    invoke-virtual {p0, v0, v1, p2, p1}, Landroidx/slice/Slice$Builder;->addTimestamp(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method
