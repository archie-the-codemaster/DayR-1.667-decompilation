.class public Lcom/ansca/corona/events/TextEditingTask;
.super Ljava/lang/Object;
.source "TextEditingTask.java"

# interfaces
.implements Lcom/ansca/corona/CoronaRuntimeTask;


# instance fields
.field private myEditTextId:I

.field private newCharacters:Ljava/lang/String;

.field private newString:Ljava/lang/String;

.field private numDeleted:I

.field private oldString:Ljava/lang/String;

.field private startPos:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/ansca/corona/events/TextEditingTask;->myEditTextId:I

    .line 26
    iput p2, p0, Lcom/ansca/corona/events/TextEditingTask;->startPos:I

    .line 27
    iput p3, p0, Lcom/ansca/corona/events/TextEditingTask;->numDeleted:I

    .line 28
    iput-object p4, p0, Lcom/ansca/corona/events/TextEditingTask;->newCharacters:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/ansca/corona/events/TextEditingTask;->oldString:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/ansca/corona/events/TextEditingTask;->newString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public executeUsing(Lcom/ansca/corona/CoronaRuntime;)V
    .locals 7

    .line 35
    iget v1, p0, Lcom/ansca/corona/events/TextEditingTask;->myEditTextId:I

    iget v2, p0, Lcom/ansca/corona/events/TextEditingTask;->startPos:I

    iget v3, p0, Lcom/ansca/corona/events/TextEditingTask;->numDeleted:I

    iget-object v4, p0, Lcom/ansca/corona/events/TextEditingTask;->newCharacters:Ljava/lang/String;

    iget-object v5, p0, Lcom/ansca/corona/events/TextEditingTask;->oldString:Ljava/lang/String;

    iget-object v6, p0, Lcom/ansca/corona/events/TextEditingTask;->newString:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/ansca/corona/JavaToNativeShim;->textEditingEvent(Lcom/ansca/corona/CoronaRuntime;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
