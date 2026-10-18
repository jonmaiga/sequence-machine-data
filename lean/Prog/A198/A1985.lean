import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C001
import Seq.B002.C004
import Seq.B003.C002
import Seq.B003.C004
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A198508: Number of 2n X 2 0..4 arrays with values 0..4 introduced in row major order and each element unequal to exactly two horizontal and vertical neighbors.

The programs for A198508, there is no canonical definition to state claims against.
-/

/-! ## A198508.P4786500080903229081

`A198511(∑[n]+1)`
-/

namespace A198508.P4786500080903229081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198511 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A198508.P4786500080903229081

/-! ## A198508.P15819677694453335344

`∑{digits}[n, A198511(A000124(#))]`
-/

namespace A198508.P15819677694453335344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A198511 (A000124 x).toNat).sum

end

end A198508.P15819677694453335344

/-! ## A198508.P14041719430762612269

`record[A198511(A173398(n+1))]`
-/

namespace A198508.P14041719430762612269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198511 (A173398 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198508.P14041719430762612269

/-!
# A198509: Number of 2nX4 0..4 arrays with values 0..4 introduced in row major order and each element unequal to exactly two horizontal and vertical neighbors.

The programs for A198509, there is no canonical definition to state claims against.
-/

/-! ## A198509.P12028046650567324419

`A198511(∑[n+1]+2)`
-/

namespace A198509.P12028046650567324419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198511 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198509.P12028046650567324419

/-! ## A198509.P16537573863586882202

`record[A198511(A136417(n))]`
-/

namespace A198509.P16537573863586882202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198511 (A136417 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198509.P16537573863586882202

/-!
# A198510: Number of 2n X 6 0..4 arrays with values 0..4 introduced in row major order and each element unequal to exactly two horizontal and vertical neighbors.

The programs for A198510, there is no canonical definition to state claims against.
-/

/-! ## A198510.P2217479196555599096

`A198511(C(2*(n+1)+2-n, 2)-n)`
-/

namespace A198510.P2217479196555599096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198511 (Nat.choose ((2 * (n + 1) + 2 : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A198510.P2217479196555599096

/-!
# A198512: Half the difference between an odd squarefree semiprime's factors.

The programs for A198512, there is no canonical definition to state claims against.
-/

/-! ## A198512.P16095896066141064931

`A204995(A046388(n+1))`
-/

namespace A198512.P16095896066141064931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204995 (A046388 (n + 1)).toNat

end

end A198512.P16095896066141064931

/-! ## A198512.P1587044984210290465

`A219695(A234096(n+1))`
-/

namespace A198512.P1587044984210290465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219695 (A234096 (n + 1)).toNat

end

end A198512.P1587044984210290465

/-! ## A198512.P2932491089816051267

`A085393(A046388(n+1)²)/2`
-/

namespace A198512.P2932491089816051267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085393 (A046388 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A198512.P2932491089816051267

/-! ## A198512.P6301921155072085057

`A004526(A085393(A046388(n+1)²))`
-/

namespace A198512.P6301921155072085057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A085393 (A046388 (n + 1) ^ 2).toNat).toNat

end

end A198512.P6301921155072085057

/-! ## A198512.P3863089469613280823

`2^A008683(A000230(n))*A085393(A046388(n+1)²)`
-/

namespace A198512.P3863089469613280823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A000230 n).toNat : ℤ) * (A085393 (A046388 (n + 1) ^ 2).toNat : ℚ)

end

end A198512.P3863089469613280823

/-!
# A198513: E.g.f.: Sum_{n>=0} sinh(n*x)^n/n!.

The programs for A198513, there is no canonical definition to state claims against.
-/

/-! ## A198513.P7372245580680030557

`A369079(2*n)`
-/

namespace A198513.P7372245580680030557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369079 (2 * n)

end

end A198513.P7372245580680030557

/-! ## A198513.P13298217203165141988

`A375924((2*n+1)*(n+3))`
-/

namespace A198513.P13298217203165141988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 ((2 * n + 1) * (n + 3))

end

end A198513.P13298217203165141988

/-! ## A198513.P921130961626935397

`gcd(floor(1/(n+1)), A369079(A322131(n)))`
-/

namespace A198513.P921130961626935397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A369079 (A322131 n).toNat)

end

end A198513.P921130961626935397

/-!
# A198517: Period 5: repeat [1,0,1,0,0].

The programs for A198517, the canonical program `A198517.P1758663260048626451` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198517 has offset 0).

The definition of A198517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198517.P1758663260048626451

`((n+1)%5)%2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A198517

/-- `((n+1)%5)%2` -/
def P1758663260048626451.Spec : Prop :=
  ∀ n, (P1758663260048626451.a n : ℤ) = A198517 n

theorem P1758663260048626451.correct : P1758663260048626451.Spec := by
  intro n
  simp only [A198517]

end A198517

/-!
# A198518: G.f. satisfies: A(x) = exp( Sum_{n>=1} A(x^n)/(1+x^n) * x^n/n ).

The programs for A198518, there is no canonical definition to state claims against.
-/

/-! ## A198518.P633993108319670383

`A001678(n+1)+A001678(n+2)`
-/

namespace A198518.P633993108319670383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001678 (n + 1) + A001678 (n + 2)

end

end A198518.P633993108319670383

/-! ## A198518.P12054196017719175934

`∑[A001678(n+2)-A001678(n)]`
-/

namespace A198518.P12054196017719175934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001678 (n + 2) - A001678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198518.P12054196017719175934

/-! ## A198518.P1994564954314243446

`A235963(A278024(n))`
-/

namespace A198518.P1994564954314243446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A278024 n).toNat

end

end A198518.P1994564954314243446

/-! ## A198518.P829035011180292955

`A232746(A337721(n))`
-/

namespace A198518.P829035011180292955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232746 (A337721 n).toNat

end

end A198518.P829035011180292955

/-! ## A198518.P5842430299700969859

`A257639(A374548(n))`
-/

namespace A198518.P5842430299700969859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A374548 n).toNat

end

end A198518.P5842430299700969859

/-!
# A198520: G.f. satisfies: A(x) = exp( Sum_{n>=1} A(x)^n / A(x^n) * x^n/n ).

The programs for A198520, there is no canonical definition to state claims against.
-/

/-! ## A198520.P1181095282742592345

`A261585(A032294(n+1)-A325835(n))`
-/

namespace A198520.P1181095282742592345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A032294 (n + 1) - A325835 n).toNat

end

end A198520.P1181095282742592345

/-! ## A198520.P13820801958699842549

`A289493(A124302(n)+A056471(n+1))`
-/

namespace A198520.P13820801958699842549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (A124302 n + A056471 (n + 1)).toNat

end

end A198520.P13820801958699842549

/-! ## A198520.P3643619875267523770

`A157271(A348403(n+1)+A345243(n+1))`
-/

namespace A198520.P3643619875267523770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A348403 (n + 1) + A345243 (n + 1)).toNat

end

end A198520.P3643619875267523770

/-! ## A198520.P1737934142498658262

`A008617(A100139(n)+A000045(2*n+1))`
-/

namespace A198520.P1737934142498658262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A100139 n + A000045 (2 * n + 1)).toNat

end

end A198520.P1737934142498658262

/-! ## A198520.P17591697633829986476

`A002024(A333018(n))`
-/

namespace A198520.P17591697633829986476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A333018 n).toNat

end

end A198520.P17591697633829986476

/-!
# A198521: Number of n X n 0..4 arrays with values 0..4 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A198521, there is no canonical definition to state claims against.
-/

/-! ## A198521.P9638550748208079387

`A198528(∑[4*n]+1)`
-/

namespace A198521.P9638550748208079387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198528 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A198521.P9638550748208079387

/-!
# A198522: Number of n X 2 0..4 arrays with values 0..4 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A198522, there is no canonical definition to state claims against.
-/

/-! ## A198522.P8971230248905082561

`A198528(∑[n+1]+2)`
-/

namespace A198522.P8971230248905082561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198528 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198522.P8971230248905082561

/-! ## A198522.P12029181003547785524

`record[A010054(n)*A198528(n+2)]`
-/

namespace A198522.P12029181003547785524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A198528 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198522.P12029181003547785524

/-! ## A198522.P14190824430840556949

`record[A198528(A198455(n+1))]`
-/

namespace A198522.P14190824430840556949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198528 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198522.P14190824430840556949

/-! ## A198522.P3978363477852891688

`record[A198528(Δ[A003453(n+5)])]`
-/

namespace A198522.P3978363477852891688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198528 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198522.P3978363477852891688

/-! ## A198522.P1694032293525016695

`record[A198528(A198453(n+1))]`
-/

namespace A198522.P1694032293525016695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198528 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198522.P1694032293525016695

/-!
# A198523: Number of nX3 0..4 arrays with values 0..4 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A198523, there is no canonical definition to state claims against.
-/

/-! ## A198523.P11952293920177060363

`A198528(∑[n+2]+4)`
-/

namespace A198523.P11952293920177060363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198528 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198523.P11952293920177060363

/-! ## A198523.P18207586674755191646

`or(A000007(n), A198528(A167614(n+1)))`
-/

namespace A198523.P18207586674755191646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A198528 (A167614 (n + 1)).toNat)

end

end A198523.P18207586674755191646

/-! ## A198523.P222278834350973426

`or(A016389(n), A198528(A167614(n+1)))`
-/

namespace A198523.P222278834350973426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 n) (A198528 (A167614 (n + 1)).toNat)

end

end A198523.P222278834350973426

/-! ## A198523.P18145964289250211951

`A198528(A167614(n+1))+A034561(n+1)`
-/

namespace A198523.P18145964289250211951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198528 (A167614 (n + 1)).toNat + A034561 (n + 1)

end

end A198523.P18145964289250211951

/-! ## A198523.P5793377352015347632

`A198528(A167614(n+1))%A206055(n+1)`
-/

namespace A198523.P5793377352015347632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198528 (A167614 (n + 1)).toNat) (A206055 (n + 1))

end

end A198523.P5793377352015347632

/-!
# A198524: Number of nX4 0..4 arrays with values 0..4 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A198524, there is no canonical definition to state claims against.
-/

/-! ## A198524.P8411338486951733230

`A198528(∑[n+3]+7)`
-/

namespace A198524.P8411338486951733230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198528 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A198524.P8411338486951733230

/-!
# A198525: Number of nX5 0..4 arrays with values 0..4 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A198525, there is no canonical definition to state claims against.
-/

/-! ## A198525.P7198110095120934342

`A198528(A374005(n+1))`
-/

namespace A198525.P7198110095120934342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198528 (A374005 (n + 1)).toNat

end

end A198525.P7198110095120934342

/-! ## A198525.P17454673741813734083

`A198528(eq[4, A193592(n)])`
-/

namespace A198525.P17454673741813734083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198525.P17454673741813734083

/-! ## A198525.P16972855788035928038

`A198528(A027379(n+3)-1)`
-/

namespace A198525.P16972855788035928038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198528 (A027379 (n + 3) - 1).toNat

end

end A198525.P16972855788035928038

/-! ## A198525.P16441333020104708601

`A198528(eq[4, A049286(n+1)])`
-/

namespace A198525.P16441333020104708601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198525.P16441333020104708601

/-!
# A198527: 

The programs for A198527, there is no canonical definition to state claims against.
-/

/-! ## A198527.P7389596196477398812

`A198528(A055999(n+4))`
-/

namespace A198527.P7389596196477398812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198528 (A055999 (n + 4)).toNat

end

end A198527.P7389596196477398812

/-!
# A198528: T(n,k) is the number of n X k 0..4 arrays with values 0..4 introduced in row major order and each element equal to no more than two horizontal and vertical neighbors.

The programs for A198528, there is no canonical definition to state claims against.
-/

/-! ## A198528.P4969961783561316812

`A305482(n+1)+A183137(A305523(n+1))`
-/

namespace A198528.P4969961783561316812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305482 (n + 1) + A183137 (A305523 (n + 1)).toNat

end

end A198528.P4969961783561316812

/-! ## A198528.P16066377531430488951

`A194417(A208353(n+1)%A107126(n+1))`
-/

namespace A198528.P16066377531430488951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194417 (Int.tmod (A208353 (n + 1)) (A107126 (n + 1))).toNat

end

end A198528.P16066377531430488951

/-! ## A198528.P3786771966734725273

`A194417(A208353(n+1))%A268180(5*n+3)`
-/

namespace A198528.P3786771966734725273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194417 (A208353 (n + 1)).toNat) (A268180 (5 * n + 3))

end

end A198528.P3786771966734725273

/-!
# A198529: Number of 2nX4 0..2 arrays with values 0..2 introduced in row major order and each element equal to exactly one horizontal or vertical neighbor.

The programs for A198529, there is no canonical definition to state claims against.
-/

/-! ## A198529.P7699433451858519298

`A198532(∑[n+1]+2)`
-/

namespace A198529.P7699433451858519298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198532 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198529.P7699433451858519298

/-! ## A198529.P14029383723198561502

`record[A198532(A198453(n+1))]`
-/

namespace A198529.P14029383723198561502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198532 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198529.P14029383723198561502

/-! ## A198529.P10833771850158092672

`record[A198532(A198455(n+1))]`
-/

namespace A198529.P10833771850158092672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198532 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198529.P10833771850158092672

/-!
# A198530: Number of 2nX6 0..2 arrays with values 0..2 introduced in row major order and each element equal to exactly one horizontal or vertical neighbor.

The programs for A198530, there is no canonical definition to state claims against.
-/

/-! ## A198530.P5187057521156091293

`A198532(∑[n+2]+4)`
-/

namespace A198530.P5187057521156091293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198532 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198530.P5187057521156091293

/-! ## A198530.P6279780692927718157

`lcm(2, A198532(A167614(n+1)))`
-/

namespace A198530.P6279780692927718157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A198532 (A167614 (n + 1)).toNat)

end

end A198530.P6279780692927718157

/-! ## A198530.P12926700558482007813

`A198532(A167614(n+1))+A025465(n)`
-/

namespace A198530.P12926700558482007813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198532 (A167614 (n + 1)).toNat + A025465 n

end

end A198530.P12926700558482007813

/-!
# A198531: Number of 2nX8 0..2 arrays with values 0..2 introduced in row major order and each element equal to exactly one horizontal or vertical neighbor.

The programs for A198531, there is no canonical definition to state claims against.
-/

/-! ## A198531.P18057625303135074529

`A198532(A020752(n+1))`
-/

namespace A198531.P18057625303135074529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198532 (A020752 (n + 1)).toNat

end

end A198531.P18057625303135074529

/-! ## A198531.P15196727904153313777

`A198532(A167614(n+2)+1)`
-/

namespace A198531.P15196727904153313777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198532 (A167614 (n + 2) + 1).toNat

end

end A198531.P15196727904153313777

/-!
# A198532: T(n,k)=Number of 2nX2k 0..2 arrays with values 0..2 introduced in row major order and each element equal to exactly one horizontal or vertical neighbor.

The programs for A198532, there is no canonical definition to state claims against.
-/

/-! ## A198532.P18350186396858363282

`A154099(lcm(3, A247168(n+1)))`
-/

namespace A198532.P18350186396858363282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154099 (Int.lcm 3 (A247168 (n + 1)))

end

end A198532.P18350186396858363282

/-!
# A198533: Number of 2n X 4 0..4 arrays with values 0..4 introduced in row major order and each element equal to an odd number of horizontal and vertical neighbors.

The programs for A198533, there is no canonical definition to state claims against.
-/

/-! ## A198533.P16203769405941522124

`A198534(∑[n+1]+2)`
-/

namespace A198533.P16203769405941522124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198534 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198533.P16203769405941522124

/-!
# A198535: Number of 2n X 2 0..4 arrays with values 0..4 introduced in row major order and each element equal to an even number of horizontal and vertical neighbors.

The programs for A198535, there is no canonical definition to state claims against.
-/

/-! ## A198535.P16827727689256005837

`A198538(∑[n]+1)`
-/

namespace A198535.P16827727689256005837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198538 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A198535.P16827727689256005837

/-! ## A198535.P11444136024039350525

`record[A198538(A286234(n+1))]`
-/

namespace A198535.P11444136024039350525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198538 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198535.P11444136024039350525

/-! ## A198535.P4006043923114198923

`record[A010054(n)*A198538(n+1)]`
-/

namespace A198535.P4006043923114198923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A198538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198535.P4006043923114198923

/-!
# A198536: 

The programs for A198536, there is no canonical definition to state claims against.
-/

/-! ## A198536.P18244608785742155095

`A198538(∑[n+1]+2)`
-/

namespace A198536.P18244608785742155095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198538 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198536.P18244608785742155095

/-!
# A198584: Odd numbers producing exactly 3 odd numbers under the Collatz (3x+1) iterations.

The programs for A198584, there is no canonical definition to state claims against.
-/

/-! ## A198584.P8824129810166194574

`A062053(eq[1, A062053(n+1)%2]+1)`
-/

namespace A198584.P8824129810166194574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062053 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062053 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A198584.P8824129810166194574

/-! ## A198584.P2705299992873889495

`∩[A062053(n+1), A172143(n+1)]`
-/

namespace A198584.P2705299992873889495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198584.P2705299992873889495

/-! ## A198584.P17035043582752391681

`∪[A228872(n+1), A342815(n+1)]%A228872(n+1)`
-/

namespace A198584.P17035043582752391681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342815 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A228872 (n + 1))

end

end A198584.P17035043582752391681

/-! ## A198584.P9825974295331769260

`∪[A342815(n+1), A342816(n+1)]%A342815(n+4)`
-/

namespace A198584.P9825974295331769260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342816 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A342815 (n + 4))

end

end A198584.P9825974295331769260

/-! ## A198584.P1272856630073040380

`A000027(∪[A228872(n+1), A342815(n+1)])`
-/

namespace A198584.P1272856630073040380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342815 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A198584.P1272856630073040380

/-!
# A198585: The second odd number appearing in the Collatz sequence starting with A198584(n).

The programs for A198585, there is no canonical definition to state claims against.
-/

/-! ## A198585.P3389877015800929229

`A000265(A014682(A198584(n+1)))`
-/

namespace A198585.P3389877015800929229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A014682 (A198584 (n + 1)).toNat).toNat

end

end A198585.P3389877015800929229

/-! ## A198585.P17821763318247049118

`A237660(A198584(n+1))`
-/

namespace A198585.P17821763318247049118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237660 (A198584 (n + 1)).toNat

end

end A198585.P17821763318247049118

/-! ## A198585.P6528235484275754529

`A306577(or(1, A198584(n+1)))`
-/

namespace A198585.P6528235484275754529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306577 (Int.lor 1 (A198584 (n + 1))).toNat

end

end A198585.P6528235484275754529

/-! ## A198585.P13696057650809244537

`A306577(A198584(n+1)-A065715(n))`
-/

namespace A198585.P13696057650809244537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306577 (A198584 (n + 1) - A065715 n).toNat

end

end A198585.P13696057650809244537

/-! ## A198585.P6953816536142305207

`A306577(lcm(A033999(n), A198584(n+1)))`
-/

namespace A198585.P6953816536142305207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306577 (Int.lcm (A033999 n) (A198584 (n + 1)))

end

end A198585.P6953816536142305207

/-!
# A198586: a(n) = (4^A001651(n+1) - 1)/3: numbers (4^k-1)/3 for k > 1, not multiples of 3.

The programs for A198586, the canonical program `A198586.P7811102016102151447` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198586 has offset 1).

The definition of A198586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198586.P7811102016102151447

`a(n-1)+64*a(n-2)-64*a(n-3)` with `a(0)=5, a(1)=85, a(2)=341`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A198586

/-- `a(n-1)+64*a(n-2)-64*a(n-3)` -/
def P7811102016102151447.Spec : Prop :=
  ∀ n, P7811102016102151447.a n = A198586 (n + 1)

theorem P7811102016102151447.correct : P7811102016102151447.Spec := by
  intro n
  simp only [A198586, Nat.add_sub_cancel]

end A198586

/-! ## A198586.P13084391561731226245

`(4^A001651(n+2)-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A198586.P13084391561731226245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 : ℚ) ^ (A001651 (n + 2) : ℤ) - 1) / 3

end

end A198586.P13084391561731226245

namespace A198586

/-- `(4^A001651(n+2)-1)/3` -/
def P13084391561731226245.Spec : Prop :=
  ∀ n, P13084391561731226245.a n = (A198586 (n + 1) : ℚ)

end A198586

/-! ## A198586.P290160355283041435

`A052992(3*(n+1))`
-/

namespace A198586.P290160355283041435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052992 (3 * (n + 1))

end

end A198586.P290160355283041435

namespace A198586

/-- `A052992(3*(n+1))` -/
def P290160355283041435.Spec : Prop :=
  ∀ n, P290160355283041435.a n = A198586 (n + 1)

end A198586

/-! ## A198586.P5601434983461615787

`A000975(or(1, 3*(n+1)))`
-/

namespace A198586.P5601434983461615787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (Nat.lor 1 (3 * (n + 1)))

end

end A198586.P5601434983461615787

namespace A198586

/-- `A000975(or(1, 3*(n+1)))` -/
def P5601434983461615787.Spec : Prop :=
  ∀ n, P5601434983461615787.a n = A198586 (n + 1)

end A198586

/-! ## A198586.P1217367937764163476

`abs(A087213(3*n+4))+1`
-/

namespace A198586.P1217367937764163476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A087213 (3 * n + 4)| + 1

end

end A198586.P1217367937764163476

namespace A198586

/-- `abs(A087213(3*n+4))+1` -/
def P1217367937764163476.Spec : Prop :=
  ∀ n, P1217367937764163476.a n = A198586 (n + 1)

end A198586

/-! ## A198586.P11644658200392081313

`A002450(ceil(3*n/2)+2)`
-/

namespace A198586.P11644658200392081313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (⌈3 * ((n : ℚ) / 2)⌉ + 2).toNat

end

end A198586.P11644658200392081313

namespace A198586

/-- `A002450(ceil(3*n/2)+2)` -/
def P11644658200392081313.Spec : Prop :=
  ∀ n, P11644658200392081313.a n = A198586 (n + 1)

end A198586

/-! ## A198586.P17000485407338449547

`A283642(record[xor(3, n)]-or(1, n))`
-/

namespace A198586.P17000485407338449547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - Nat.lor 1 n)

end

end A198586.P17000485407338449547

namespace A198586

/-- `A283642(record[xor(3, n)]-or(1, n))` -/
def P17000485407338449547.Spec : Prop :=
  ∀ n, P17000485407338449547.a n = A198586 (n + 1)

end A198586

/-! ## A198586.P16237041225502346684

`A001045(2*comp[3*n+1]+4)`
-/

namespace A198586.P16237041225502346684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 4)

end

end A198586.P16237041225502346684

namespace A198586

/-- `A001045(2*comp[3*n+1]+4)` -/
def P16237041225502346684.Spec : Prop :=
  ∀ n, P16237041225502346684.a n = A198586 (n + 1)

end A198586

/-! ## A198586.P17166011377104107043

`A168642(A007310(n+1))`
-/

namespace A198586.P17166011377104107043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168642 (A007310 (n + 1)).toNat

end

end A198586.P17166011377104107043

namespace A198586

/-- `A168642(A007310(n+1))` -/
def P17166011377104107043.Spec : Prop :=
  ∀ n, P17166011377104107043.a n = A198586 (n + 1)

end A198586

/-! ## A198586.P17762819824184061459

`A112031(A091999(n+1))`
-/

namespace A198586.P17762819824184061459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112031 (A091999 (n + 1)).toNat

end

end A198586.P17762819824184061459

namespace A198586

/-- `A112031(A091999(n+1))` -/
def P17762819824184061459.Spec : Prop :=
  ∀ n, P17762819824184061459.a n = A198586 (n + 1)

end A198586

/-! ## A198586.P10764073374845462461

`A000975(A047241(n+2))`
-/

namespace A198586.P10764073374845462461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A047241 (n + 2)).toNat

end

end A198586.P10764073374845462461

namespace A198586

/-- `A000975(A047241(n+2))` -/
def P10764073374845462461.Spec : Prop :=
  ∀ n, P10764073374845462461.a n = A198586 (n + 1)

end A198586

/-! ## A198586.P15960076733967677107

`A048329(A087444(n+2))`
-/

namespace A198586.P15960076733967677107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048329 (A087444 (n + 2)).toNat

end

end A198586.P15960076733967677107

namespace A198586

/-- `A048329(A087444(n+2))` -/
def P15960076733967677107.Spec : Prop :=
  ∀ n, P15960076733967677107.a n = A198586 (n + 1)

end A198586

/-! ## A198586.P9650605795121932913

`A092808(A047270(n+2))`
-/

namespace A198586.P9650605795121932913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092808 (A047270 (n + 2)).toNat

end

end A198586.P9650605795121932913

namespace A198586

/-- `A092808(A047270(n+2))` -/
def P9650605795121932913.Spec : Prop :=
  ∀ n, P9650605795121932913.a n = A198586 (n + 1)

end A198586

/-! ## A198586.P2663986628124159567

`A141355(A042963(n+2))`
-/

namespace A198586.P2663986628124159567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141355 (A042963 (n + 2)).toNat

end

end A198586.P2663986628124159567

namespace A198586

/-- `A141355(A042963(n+2))` -/
def P2663986628124159567.Spec : Prop :=
  ∀ n, P2663986628124159567.a n = A198586 (n + 1)

end A198586

/-! ## A198586.P3603046190641779465

`A112447(A092899(n+2))`
-/

namespace A198586.P3603046190641779465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 (A092899 (n + 2)).toNat

end

end A198586.P3603046190641779465

namespace A198586

/-- `A112447(A092899(n+2))` -/
def P3603046190641779465.Spec : Prop :=
  ∀ n, P3603046190641779465.a n = A198586 (n + 1)

end A198586

/-! ## A198586.P14602179805583327221

`A096773(A047241(n+2)+2)`
-/

namespace A198586.P14602179805583327221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096773 (A047241 (n + 2) + 2).toNat

end

end A198586.P14602179805583327221

namespace A198586

/-- `A096773(A047241(n+2)+2)` -/
def P14602179805583327221.Spec : Prop :=
  ∀ n, P14602179805583327221.a n = A198586 (n + 1)

end A198586

/-! ## A198586.P17572229304421559437

`A133730(A092899(n+2)+2)`
-/

namespace A198586.P17572229304421559437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 (A092899 (n + 2) + 2).toNat

end

end A198586.P17572229304421559437

namespace A198586

/-- `A133730(A092899(n+2)+2)` -/
def P17572229304421559437.Spec : Prop :=
  ∀ n, P17572229304421559437.a n = A198586 (n + 1)

end A198586

/-! ## A198586.P10344963751957952789

`A133684(2*A047235(n+2))`
-/

namespace A198586.P10344963751957952789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (2 * A047235 (n + 2)).toNat

end

end A198586.P10344963751957952789

namespace A198586

/-- `A133684(2*A047235(n+2))` -/
def P10344963751957952789.Spec : Prop :=
  ∀ n, P10344963751957952789.a n = A198586 (n + 1)

end A198586

/-! ## A198586.P8999120377867283392

`A000975(A042964(n+2)+n)`
-/

namespace A198586.P8999120377867283392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A042964 (n + 2) + (n : ℤ)).toNat

end

end A198586.P8999120377867283392

namespace A198586

/-- `A000975(A042964(n+2)+n)` -/
def P8999120377867283392.Spec : Prop :=
  ∀ n, P8999120377867283392.a n = A198586 (n + 1)

end A198586

/-! ## A198586.P15350349818232378772

`A000975(A014601(n)+3+n)`
-/

namespace A198586.P15350349818232378772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A014601 n + 3 + (n : ℤ)).toNat

end

end A198586.P15350349818232378772

namespace A198586

/-- `A000975(A014601(n)+3+n)` -/
def P15350349818232378772.Spec : Prop :=
  ∀ n, P15350349818232378772.a n = A198586 (n + 1)

end A198586

/-!
# A198587: Odd numbers producing 4 odd numbers in the Collatz iteration.

The programs for A198587, there is no canonical definition to state claims against.
-/

/-! ## A198587.P16587291961031641865

`record[lcm(2, A062054(n+1))/2]`
-/

namespace A198587.P16587291961031641865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A062054 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198587.P16587291961031641865

/-! ## A198587.P1401353049838294004

`A062054(record[(n+1)*A062054(n+1)%2])`
-/

namespace A198587.P1401353049838294004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A062054 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062054 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A198587.P1401353049838294004

/-! ## A198587.P952239290922096718

`record[A000265(A062054(n+1))]`
-/

namespace A198587.P952239290922096718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A062054 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198587.P952239290922096718

/-! ## A198587.P7987656694384183433

`filter[A062054(n+1), A374134(#)]`
-/

namespace A198587.P7987656694384183433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A198587.P7987656694384183433

/-! ## A198587.P41799207987613380

`filter[A062054(n+1), A374474(#)]`
-/

namespace A198587.P41799207987613380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A198587.P41799207987613380

/-!
# A198588: Odd numbers producing 5 odd numbers in the Collatz iteration.

The programs for A198588, there is no canonical definition to state claims against.
-/

/-! ## A198588.P11438819215157192835

`record[A000265(A062055(n+1))]`
-/

namespace A198588.P11438819215157192835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A062055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198588.P11438819215157192835

/-! ## A198588.P1585746841219823934

`filter[A062055(n+1), A374134(#)]`
-/

namespace A198588.P1585746841219823934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A198588.P1585746841219823934

/-! ## A198588.P16299465375973510260

`filter[A062055(n+1), A374474(#)]`
-/

namespace A198588.P16299465375973510260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A198588.P16299465375973510260

/-! ## A198588.P18133744110323626616

`filter[A062055(n+1), A379952(#)]`
-/

namespace A198588.P18133744110323626616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A198588.P18133744110323626616

/-! ## A198588.P6014477083047252303

`filter[A062055(n+1), A323158(#)]`
-/

namespace A198588.P6014477083047252303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A198588.P6014477083047252303

/-! ## A198588.P2141700008730738058

`filter[A062055(n+1), A324908(#)]`
-/

namespace A198588.P2141700008730738058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A198588.P2141700008730738058

/-! ## A198588.P467531279370943675

`record[A171435(2*A062055(n+1))]`
-/

namespace A198588.P467531279370943675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A062055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198588.P467531279370943675

/-! ## A198588.P17141090979011903061

`record[A171435(lcm(2, A062055(n+1)))]`
-/

namespace A198588.P17141090979011903061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (Int.lcm 2 (A062055 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198588.P17141090979011903061

/-! ## A198588.P6217542430904579296

`record[A171435(A062055(n+1)+A062055(n+1))]`
-/

namespace A198588.P6217542430904579296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A062055 (n + 1) + A062055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198588.P6217542430904579296

/-! ## A198588.P14850305319180721625

`record[A093411(A062055(n+2))]`
-/

namespace A198588.P14850305319180721625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A062055 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198588.P14850305319180721625

/-!
# A198589: Odd numbers producing 6 odd numbers in the Collatz iteration.

The programs for A198589, there is no canonical definition to state claims against.
-/

/-! ## A198589.P16615732836789507430

`A062056(eq[1, A062056(n+1)%2]+1)`
-/

namespace A198589.P16615732836789507430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062056 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A198589.P16615732836789507430

/-! ## A198589.P893389787045874438

`record[A000265(A062056(n+1))]`
-/

namespace A198589.P893389787045874438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A062056 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198589.P893389787045874438

/-! ## A198589.P6813058237086318629

`filter[A062056(n+1), A374474(#)]`
-/

namespace A198589.P6813058237086318629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A198589.P6813058237086318629

/-! ## A198589.P17435780098763939581

`filter[A062056(n+1), A379952(#)]`
-/

namespace A198589.P17435780098763939581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A198589.P17435780098763939581

/-! ## A198589.P13426757846751305530

`filter[A062056(n+1), A323158(#)]`
-/

namespace A198589.P13426757846751305530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A198589.P13426757846751305530

/-! ## A198589.P12253370459963204913

`filter[A062056(n+1), A324908(#)]`
-/

namespace A198589.P12253370459963204913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A198589.P12253370459963204913

/-! ## A198589.P9514215540505772431

`record[A171435(2*A062056(n+1))]`
-/

namespace A198589.P9514215540505772431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A062056 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198589.P9514215540505772431

/-! ## A198589.P17595333849728430375

`record[A093178(A062056(A080513(n)))]`
-/

namespace A198589.P17595333849728430375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A062056 (A080513 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198589.P17595333849728430375

/-! ## A198589.P16390404050956708199

`record[A093178(A062056(n+1))]%A017461(n)²`
-/

namespace A198589.P16390404050956708199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A062056 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A017461 n ^ 2)

end

end A198589.P16390404050956708199

/-! ## A198589.P11272901666046131721

`A000007(n+1)+record[A093178(A062056(n+1))]`
-/

namespace A198589.P11272901666046131721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A062056 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198589.P11272901666046131721

/-!
# A198590: Odd numbers producing 7 odd numbers in the Collatz iteration.

The programs for A198590, there is no canonical definition to state claims against.
-/

/-! ## A198590.P3262904120687646530

`record[A000265(A062057(n+1))]`
-/

namespace A198590.P3262904120687646530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A062057 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198590.P3262904120687646530

/-! ## A198590.P8094477124382769905

`record[A171435(2*A062057(n+1))]`
-/

namespace A198590.P8094477124382769905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A062057 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198590.P8094477124382769905

/-! ## A198590.P8988820988157944254

`record[A171435(lcm(2, A062057(n+1)))]`
-/

namespace A198590.P8988820988157944254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (Int.lcm 2 (A062057 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198590.P8988820988157944254

/-! ## A198590.P13958818711873043646

`record[A093411(A062057(n+1)%A198588(n+1))]`
-/

namespace A198590.P13958818711873043646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (Int.tmod (A062057 (n + 1)) (A198588 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198590.P13958818711873043646

/-! ## A198590.P12176600973422897335

`∩[A062057(n+1), A171763(n+1)]`
-/

namespace A198590.P12176600973422897335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198590.P12176600973422897335

/-! ## A198590.P9879975722874361095

`∩[A062057(n+1), A346303(n+1)]`
-/

namespace A198590.P9879975722874361095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198590.P9879975722874361095

/-! ## A198590.P16224983739614544661

`record[A093178(A062057(2*n-n+1))]`
-/

namespace A198590.P16224983739614544661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A062057 ((2 * n : ℤ) - (n : ℤ) + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198590.P16224983739614544661

/-! ## A198590.P10841700908436199442

`A093178(record[A093178(A062057(n+1))])`
-/

namespace A198590.P10841700908436199442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A062057 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A198590.P10841700908436199442

/-! ## A198590.P6976290597375934315

`∩[A062057(n+1), A004273(n)]`
-/

namespace A198590.P6976290597375934315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198590.P6976290597375934315

/-! ## A198590.P17555952492858307345

`∩[A062057(n+1), A004274(n)]`
-/

namespace A198590.P17555952492858307345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198590.P17555952492858307345

/-!
# A198591: Odd numbers producing 8 odd numbers in the Collatz iteration.

The programs for A198591, there is no canonical definition to state claims against.
-/

/-! ## A198591.P14246475568753710625

`record[lcm(2, A062058(n+1))/2]`
-/

namespace A198591.P14246475568753710625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A062058 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198591.P14246475568753710625

/-! ## A198591.P597540651721353399

`A062058(record[n^(A062058(n+1)%2)]+1)`
-/

namespace A198591.P597540651721353399
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.tmod (A062058 (n + 1)) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062058 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A198591.P597540651721353399

/-! ## A198591.P17843133642264020054

`record[A000265(A062058(n+1))]`
-/

namespace A198591.P17843133642264020054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A062058 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198591.P17843133642264020054

/-! ## A198591.P6579282953989209358

`∩[A062058(n+1), A080565(n+1)]`
-/

namespace A198591.P6579282953989209358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198591.P6579282953989209358

/-! ## A198591.P11965644026608325274

`∩[A062058(n+1), A346304(n+1)]`
-/

namespace A198591.P11965644026608325274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198591.P11965644026608325274

/-! ## A198591.P9993819363991666750

`record[A171435(2*A062058(n+1))]`
-/

namespace A198591.P9993819363991666750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A062058 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198591.P9993819363991666750

/-! ## A198591.P4765944981403455111

`A014682(record[lcm(2, A062058(n+1))])`
-/

namespace A198591.P4765944981403455111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A062058 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A198591.P4765944981403455111

/-! ## A198591.P15240391870872369796

`record[A171435(A062058(n+1)+A062058(n+1))]`
-/

namespace A198591.P15240391870872369796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A062058 (n + 1) + A062058 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198591.P15240391870872369796

/-! ## A198591.P11785375645242717447

`∩[A062058(n+1), A004273(n)]`
-/

namespace A198591.P11785375645242717447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198591.P11785375645242717447

/-! ## A198591.P8050695536609100209

`∩[A062058(n+1), A004274(n)]`
-/

namespace A198591.P8050695536609100209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198591.P8050695536609100209

/-! ## A198591.P8706030096941314612

`∩[A062058(n+1), A004276(n)]`
-/

namespace A198591.P8706030096941314612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198591.P8706030096941314612

/-! ## A198591.P11181244598064780780

`∩[A062058(n+1), A004281(n)]`
-/

namespace A198591.P11181244598064780780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198591.P11181244598064780780

/-! ## A198591.P2778937817199883384

`∩[A062058(n+1), A020742(n)]`
-/

namespace A198591.P2778937817199883384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198591.P2778937817199883384

/-! ## A198591.P3527667332854212260

`∩[A062058(n+1), A060747(n)]`
-/

namespace A198591.P3527667332854212260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198591.P3527667332854212260

/-! ## A198591.P11157162620623091662

`∩[A062058(n+1), A062545(n)]`
-/

namespace A198591.P11157162620623091662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198591.P11157162620623091662

/-! ## A198591.P12894749098664206268

`∩[A062058(n+1), A130773(n)]`
-/

namespace A198591.P12894749098664206268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198591.P12894749098664206268

/-! ## A198591.P1037052495711903456

`∩[A062058(n+1), A163985(n)]`
-/

namespace A198591.P1037052495711903456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198591.P1037052495711903456

/-! ## A198591.P11348922543821288343

`∩[A062058(n+1), A223134(n)]`
-/

namespace A198591.P11348922543821288343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198591.P11348922543821288343

/-! ## A198591.P14835927085480179863

`∩[A062058(n+1), A326494(n)]`
-/

namespace A198591.P14835927085480179863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198591.P14835927085480179863

/-! ## A198591.P3362556249643073564

`∩[A004280(n+1), A062058(n+1)]`
-/

namespace A198591.P3362556249643073564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198591.P3362556249643073564

/-!
# A198592: Odd numbers producing 9 odd numbers in the Collatz iteration.

The programs for A198592, there is no canonical definition to state claims against.
-/

/-! ## A198592.P1171642669366335073

`record[lcm(2, A062059(n+1))/2]`
-/

namespace A198592.P1171642669366335073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A062059 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198592.P1171642669366335073

/-! ## A198592.P15728396149170580266

`record[A000265(A062059(n+1))]`
-/

namespace A198592.P15728396149170580266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A062059 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198592.P15728396149170580266

/-! ## A198592.P15531113320018481058

`A014682(record[lcm(2, A062059(n+1))])`
-/

namespace A198592.P15531113320018481058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A062059 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A198592.P15531113320018481058

/-! ## A198592.P11977961529023942423

`∩[A062059(n+1), A171763(n+1)]`
-/

namespace A198592.P11977961529023942423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198592.P11977961529023942423

/-! ## A198592.P9579029999688939825

`∩[A062059(n+1), A346303(n+1)]`
-/

namespace A198592.P9579029999688939825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198592.P9579029999688939825

/-! ## A198592.P3542314456669723794

`∩[A062059(n+1), A366462(n+1)]`
-/

namespace A198592.P3542314456669723794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198592.P3542314456669723794

/-! ## A198592.P10197829081944645225

`∩[A062059(n+1), A004273(n)]`
-/

namespace A198592.P10197829081944645225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198592.P10197829081944645225

/-! ## A198592.P15799485593152142577

`∩[A062059(n+1), A004274(n)]`
-/

namespace A198592.P15799485593152142577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198592.P15799485593152142577

/-! ## A198592.P5035060243841442268

`∩[A062059(n+1), A004276(n)]`
-/

namespace A198592.P5035060243841442268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198592.P5035060243841442268

/-! ## A198592.P17401348319519324544

`∩[A062059(n+1), A004281(n)]`
-/

namespace A198592.P17401348319519324544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198592.P17401348319519324544

/-! ## A198592.P5728692960356479998

`∩[A062059(n+1), A020742(n)]`
-/

namespace A198592.P5728692960356479998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198592.P5728692960356479998

/-! ## A198592.P16899704079909126965

`∩[A062059(n+1), A060747(n)]`
-/

namespace A198592.P16899704079909126965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198592.P16899704079909126965

/-! ## A198592.P16060557647019820904

`∩[A062059(n+1), A062545(n)]`
-/

namespace A198592.P16060557647019820904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198592.P16060557647019820904

/-! ## A198592.P15205105805257523861

`∩[A062059(n+1), A130773(n)]`
-/

namespace A198592.P15205105805257523861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198592.P15205105805257523861

/-! ## A198592.P5781222994973644558

`∩[A062059(n+1), A163985(n)]`
-/

namespace A198592.P5781222994973644558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198592.P5781222994973644558

/-! ## A198592.P13813691695342998343

`∩[A062059(n+1), A223134(n)]`
-/

namespace A198592.P13813691695342998343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198592.P13813691695342998343

/-! ## A198592.P10344794635071935168

`∩[A062059(n+1), A326494(n)]`
-/

namespace A198592.P10344794635071935168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198592.P10344794635071935168

/-! ## A198592.P16198723064019231541

`∩[A004280(n+1), A062059(n+1)]`
-/

namespace A198592.P16198723064019231541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198592.P16198723064019231541

/-! ## A198592.P9880322576479600512

`∩[A005818(n+1), A062059(n+1)]`
-/

namespace A198592.P9880322576479600512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198592.P9880322576479600512

/-! ## A198592.P10508556687708981867

`∩[A020735(n+1), A062059(n+1)]`
-/

namespace A198592.P10508556687708981867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198592.P10508556687708981867

/-!
# A198593: Odd numbers producing 10 odd numbers in the Collatz iteration.

The programs for A198593, there is no canonical definition to state claims against.
-/

/-! ## A198593.P8179428649750407852

`record[lcm(2, A062060(n+1))/2]`
-/

namespace A198593.P8179428649750407852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A062060 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198593.P8179428649750407852

/-! ## A198593.P13836830534909369855

`A062060(eq[1, A062060(n+1)%2]+1)`
-/

namespace A198593.P13836830534909369855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062060 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062060 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A198593.P13836830534909369855

/-! ## A198593.P5408673772250783193

`record[A000265(A062060(n+1))]`
-/

namespace A198593.P5408673772250783193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A062060 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198593.P5408673772250783193

/-! ## A198593.P9643792666470662619

`A014682(record[lcm(2, A062060(n+1))])`
-/

namespace A198593.P9643792666470662619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A062060 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A198593.P9643792666470662619

/-! ## A198593.P18033607326434406351

`record[A093411(A062060(n+2))]`
-/

namespace A198593.P18033607326434406351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A062060 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198593.P18033607326434406351

/-! ## A198593.P8323919237106813702

`∩[A062060(n+1), A004273(n)]`
-/

namespace A198593.P8323919237106813702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198593.P8323919237106813702

/-! ## A198593.P9662236365198968774

`∩[A062060(n+1), A004274(n)]`
-/

namespace A198593.P9662236365198968774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198593.P9662236365198968774

/-! ## A198593.P10608702909665239216

`∩[A062060(n+1), A004276(n)]`
-/

namespace A198593.P10608702909665239216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198593.P10608702909665239216

/-! ## A198593.P3160547151435384828

`∩[A062060(n+1), A004281(n)]`
-/

namespace A198593.P3160547151435384828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198593.P3160547151435384828

/-! ## A198593.P11402742150924610161

`∩[A062060(n+1), A020742(n)]`
-/

namespace A198593.P11402742150924610161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198593.P11402742150924610161

/-! ## A198593.P3349482872941567183

`∩[A062060(n+1), A060747(n)]`
-/

namespace A198593.P3349482872941567183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198593.P3349482872941567183

/-! ## A198593.P17090218044282284864

`∩[A062060(n+1), A062545(n)]`
-/

namespace A198593.P17090218044282284864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198593.P17090218044282284864

/-! ## A198593.P6503382103068822325

`∩[A062060(n+1), A130773(n)]`
-/

namespace A198593.P6503382103068822325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198593.P6503382103068822325

/-! ## A198593.P17230738409829032720

`∩[A062060(n+1), A163985(n)]`
-/

namespace A198593.P17230738409829032720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198593.P17230738409829032720

/-! ## A198593.P6754600416454745152

`∩[A062060(n+1), A223134(n)]`
-/

namespace A198593.P6754600416454745152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198593.P6754600416454745152

/-! ## A198593.P8819133953779152353

`∩[A062060(n+1), A326494(n)]`
-/

namespace A198593.P8819133953779152353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198593.P8819133953779152353

/-! ## A198593.P435841049321706978

`∩[A004280(n+1), A062060(n+1)]`
-/

namespace A198593.P435841049321706978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198593.P435841049321706978

/-! ## A198593.P2330047738529067728

`∩[A005818(n+1), A062060(n+1)]`
-/

namespace A198593.P2330047738529067728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198593.P2330047738529067728

/-! ## A198593.P4494085154378610913

`∩[A020735(n+1), A062060(n+1)]`
-/

namespace A198593.P4494085154378610913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198593.P4494085154378610913

/-! ## A198593.P3546880218272785023

`∩[A053460(n+1), A062060(n+1)]`
-/

namespace A198593.P3546880218272785023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A198593.P3546880218272785023

/-!
# A198594: Number of 2nX4 0..3 arrays with values 0..3 introduced in row major order and each element equal to an odd number of horizontal and vertical neighbors.

The programs for A198594, there is no canonical definition to state claims against.
-/

/-! ## A198594.P14443113463083178974

`A198596(∑[n+1]+2)`
-/

namespace A198594.P14443113463083178974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198596 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198594.P14443113463083178974

/-! ## A198594.P4475043081913022148

`record[A198596(3*n+2)]`
-/

namespace A198594.P4475043081913022148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198596 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198594.P4475043081913022148

/-!
# A198595: Number of 2nX6 0..3 arrays with values 0..3 introduced in row major order and each element equal to an odd number of horizontal and vertical neighbors.

The programs for A198595, there is no canonical definition to state claims against.
-/

/-! ## A198595.P12398515527727348207

`A198596(∑[n+2]+4)`
-/

namespace A198595.P12398515527727348207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198596 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198595.P12398515527727348207

/-!
# A198597: Number of 2nX2n 0..3 arrays with values 0..3 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198597, there is no canonical definition to state claims against.
-/

/-! ## A198597.P6184591150244945526

`A198604(∑[4*n]+1)`
-/

namespace A198597.P6184591150244945526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198604 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A198597.P6184591150244945526

/-!
# A198598: Number of 2n X 4 0..3 arrays with values 0..3 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198598, there is no canonical definition to state claims against.
-/

/-! ## A198598.P7988174646790771535

`A198604(∑[n+1]+2)`
-/

namespace A198598.P7988174646790771535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198604 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198598.P7988174646790771535

/-! ## A198598.P15411456419427450189

`record[A198604(A133263(∑{e}[n, #]))]`
-/

namespace A198598.P15411456419427450189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198604 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198598.P15411456419427450189

/-! ## A198598.P16694975788127426993

`record[A010054(n)*A198604(n+2)]`
-/

namespace A198598.P16694975788127426993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A198604 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198598.P16694975788127426993

/-! ## A198598.P8284003721452683356

`record[gcd(A097230(n), A198604(n+1))]`
-/

namespace A198598.P8284003721452683356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A198604 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198598.P8284003721452683356

/-! ## A198598.P320951965607941330

`record[gcd(A122935(n), A198604(n+2))]`
-/

namespace A198598.P320951965607941330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122935 n) (A198604 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198598.P320951965607941330

/-!
# A198599: Number of 2nX6 0..3 arrays with values 0..3 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198599, there is no canonical definition to state claims against.
-/

/-! ## A198599.P12289510431891694267

`A198604(∑[n+2]+4)`
-/

namespace A198599.P12289510431891694267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198604 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198599.P12289510431891694267

/-! ## A198599.P939375421160396796

`lcm(2, A198604(A167614(n+1)))`
-/

namespace A198599.P939375421160396796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A198604 (A167614 (n + 1)).toNat)

end

end A198599.P939375421160396796

/-! ## A198599.P1754839297324824415

`A198604(A167614(n+1))+A185284(n)`
-/

namespace A198599.P1754839297324824415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198604 (A167614 (n + 1)).toNat + A185284 n

end

end A198599.P1754839297324824415

/-! ## A198599.P16506462424112937198

`A198604(A167614(n+1))%A112000(n)`
-/

namespace A198599.P16506462424112937198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198604 (A167614 (n + 1)).toNat) (A112000 n)

end

end A198599.P16506462424112937198

/-! ## A198599.P16786672078042865303

`gcd(A000038(n), A198604(A167614(n+1)))`
-/

namespace A198599.P16786672078042865303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A198604 (A167614 (n + 1)).toNat)

end

end A198599.P16786672078042865303

