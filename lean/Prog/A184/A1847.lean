import SequenceMachineLib
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
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A184700: Number of strings of numbers x(i=1..n) in 0..6 with sum i*x(i) equal to n*6.

The programs for A184700, there is no canonical definition to state claims against.
-/

/-! ## A184700.P631670855256281868

`A184703(A052905(n+3))`
-/

namespace A184700.P631670855256281868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A052905 (n + 3)).toNat

end

end A184700.P631670855256281868

/-! ## A184700.P5938873466432499984

`A184703(eq[3, A219347(n)])`
-/

namespace A184700.P5938873466432499984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184700.P5938873466432499984

/-! ## A184700.P15495799471412325791

`A184703(A055999(n+3)+1)`
-/

namespace A184700.P15495799471412325791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A055999 (n + 3) + 1).toNat

end

end A184700.P15495799471412325791

/-! ## A184700.P5073286242229430197

`A184703(Δ[A023551(n+1)]+1)`
-/

namespace A184700.P5073286242229430197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (f1 (n + 1) - f1 n + 1).toNat

end

end A184700.P5073286242229430197

/-! ## A184700.P15497446705974538833

`A184703(Δ[A264443(n+1)]-1)`
-/

namespace A184700.P15497446705974538833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (f1 (n + 1) - f1 n - 1).toNat

end

end A184700.P15497446705974538833

/-! ## A184700.P11902708415462042562

`A184703(Δ[A023545(n+2)]-1)`
-/

namespace A184700.P11902708415462042562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (f1 (n + 1) - f1 n - 1).toNat

end

end A184700.P11902708415462042562

/-! ## A184700.P14500616092790929635

`A184703(A000217(n+7)-(n+12))`
-/

namespace A184700.P14500616092790929635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000217 (n + 7) - (n + 12 : ℤ)).toNat

end

end A184700.P14500616092790929635

/-! ## A184700.P1459979011235231588

`A184703(A167614(n+1)+4*n+10)`
-/

namespace A184700.P1459979011235231588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A167614 (n + 1) + (4 * n + 10 : ℤ)).toNat

end

end A184700.P1459979011235231588

/-! ## A184700.P15769614217592167444

`A184703(A000124(n+7)-A326178(n+12))`
-/

namespace A184700.P15769614217592167444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000124 (n + 7) - A326178 (n + 12)).toNat

end

end A184700.P15769614217592167444

/-!
# A184701: Number of strings of numbers x(i=1..n) in 0..7 with sum i*x(i) equal to n*7.

The programs for A184701, there is no canonical definition to state claims against.
-/

/-! ## A184701.P3377633318226259249

`A184703(A055999(n+4))`
-/

namespace A184701.P3377633318226259249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A055999 (n + 4)).toNat

end

end A184701.P3377633318226259249

/-! ## A184701.P8290183115900971180

`A184703(eq[4, A219347(n)])`
-/

namespace A184701.P8290183115900971180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184701.P8290183115900971180

/-! ## A184701.P12108923467355931672

`A184703(Δ[A023551(n+2)])`
-/

namespace A184701.P12108923467355931672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (f1 (n + 1) - f1 n).toNat

end

end A184701.P12108923467355931672

/-! ## A184701.P9667784112929090847

`A184703(A052905(n+4)-1)`
-/

namespace A184701.P9667784112929090847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A052905 (n + 4) - 1).toNat

end

end A184701.P9667784112929090847

/-! ## A184701.P18122396439562370027

`A184703(A000124(n+7)-7)`
-/

namespace A184701.P18122396439562370027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000124 (n + 7) - 7).toNat

end

end A184701.P18122396439562370027

/-! ## A184701.P10079464849981589064

`A184703(A000217(n+6)+n+1)`
-/

namespace A184701.P10079464849981589064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A184701.P10079464849981589064

/-! ## A184701.P18006396042559818314

`A184703(A167499(n+2)+4*n+11)`
-/

namespace A184701.P18006396042559818314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A167499 (n + 2) + (4 * n + 11 : ℤ)).toNat

end

end A184701.P18006396042559818314

/-! ## A184701.P10549256347014568787

`A184703(A016993(n+3)+A000217(n))`
-/

namespace A184701.P10549256347014568787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A016993 (n + 3) + A000217 n).toNat

end

end A184701.P10549256347014568787

/-!
# A184702: Number of strings of numbers x(i=1..n) in 0..8 with sum i*x(i) equal to n*8.

The programs for A184702, there is no canonical definition to state claims against.
-/

/-! ## A184702.P8037686079576519226

`A184703(eq[5, A219347(n)])`
-/

namespace A184702.P8037686079576519226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184702.P8037686079576519226

/-! ## A184702.P11496892129785934589

`A184703(A000124(n+8)-8)`
-/

namespace A184702.P11496892129785934589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000124 (n + 8) - 8).toNat

end

end A184702.P11496892129785934589

/-! ## A184702.P11874789423527193685

`A184703(A134869(n+8)-8)`
-/

namespace A184702.P11874789423527193685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A134869 (n + 8) - 8).toNat

end

end A184702.P11874789423527193685

/-! ## A184702.P4798037314981851157

`A184703(A000217(n+7)+n+1)`
-/

namespace A184702.P4798037314981851157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A184702.P4798037314981851157

/-! ## A184702.P12188056637261093627

`A184703(A034856(A020719(n))-5)`
-/

namespace A184702.P12188056637261093627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A034856 (A020719 n).toNat - 5).toNat

end

end A184702.P12188056637261093627

/-!
# A184703: T(n,k) is the number of strings of numbers x(i=1..n) in 0..k with sum i*x(i) equal to k*n.

The programs for A184703, there is no canonical definition to state claims against.
-/

/-! ## A184703.P177545026753465473

`A393584(A239986(n+1))`
-/

namespace A184703.P177545026753465473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393584 (A239986 (n + 1)).toNat

end

end A184703.P177545026753465473

/-! ## A184703.P1777069124233973390

`A322260(ceil((A073133(n+1)+1)/2))`
-/

namespace A184703.P1777069124233973390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322260 ⌈(A073133 (n + 1) + 1 : ℚ) / 2⌉.toNat

end

end A184703.P1777069124233973390

/-! ## A184703.P8233732907335702076

`A000005(A108411(A081572(n)))`
-/

namespace A184703.P8233732907335702076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A108411 (A081572 n).toNat).toNat

end

end A184703.P8233732907335702076

/-! ## A184703.P2679741357987518143

`A008619(A086350(n))%A334332(n+1)`
-/

namespace A184703.P2679741357987518143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A086350 n).toNat) (A334332 (n + 1))

end

end A184703.P2679741357987518143

/-! ## A184703.P7324927235534173729

`A008619(A073133(n+1))%A334332(n+1)`
-/

namespace A184703.P7324927235534173729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A073133 (n + 1)).toNat) (A334332 (n + 1))

end

end A184703.P7324927235534173729

/-!
# A184704: Number of strings of numbers x(i=1..4) in 0..n with sum i*x(i) equal to n*4.

The programs for A184704, the canonical program `A184704.P5972516983806143704` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184704 has offset 1).

The definition of A184704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 874 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184704.P5972516983806143704

`a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` with `a(0)=2, a(1)=7, a(2)=14, a(3)=28, a(4)=46, a(5)=74, a(6)=107, a(7)=154, a(8)=208, a(9)=278`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184704

/-- `a(n-1)+a(n-2)-2*a(n-5)+a(n-8)+a(n-9)-a(n-10)` -/
def P5972516983806143704.Spec : Prop :=
  ∀ n, P5972516983806143704.a n = A184704 (n + 1)

theorem P5972516983806143704.correct : P5972516983806143704.Spec := by
  intro n
  simp only [A184704, Nat.add_sub_cancel]

end A184704

/-! ## A184704.P7209816994659090361

`A008766(n+1)+∑[A274221(n+2)]`
-/

namespace A184704.P7209816994659090361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274221 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008766 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184704.P7209816994659090361

namespace A184704

/-- `A008766(n+1)+∑[A274221(n+2)]` -/
def P7209816994659090361.Spec : Prop :=
  ∀ n, P7209816994659090361.a n = A184704 (n + 1)

end A184704

/-! ## A184704.P53725387954239720

`A008766(n+1)+A001400(3*n+1)`
-/

namespace A184704.P53725387954239720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008766 (n + 1) + A001400 (3 * n + 1)

end

end A184704.P53725387954239720

namespace A184704

/-- `A008766(n+1)+A001400(3*n+1)` -/
def P53725387954239720.Spec : Prop :=
  ∀ n, P53725387954239720.a n = A184704 (n + 1)

end A184704

/-! ## A184704.P16181712747333707436

`A184703(∑[n+3]+7)`
-/

namespace A184704.P16181712747333707436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A184704.P16181712747333707436

namespace A184704

/-- `A184703(∑[n+3]+7)` -/
def P16181712747333707436.Spec : Prop :=
  ∀ n, P16181712747333707436.a n = A184704 (n + 1)

end A184704

/-! ## A184704.P16004977644806389257

`record[A184703(A167499(n)-1)]`
-/

namespace A184704.P16004977644806389257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184704.P16004977644806389257

namespace A184704

/-- `record[A184703(A167499(n)-1)]` -/
def P16004977644806389257.Spec : Prop :=
  ∀ n, P16004977644806389257.a n = A184704 (n + 1)

end A184704

/-! ## A184704.P17537149749701482999

`gcd(A000038(n), A184703(A167499(n+2)-1))`
-/

namespace A184704.P17537149749701482999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A184703 (A167499 (n + 2) - 1).toNat)

end

end A184704.P17537149749701482999

namespace A184704

/-- `gcd(A000038(n), A184703(A167499(n+2)-1))` -/
def P17537149749701482999.Spec : Prop :=
  ∀ n, (P17537149749701482999.a n : ℤ) = A184704 (n + 1)

end A184704

/-! ## A184704.P17778689233289135667

`A184703(A167614(n+2)+1)%A134607(n+1)`
-/

namespace A184704.P17778689233289135667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184703 (A167614 (n + 2) + 1).toNat) (A134607 (n + 1))

end

end A184704.P17778689233289135667

namespace A184704

/-- `A184703(A167614(n+2)+1)%A134607(n+1)` -/
def P17778689233289135667.Spec : Prop :=
  ∀ n, P17778689233289135667.a n = A184704 (n + 1)

end A184704

/-! ## A184704.P1116319176158918313

`A184703(A167499(n+2)-1)%A048578(n+1)`
-/

namespace A184704.P1116319176158918313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184703 (A167499 (n + 2) - 1).toNat) (A048578 (n + 1))

end

end A184704.P1116319176158918313

namespace A184704

/-- `A184703(A167499(n+2)-1)%A048578(n+1)` -/
def P1116319176158918313.Spec : Prop :=
  ∀ n, P1116319176158918313.a n = A184704 (n + 1)

end A184704

/-! ## A184704.P15059893817697244314

`A184703(A000217(n+3)+4)%A001262(n+1)`
-/

namespace A184704.P15059893817697244314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184703 (A000217 (n + 3) + 4).toNat) (A001262 (n + 1))

end

end A184704.P15059893817697244314

namespace A184704

/-- `A184703(A000217(n+3)+4)%A001262(n+1)` -/
def P15059893817697244314.Spec : Prop :=
  ∀ n, P15059893817697244314.a n = A184704 (n + 1)

end A184704

/-!
# A184705: Number of strings of numbers x(i=1..5) in 0..n with sum i*x(i) equal to n*5.

The programs for A184705, there is no canonical definition to state claims against.
-/

/-! ## A184705.P13063939746651772259

`A184703(A167499(n+3))`
-/

namespace A184705.P13063939746651772259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A167499 (n + 3)).toNat

end

end A184705.P13063939746651772259

/-! ## A184705.P12034059426684484778

`A184703(A155212(n)+13)`
-/

namespace A184705.P12034059426684484778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A155212 n + 13).toNat

end

end A184705.P12034059426684484778

/-! ## A184705.P1355060218141066149

`A184703(A000217(n+4)+5)`
-/

namespace A184705.P1355060218141066149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000217 (n + 4) + 5).toNat

end

end A184705.P1355060218141066149

/-! ## A184705.P12301457895203747419

`A184703(A000096(n+4)-(n-1))`
-/

namespace A184705.P12301457895203747419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A184705.P12301457895203747419

/-! ## A184705.P7695749147895789220

`A184703(A000124(n+5)-(n+1))`
-/

namespace A184705.P7695749147895789220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A184705.P7695749147895789220

/-! ## A184705.P7092213737664058087

`A184703(A055999(n+3)-2*n)`
-/

namespace A184705.P7092213737664058087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A184705.P7092213737664058087

/-! ## A184705.P7113129892524091583

`A184703(A046691(n+4)-2*(n+1))`
-/

namespace A184705.P7113129892524091583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A046691 (n + 4) - (2 * (n + 1) : ℤ)).toNat

end

end A184705.P7113129892524091583

/-! ## A184705.P3450652410236172125

`A184703(A038722(Δ[A023545(n+1)]))`
-/

namespace A184705.P3450652410236172125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A184705.P3450652410236172125

/-! ## A184705.P1838212348820487000

`A184703(A034856(n+1)+2*A020719(n))`
-/

namespace A184705.P1838212348820487000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A034856 (n + 1) + 2 * A020719 n).toNat

end

end A184705.P1838212348820487000

/-! ## A184705.P16697689101764880255

`A184703(A020719(n)+A034856(n+1)+A020719(n))`
-/

namespace A184705.P16697689101764880255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A020719 n + (A034856 (n + 1) + A020719 n)).toNat

end

end A184705.P16697689101764880255

/-!
# A184706: Number of strings of numbers x(i=1..6) in 0..n with sum i*x(i) equal to n*6.

The programs for A184706, there is no canonical definition to state claims against.
-/

/-! ## A184706.P7830609506806045585

`A184703(A166136(n+4))`
-/

namespace A184706.P7830609506806045585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A166136 (n + 4)).toNat

end

end A184706.P7830609506806045585

/-! ## A184706.P7230278758236083574

`A184703(A167499(n+4)+1)`
-/

namespace A184706.P7230278758236083574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A167499 (n + 4) + 1).toNat

end

end A184706.P7230278758236083574

/-! ## A184706.P12056011699258757105

`A184703(A167614(n+4)+3)`
-/

namespace A184706.P12056011699258757105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A167614 (n + 4) + 3).toNat

end

end A184706.P12056011699258757105

/-! ## A184706.P10548549327292971082

`A184703(A000217(n+5)+6)`
-/

namespace A184706.P10548549327292971082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000217 (n + 5) + 6).toNat

end

end A184706.P10548549327292971082

/-! ## A184706.P926715386007817362

`A184703(A000124(n+6)-(n+1))`
-/

namespace A184706.P926715386007817362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A184706.P926715386007817362

/-!
# A184707: Number of strings of numbers x(i=1..7) in 0..n with sum i*x(i) equal to n*7.

The programs for A184707, there is no canonical definition to state claims against.
-/

/-! ## A184707.P16235972889405941195

`A184703(A167487(n+5))`
-/

namespace A184707.P16235972889405941195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A167487 (n + 5)).toNat

end

end A184707.P16235972889405941195

/-! ## A184707.P2167931106851822463

`A184703(A167499(n+5)+2)`
-/

namespace A184707.P2167931106851822463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A167499 (n + 5) + 2).toNat

end

end A184707.P2167931106851822463

/-! ## A184707.P12073697581327156395

`A184703(A000124(n+6)+6)`
-/

namespace A184707.P12073697581327156395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000124 (n + 6) + 6).toNat

end

end A184707.P12073697581327156395

/-! ## A184707.P5890745771542635884

`A184703(A000217(n+6)+7)`
-/

namespace A184707.P5890745771542635884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000217 (n + 6) + 7).toNat

end

end A184707.P5890745771542635884

/-! ## A184707.P7880872059246608875

`A184703(eq[6, A002262(n)]+1)`
-/

namespace A184707.P7880872059246608875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A184707.P7880872059246608875

/-! ## A184707.P13198008760849776839

`A184703(eq[6, A002260(n+1)]+n+8)`
-/

namespace A184707.P13198008760849776839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 8))

end

end A184707.P13198008760849776839

/-!
# A184708: Number of strings of numbers x(i=1..8) in 0..n with sum i*x(i) equal to n*8.

The programs for A184708, there is no canonical definition to state claims against.
-/

/-! ## A184708.P13091826426588298841

`A184703(A167499(n+6)+3)`
-/

namespace A184708.P13091826426588298841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A167499 (n + 6) + 3).toNat

end

end A184708.P13091826426588298841

/-! ## A184708.P8279502884337548210

`A184703(A000124(n+7)+7)`
-/

namespace A184708.P8279502884337548210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000124 (n + 7) + 7).toNat

end

end A184708.P8279502884337548210

/-! ## A184708.P3101621353710464095

`A184703(A000217(n+7)+8)`
-/

namespace A184708.P3101621353710464095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000217 (n + 7) + 8).toNat

end

end A184708.P3101621353710464095

/-! ## A184708.P13451682630546056821

`A184703(A046691(n+5)+12)`
-/

namespace A184708.P13451682630546056821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A046691 (n + 5) + 12).toNat

end

end A184708.P13451682630546056821

/-! ## A184708.P10248324756752298950

`A184703(A034856(n+7)-(n-2))`
-/

namespace A184708.P10248324756752298950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A034856 (n + 7) - ((n : ℤ) - 2)).toNat

end

end A184708.P10248324756752298950

/-! ## A184708.P17438277347672107103

`A184703(A052905(n+6)-3-Δ[n²])`
-/

namespace A184708.P17438277347672107103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A052905 (n + 6) - 3 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A184708.P17438277347672107103

/-!
# A184709: Number of strings of numbers x(i=1..9) in 0..n with sum i*x(i) equal to n*9.

The programs for A184709, there is no canonical definition to state claims against.
-/

/-! ## A184709.P1040522125204941482

`A184703(A167487(n+7)+2)`
-/

namespace A184709.P1040522125204941482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A167487 (n + 7) + 2).toNat

end

end A184709.P1040522125204941482

/-! ## A184709.P9286218216378533859

`A184703(A167499(n+7)+4)`
-/

namespace A184709.P9286218216378533859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A167499 (n + 7) + 4).toNat

end

end A184709.P9286218216378533859

/-! ## A184709.P13965633721510441383

`A184703(A000124(n+8)+8)`
-/

namespace A184709.P13965633721510441383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000124 (n + 8) + 8).toNat

end

end A184709.P13965633721510441383

/-! ## A184709.P14300813990414978427

`A184703(A000217(n+8)+9)`
-/

namespace A184709.P14300813990414978427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000217 (n + 8) + 9).toNat

end

end A184709.P14300813990414978427

/-! ## A184709.P9278716522138410127

`A184703(A052905(n+7)-5-2*n)`
-/

namespace A184709.P9278716522138410127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A052905 (n + 7) - 5 - (2 * n : ℤ)).toNat

end

end A184709.P9278716522138410127

/-!
# A184710: Number of strings of numbers x(i=1..10) in 0..n with Sum_{i=1..10} i*x(i) = n*10.

The programs for A184710, there is no canonical definition to state claims against.
-/

/-! ## A184710.P17201852028570497234

`A184703(A167499(n+8)+5)`
-/

namespace A184710.P17201852028570497234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A167499 (n + 8) + 5).toNat

end

end A184710.P17201852028570497234

/-! ## A184710.P822137934566181099

`A184703(A000217(n+9)+10)`
-/

namespace A184710.P822137934566181099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000217 (n + 9) + 10).toNat

end

end A184710.P822137934566181099

/-! ## A184710.P9782510618094525501

`A184703(eq[11, A131818(n+1)])`
-/

namespace A184710.P9782510618094525501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184710.P9782510618094525501

/-! ## A184710.P3330412703543282994

`A184703(A000124(n+10)-(n+1))`
-/

namespace A184710.P3330412703543282994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000124 (n + 10) - (n + 1 : ℤ)).toNat

end

end A184710.P3330412703543282994

/-! ## A184710.P5391434578248648368

`A184703(eq[9, A002262(n)]+1)+A173728(n)%2`
-/

namespace A184710.P5391434578248648368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + Int.tmod (A173728 (n + 12)) 2

end

end A184710.P5391434578248648368

/-!
# A184711: Number of strings of numbers x(i=1..11) in 0..n with sum i*x(i) equal to n*11.

The programs for A184711, there is no canonical definition to state claims against.
-/

/-! ## A184711.P5004992601271502106

`A184703(eq[19, A066657(n)])`
-/

namespace A184711.P5004992601271502106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184711.P5004992601271502106

/-! ## A184711.P9771676550705389040

`A184703(A000124(n+10)+10)`
-/

namespace A184711.P9771676550705389040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000124 (n + 10) + 10).toNat

end

end A184711.P9771676550705389040

/-! ## A184711.P1141542097462755221

`A184703(A000217(n+10)+11)`
-/

namespace A184711.P1141542097462755221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A000217 (n + 10) + 11).toNat

end

end A184711.P1141542097462755221

/-! ## A184711.P3758602797827014482

`A184703(A161680(n+11)+11)`
-/

namespace A184711.P3758602797827014482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (A161680 (n + 11) + 11).toNat

end

end A184711.P3758602797827014482

/-! ## A184711.P3395601248224974795

`A184703(eq[12, A131818(n+1)])`
-/

namespace A184711.P3395601248224974795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184711.P3395601248224974795

/-!
# A184712: Number of strings of numbers x(i=1..n) in 0..n with sum i*x(i)^3 equal to n^4.

The programs for A184712, there is no canonical definition to state claims against.
-/

/-! ## A184712.P9155164536432524497

`A184720(∑[4*n]+1)`
-/

namespace A184712.P9155164536432524497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184712.P9155164536432524497

/-! ## A184712.P2880948270190720860

`A184720(A001844(n))+char[16]`
-/

namespace A184712.P2880948270190720860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184712.P2880948270190720860

/-! ## A184712.P15437735116378836248

`A184720(A001844(n))*A361338(n)`
-/

namespace A184712.P15437735116378836248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A001844 n).toNat * A361338 n

end

end A184712.P15437735116378836248

/-! ## A184712.P1926745461780004138

`gcd(A000038(n), A184720(A001844(n)))`
-/

namespace A184712.P1926745461780004138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A184720 (A001844 n).toNat)

end

end A184712.P1926745461780004138

/-! ## A184712.P18234572595197019873

`or(A000007(n), A184720(A001844(n)))`
-/

namespace A184712.P18234572595197019873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A184720 (A001844 n).toNat)

end

end A184712.P18234572595197019873

/-!
# A184713: Number of strings of numbers x(i=1..n) in 0..2 with sum i*x(i)^3 equal to n*8.

The programs for A184713, there is no canonical definition to state claims against.
-/

/-! ## A184713.P513715061250196845

`A184720(∑[n+2])`
-/

namespace A184713.P513715061250196845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184713.P513715061250196845

/-! ## A184713.P8591371584468013695

`or(char[1], A184720(A000096(n+1)))`
-/

namespace A184713.P8591371584468013695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184720 (A000096 (n + 1)).toNat)

end

end A184713.P8591371584468013695

/-! ## A184713.P7618117714743559547

`A184720(A000096(n+1))%A000108(n+2)`
-/

namespace A184713.P7618117714743559547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184720 (A000096 (n + 1)).toNat) (A000108 (n + 2))

end

end A184713.P7618117714743559547

/-! ## A184713.P16791362474984455402

`A007318(C(2, n))*A184720(A000096(n+1))`
-/

namespace A184713.P16791362474984455402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A184720 (A000096 (n + 1)).toNat

end

end A184713.P16791362474984455402

/-! ## A184713.P5027337307153670251

`A184720(A000096(n+1))+tan(π*A007318(n))`
-/

namespace A184713.P5027337307153670251
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184720 (A000096 (n + 1)).toNat : ℝ) + Real.tan (Real.pi * (A007318 n : ℝ))

end

end A184713.P5027337307153670251

/-!
# A184714: Number of words of numbers x(1), ..., x(n), in 0..3 such that Sum_{i=1..n} i*x(i)^3 = 27*n.

The programs for A184714, there is no canonical definition to state claims against.
-/

/-! ## A184714.P2179445455372658891

`A184720(∑[n+3]+1)`
-/

namespace A184714.P2179445455372658891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184714.P2179445455372658891

/-! ## A184714.P11292364916898005720

`A184720(Δ[A008778(n)])%A000108(n+2)`
-/

namespace A184714.P11292364916898005720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184720 (f1 (n + 1) - f1 n).toNat) (A000108 (n + 2))

end

end A184714.P11292364916898005720

/-! ## A184714.P16150292777435951331

`A014963(6*(n+1))*A184720(Δ[A008778(n)])`
-/

namespace A184714.P16150292777435951331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A184720 (f1 (n + 1) - f1 n).toNat

end

end A184714.P16150292777435951331

/-! ## A184714.P5943576832487879500

`A184720(Δ[A008778(n)])^(A000040(n+1)%2)`
-/

namespace A184714.P5943576832487879500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184720 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A184714.P5943576832487879500

/-!
# A184715: Number of strings of numbers x(i=1..n) in 0..4 with sum i*x(i)^3 equal to n*64.

The programs for A184715, there is no canonical definition to state claims against.
-/

/-! ## A184715.P17500486094108615468

`A184720(∑[n+4]+3)`
-/

namespace A184715.P17500486094108615468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A184715.P17500486094108615468

/-! ## A184715.P11297087211588535792

`A184720(A055998(n+2))%A188530(n+1)`
-/

namespace A184715.P11297087211588535792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184720 (A055998 (n + 2)).toNat) (A188530 (n + 1))

end

end A184715.P11297087211588535792

/-! ## A184715.P8634178601795238362

`A184720(A155212(n)+5)+A074644(3*n+5)`
-/

namespace A184715.P8634178601795238362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A155212 n + 5).toNat + A074644 (3 * n + 5)

end

end A184715.P8634178601795238362

/-! ## A184715.P11931562081699253253

`A184720(A155212(n)+5)%A023941(2*n+3)`
-/

namespace A184715.P11931562081699253253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184720 (A155212 n + 5).toNat) (A023941 (2 * n + 3))

end

end A184715.P11931562081699253253

/-! ## A184715.P6894751791199350080

`A184720(A155212(n)+5)%A048359(n+1)`
-/

namespace A184715.P6894751791199350080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184720 (A155212 n + 5).toNat) (A048359 (n + 1))

end

end A184715.P6894751791199350080

/-!
# A184716: Number of strings of numbers x(i=1..n) in 0..5 with sum i*x(i)^3 equal to n*125.

The programs for A184716, there is no canonical definition to state claims against.
-/

/-! ## A184716.P14048377751594581192

`A184720(∑[n+5]+6)`
-/

namespace A184716.P14048377751594581192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A184716.P14048377751594581192

/-! ## A184716.P12157245413195574777

`A184720(A046691(n+3))+char[43]`
-/

namespace A184716.P12157245413195574777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184716.P12157245413195574777

/-! ## A184716.P18051776789906097313

`A184720(A046691(n+3))%A000108(n+3)`
-/

namespace A184716.P18051776789906097313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184720 (A046691 (n + 3)).toNat) (A000108 (n + 3))

end

end A184716.P18051776789906097313

/-! ## A184716.P7323096301923804061

`A007318(C(2, n))*A184720(A046691(n+3))`
-/

namespace A184716.P7323096301923804061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A184720 (A046691 (n + 3)).toNat

end

end A184716.P7323096301923804061

/-! ## A184716.P11297354748209402794

`A000041(C(n, n²))*A184720(A046691(n+3))`
-/

namespace A184716.P11297354748209402794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) * A184720 (A046691 (n + 3)).toNat

end

end A184716.P11297354748209402794

/-!
# A184717: Number of strings of numbers x(i=1..n) in 0..6 with sum i*x(i)^3 equal to n*216.

The programs for A184717, there is no canonical definition to state claims against.
-/

/-! ## A184717.P2516089116039369196

`A184720(A052905(n+3))`
-/

namespace A184717.P2516089116039369196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A052905 (n + 3)).toNat

end

end A184717.P2516089116039369196

/-! ## A184717.P7429196222662357817

`A184720(A056119(n)+16)`
-/

namespace A184717.P7429196222662357817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A056119 n + 16).toNat

end

end A184717.P7429196222662357817

/-! ## A184717.P3437449401642130041

`A184720(eq[3, A219347(n)])`
-/

namespace A184717.P3437449401642130041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184717.P3437449401642130041

/-! ## A184717.P13173323164173566881

`A184720(eq[5, A193592(n)])`
-/

namespace A184717.P13173323164173566881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184717.P13173323164173566881

/-! ## A184717.P9396193404135774290

`A184720(A055999(n+3)+1)`
-/

namespace A184717.P9396193404135774290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A055999 (n + 3) + 1).toNat

end

end A184717.P9396193404135774290

/-!
# A184718: Number of strings of numbers x(i=1..n) in 0..7 with sum i*x(i)^3 equal to n*343.

The programs for A184718, there is no canonical definition to state claims against.
-/

/-! ## A184718.P4927464926377421985

`A184720(A055999(n+4))`
-/

namespace A184718.P4927464926377421985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A055999 (n + 4)).toNat

end

end A184718.P4927464926377421985

/-! ## A184718.P15746548869289473799

`A184720(eq[4, A219347(n)])`
-/

namespace A184718.P15746548869289473799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184718.P15746548869289473799

/-! ## A184718.P13456184459655273247

`A184720(eq[6, A193592(n)])`
-/

namespace A184718.P13456184459655273247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184718.P13456184459655273247

/-! ## A184718.P16928242058003174780

`A184720(Δ[A023551(n+2)])`
-/

namespace A184718.P16928242058003174780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (f1 (n + 1) - f1 n).toNat

end

end A184718.P16928242058003174780

/-! ## A184718.P1108882875058652853

`A184720(A155212(n+3)+2)`
-/

namespace A184718.P1108882875058652853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A155212 (n + 3) + 2).toNat

end

end A184718.P1108882875058652853

/-!
# A184719: Number of strings of numbers x(i=1..n) in 0..8 with sum i*x(i)^3 equal to n*512.

The programs for A184719, there is no canonical definition to state claims against.
-/

/-! ## A184719.P15088990187679144820

`A184720(eq[5, A219347(n)])`
-/

namespace A184719.P15088990187679144820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184719.P15088990187679144820

/-! ## A184719.P17333786707754267906

`A184720(eq[7, A193592(n)])`
-/

namespace A184719.P17333786707754267906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184719.P17333786707754267906

/-! ## A184719.P7561130715445355944

`A184720(A046691(n+6)-3)`
-/

namespace A184719.P7561130715445355944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A046691 (n + 6) - 3).toNat

end

end A184719.P7561130715445355944

/-! ## A184719.P13697837207441675819

`A184720(A027379(n+6)-4)`
-/

namespace A184719.P13697837207441675819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A027379 (n + 6) - 4).toNat

end

end A184719.P13697837207441675819

/-! ## A184719.P2893404610344197459

`A184720(A000217(n+8)-7)`
-/

namespace A184719.P2893404610344197459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A000217 (n + 8) - 7).toNat

end

end A184719.P2893404610344197459

/-!
# A184720: T(n,k)=Number of strings of numbers x(i=1..n) in 0..k with sum i*x(i)^3 equal to n*k^3.

The programs for A184720, there is no canonical definition to state claims against.
-/

/-! ## A184720.P11367521773947143763

`A283431(A184848(n+1)^A010693(n))`
-/

namespace A184720.P11367521773947143763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (SequenceMachineLib.roundAway ((A184848 (n + 1) : ℚ) ^ (A010693 n : ℤ))).toNat

end

end A184720.P11367521773947143763

/-! ## A184720.P16325804590169262413

`A063733(A266994(n+1))%A182731(n+5)`
-/

namespace A184720.P16325804590169262413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063733 (A266994 (n + 1)).toNat) (A182731 (n + 5))

end

end A184720.P16325804590169262413

/-! ## A184720.P5695627918632813688

`A342499(A002843(A342499(A342499(A047913(n+1)))))`
-/

namespace A184720.P5695627918632813688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342499 (A002843 (A342499 (A342499 (A047913 (n + 1)).toNat).toNat).toNat).toNat

end

end A184720.P5695627918632813688

/-!
# A184721: Number of strings of numbers x(i=1..4) in 0..n with sum i*x(i)^3 equal to 4*n^3.

The programs for A184721, there is no canonical definition to state claims against.
-/

/-! ## A184721.P18317893767704532517

`A184720(∑[n+3]+7)`
-/

namespace A184721.P18317893767704532517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A184721.P18317893767704532517

/-!
# A184722: Number of strings of numbers x(i=1..5) in 0..n with sum i*x(i)^3 equal to 5*n^3.

The programs for A184722, there is no canonical definition to state claims against.
-/

/-! ## A184722.P9288200467790421812

`A184720(∑[n+4]+11)`
-/

namespace A184722.P9288200467790421812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A184722.P9288200467790421812

/-! ## A184722.P16690082192199625866

`A184720(A056000(n)+15)%A254370(n)`
-/

namespace A184722.P16690082192199625866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184720 (A056000 n + 15).toNat) (A254370 n)

end

end A184722.P16690082192199625866

/-! ## A184722.P6366914826107931337

`or(A000007(n), A184720(A056000(n)+15))`
-/

namespace A184722.P6366914826107931337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A184720 (A056000 n + 15).toNat)

end

end A184722.P6366914826107931337

/-!
# A184723: Number of strings of numbers x(i=1..6) in 0..n with sum i*x(i)^3 equal to 6*n^3.

The programs for A184723, there is no canonical definition to state claims against.
-/

/-! ## A184723.P2910130645850333777

`A184720(A166136(n+4))`
-/

namespace A184723.P2910130645850333777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A166136 (n + 4)).toNat

end

end A184723.P2910130645850333777

/-! ## A184723.P4576223168386074302

`A184720(A056115(n)+21)`
-/

namespace A184723.P4576223168386074302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A056115 n + 21).toNat

end

end A184723.P4576223168386074302

/-! ## A184723.P2743633802552955277

`A184720(∑[A020710(n)]+16)`
-/

namespace A184723.P2743633802552955277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A184723.P2743633802552955277

/-! ## A184723.P9140414786765101777

`A184720(A000124(n+5)+5)`
-/

namespace A184723.P9140414786765101777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A000124 (n + 5) + 5).toNat

end

end A184723.P9140414786765101777

/-! ## A184723.P10927156976527235543

`A184720(A134869(n+5)+5)`
-/

namespace A184723.P10927156976527235543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A134869 (n + 5) + 5).toNat

end

end A184723.P10927156976527235543

/-!
# A184724: Number of strings of numbers x(i=1..7) in 0..n with sum i*x(i)^3 equal to 7*n^3.

The programs for A184724, there is no canonical definition to state claims against.
-/

/-! ## A184724.P13883552263468287014

`A184720(A056119(n)+28)`
-/

namespace A184724.P13883552263468287014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A056119 n + 28).toNat

end

end A184724.P13883552263468287014

/-! ## A184724.P5566390539625965916

`A184720(A000124(n+6)+6)`
-/

namespace A184724.P5566390539625965916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A000124 (n + 6) + 6).toNat

end

end A184724.P5566390539625965916

/-! ## A184724.P2104604005717844237

`A184720(A000096(n+5)+8)`
-/

namespace A184724.P2104604005717844237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A000096 (n + 5) + 8).toNat

end

end A184724.P2104604005717844237

/-! ## A184724.P16055235364672563419

`A184720(A000217(n+6)+7)`
-/

namespace A184724.P16055235364672563419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A000217 (n + 6) + 7).toNat

end

end A184724.P16055235364672563419

/-! ## A184724.P4018076836847304441

`A184720(A052905(n+3)+12)`
-/

namespace A184724.P4018076836847304441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A052905 (n + 3) + 12).toNat

end

end A184724.P4018076836847304441

/-!
# A184725: Number of strings of numbers x(i=1..8) in 0..n with sum i*x(i)^3 equal to 8*n^3.

The programs for A184725, there is no canonical definition to state claims against.
-/

/-! ## A184725.P17957164445328507541

`A184720(A167487(n+6)+1)`
-/

namespace A184725.P17957164445328507541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A167487 (n + 6) + 1).toNat

end

end A184725.P17957164445328507541

/-! ## A184725.P8359417531819029697

`A184720(A000124(n+7)+7)`
-/

namespace A184725.P8359417531819029697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A000124 (n + 7) + 7).toNat

end

end A184725.P8359417531819029697

/-! ## A184725.P8085188319434502478

`A184720(A134869(n+7)+7)`
-/

namespace A184725.P8085188319434502478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A134869 (n + 7) + 7).toNat

end

end A184725.P8085188319434502478

/-! ## A184725.P4248872697025775673

`A184720(A000096(n+6)+9)`
-/

namespace A184725.P4248872697025775673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A000096 (n + 6) + 9).toNat

end

end A184725.P4248872697025775673

/-! ## A184725.P15465860804882517314

`A184720(A000217(n+7)+8)`
-/

namespace A184725.P15465860804882517314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184720 (A000217 (n + 7) + 8).toNat

end

end A184725.P15465860804882517314

/-!
# A184726: a(n) = A005408(n-1)/A090368(n-1) for n > 2 and a(n) = 0 for n <= 2.

The programs for A184726, there is no canonical definition to state claims against.
-/

/-! ## A184726.P3272107561343889530

`A184727(A004277(n))/2`
-/

namespace A184726.P3272107561343889530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184727 (A004277 n).toNat : ℚ) / 2

end

end A184726.P3272107561343889530

/-! ## A184726.P10182753212892447174

`A032742(A004280(n+1))*A157928(n)`
-/

namespace A184726.P10182753212892447174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A004280 (n + 1)).toNat * A157928 n

end

end A184726.P10182753212892447174

/-! ## A184726.P460604006730154311

`A032742(A004280(n+1))%A025065(n)`
-/

namespace A184726.P460604006730154311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (A004280 (n + 1)).toNat) (A025065 n)

end

end A184726.P460604006730154311

/-! ## A184726.P8603455754871203671

`A033567(n)%A126287(A004280(n+1))`
-/

namespace A184726.P8603455754871203671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033567 n) (A126287 (A004280 (n + 1)).toNat)

end

end A184726.P8603455754871203671

/-! ## A184726.P15733552373551632392

`A184727(A065190(2*n+1))/2`
-/

namespace A184726.P15733552373551632392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184727 (A065190 (2 * n + 1)).toNat : ℚ) / 2

end

end A184726.P15733552373551632392

/-! ## A184726.P16562956851185352299

`A032742(A267458(2*n))%A267458(2*n)`
-/

namespace A184726.P16562956851185352299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (A267458 (2 * n)).toNat) (A267458 (2 * n))

end

end A184726.P16562956851185352299

/-! ## A184726.P17125376038116384921

`A054576(A270545(n))%A000041(n)`
-/

namespace A184726.P17125376038116384921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054576 (A270545 n).toNat) (A000041 n)

end

end A184726.P17125376038116384921

/-! ## A184726.P10225418225418622797

`A032742(record[A141310(n)])%A001405(n)`
-/

namespace A184726.P10225418225418622797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A001405 n)

end

end A184726.P10225418225418622797

/-! ## A184726.P1429030432302724205

`A054576(A111284(n+1))%A000669(n+1)`
-/

namespace A184726.P1429030432302724205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054576 (A111284 (n + 1)).toNat) (A000669 (n + 1))

end

end A184726.P1429030432302724205

/-!
# A184727: a(n) = A005843(n-1)/A090369(n-1) for n > 2 and a(n) = 0 for n <= 2.

The programs for A184727, there is no canonical definition to state claims against.
-/

/-! ## A184727.P2690570705975046683

`A126286(A257174(n))%A257174(n)`
-/

namespace A184727.P2690570705975046683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126286 (A257174 n).toNat) (A257174 n)

end

end A184727.P2690570705975046683

/-! ## A184727.P11723093729351538584

`A028310(n)-A075861(A233583(n+1))`
-/

namespace A184727.P11723093729351538584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A075861 (A233583 (n + 1)).toNat

end

end A184727.P11723093729351538584

/-! ## A184727.P4247193168931015986

`A065033(2*n)-A075861(A233583(n+1))`
-/

namespace A184727.P4247193168931015986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) - A075861 (A233583 (n + 1)).toNat

end

end A184727.P4247193168931015986

/-! ## A184727.P6562082447618017665

`A123108(2*n)-A075861(A233583(n+1))`
-/

namespace A184727.P6562082447618017665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) - A075861 (A233583 (n + 1)).toNat

end

end A184727.P6562082447618017665

/-! ## A184727.P8583379699910768357

`A008619(A004273(n))-A075861(A233583(n+1))`
-/

namespace A184727.P8583379699910768357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat - A075861 (A233583 (n + 1)).toNat

end

end A184727.P8583379699910768357

/-! ## A184727.P4520669507600806227

`A007318(A000124(n))-A075861(A233583(n+1))`
-/

namespace A184727.P4520669507600806227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat - A075861 (A233583 (n + 1)).toNat

end

end A184727.P4520669507600806227

/-!
# A184728: a(n) = largest k such that A001358(n+1) = A001358(n) + (A001358(n) mod k), or 0 if no such k exists.

The programs for A184728, the canonical program `A184728.P3751268548465702367` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184728 has offset 1).

The definition of A184728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184728.P3751268548465702367

`(A001358(n+1)-A065516(n+1))*A157928(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A184728

/-- `(A001358(n+1)-A065516(n+1))*A157928(n)` -/
def P3751268548465702367.Spec : Prop :=
  ∀ n, P3751268548465702367.a n = A184728 (n + 1)

theorem P3751268548465702367.correct : P3751268548465702367.Spec := by
  intro n
  simp only [A184728, Nat.add_sub_cancel]

end A184728

/-! ## A184728.P2651146943571837523

`(A001358(n+1)-A065516(n+1))%A058331(n)`
-/

namespace A184728.P2651146943571837523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (n + 1) - A065516 (n + 1)) (A058331 n)

end

end A184728.P2651146943571837523

namespace A184728

/-- `(A001358(n+1)-A065516(n+1))%A058331(n)` -/
def P2651146943571837523.Spec : Prop :=
  ∀ n, P2651146943571837523.a n = A184728 (n + 1)

end A184728

/-! ## A184728.P4878225873937140344

`lcm(A001358(n+1)-A065516(n+1), A184729(n+1))`
-/

namespace A184728.P4878225873937140344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001358 (n + 1) - A065516 (n + 1)) (A184729 (n + 1))

end

end A184728.P4878225873937140344

namespace A184728

/-- `lcm(A001358(n+1)-A065516(n+1), A184729(n+1))` -/
def P4878225873937140344.Spec : Prop :=
  ∀ n, (P4878225873937140344.a n : ℤ) = A184728 (n + 1)

end A184728

/-! ## A184728.P18205552074900907703

`A130533(n+1)*A184729(n+1)`
-/

namespace A184728.P18205552074900907703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130533 (n + 1) * A184729 (n + 1)

end

end A184728.P18205552074900907703

namespace A184728

/-- `A130533(n+1)*A184729(n+1)` -/
def P18205552074900907703.Spec : Prop :=
  ∀ n, P18205552074900907703.a n = A184728 (n + 1)

end A184728

/-! ## A184728.P18103551591827380549

`lcm(A065516(n+1)-A001358(n+1), A130533(n+1))`
-/

namespace A184728.P18103551591827380549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065516 (n + 1) - A001358 (n + 1)) (A130533 (n + 1))

end

end A184728.P18103551591827380549

namespace A184728

/-- `lcm(A065516(n+1)-A001358(n+1), A130533(n+1))` -/
def P18103551591827380549.Spec : Prop :=
  ∀ n, (P18103551591827380549.a n : ℤ) = A184728 (n + 1)

end A184728

/-!
# A184729: a(n) = A184728(n)/A130533(n) unless A130533(n) = 0 in which case a(n) = 0.

The programs for A184729, there is no canonical definition to state claims against.
-/

/-! ## A184729.P9776915462375206952

`A184728(n+1)/A028310(A130533(n+1))`
-/

namespace A184729.P9776915462375206952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184728 (n + 1) : ℚ) / (A028310 (A130533 (n + 1)).toNat : ℚ)

end

end A184729.P9776915462375206952

/-!
# A184730: G.f.: exp( Sum_{n>=1} A184731(n)*x^n/n ) where A184731(n) = Sum_{k=0..n} C(n,k)^(k+1).

The programs for A184730, there is no canonical definition to state claims against.
-/

/-! ## A184730.P1090507048857102615

`A088468(a(n-1)²)` with `a(0)=1`
-/

namespace A184730.P1090507048857102615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088468 (a (n - 1) ^ 2).toNat

end

end A184730.P1090507048857102615

/-!
# A184731: a(n) = Sum_{k=0..n} C(n,k)^(k+1).

The programs for A184731, there is no canonical definition to state claims against.
-/

/-! ## A184731.P13773317748677443861

`A285499(a(n-1)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A184731.P13773317748677443861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A285499 (a (n - 1) * a (n - 2)).toNat

end

end A184731.P13773317748677443861

/-!
# A184732: a(n) = floor(n*r+h), where r=(1+sqrt(5))/2, h=-1/4; complement of A184733.

The programs for A184732, the canonical program `A184732.P15715545253695480124` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184732 has offset 1).

The definition of A184732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184732.P15715545253695480124

`comp[A184733(n+1)-1]+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184732

/-- `comp[A184733(n+1)-1]+1` -/
def P15715545253695480124.Spec : Prop :=
  ∀ n, (P15715545253695480124.a n : ℤ) = A184732 (n + 1)

theorem P15715545253695480124.correct : P15715545253695480124.Spec := by
  intro n
  simp only [A184732, Nat.add_sub_cancel]

end A184732

/-! ## A184732.P3464430845362559721

`A110654(A184738(n+1))+n`
-/

namespace A184732.P3464430845362559721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A184738 (n + 1)).toNat + (n : ℤ)

end

end A184732.P3464430845362559721

namespace A184732

/-- `A110654(A184738(n+1))+n` -/
def P3464430845362559721.Spec : Prop :=
  ∀ n, P3464430845362559721.a n = A184732 (n + 1)

end A184732

/-! ## A184732.P9834197067018325572

`A004526(A184738(n+1)+1)+n`
-/

namespace A184732.P9834197067018325572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184738 (n + 1) + 1).toNat + (n : ℤ)

end

end A184732.P9834197067018325572

namespace A184732

/-- `A004526(A184738(n+1)+1)+n` -/
def P9834197067018325572.Spec : Prop :=
  ∀ n, P9834197067018325572.a n = A184732 (n + 1)

end A184732

/-! ## A184732.P14175532115391243092

`floor(A184656(2*(n+1))/2)`
-/

namespace A184732.P14175532115391243092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184656 (2 * (n + 1)) : ℚ) / 2⌋

end

end A184732.P14175532115391243092

namespace A184732

/-- `floor(A184656(2*(n+1))/2)` -/
def P14175532115391243092.Spec : Prop :=
  ∀ n, P14175532115391243092.a n = A184732 (n + 1)

end A184732

/-! ## A184732.P10473536714158734639

`2*n+1-A002265(A195172(2*(n+1)))`
-/

namespace A184732.P10473536714158734639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A002265 (A195172 (2 * (n + 1))).toNat

end

end A184732.P10473536714158734639

namespace A184732

/-- `2*n+1-A002265(A195172(2*(n+1)))` -/
def P10473536714158734639.Spec : Prop :=
  ∀ n, P10473536714158734639.a n = A184732 (n + 1)

end A184732

/-! ## A184732.P5656948516259066307

`A184486(A001950(n+1))-A000201(n+1)`
-/

namespace A184732.P5656948516259066307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184486 (A001950 (n + 1)).toNat - A000201 (n + 1)

end

end A184732.P5656948516259066307

namespace A184732

/-- `A184486(A001950(n+1))-A000201(n+1)` -/
def P5656948516259066307.Spec : Prop :=
  ∀ n, P5656948516259066307.a n = A184732 (n + 1)

end A184732

/-! ## A184732.P8113792170983880952

`A008619(A184656(2*(n+1))-2)`
-/

namespace A184732.P8113792170983880952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184656 (2 * (n + 1)) - 2).toNat

end

end A184732.P8113792170983880952

namespace A184732

/-- `A008619(A184656(2*(n+1))-2)` -/
def P8113792170983880952.Spec : Prop :=
  ∀ n, P8113792170983880952.a n = A184732 (n + 1)

end A184732

/-! ## A184732.P13546257570886124739

`A004526(A022848(n+1)+n)`
-/

namespace A184732.P13546257570886124739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022848 (n + 1) + (n : ℤ)).toNat

end

end A184732.P13546257570886124739

namespace A184732

/-- `A004526(A022848(n+1)+n)` -/
def P13546257570886124739.Spec : Prop :=
  ∀ n, P13546257570886124739.a n = A184732 (n + 1)

end A184732

/-! ## A184732.P4182255615592468814

`A110654(n-(1-A022848(n+1)))`
-/

namespace A184732.P4182255615592468814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n : ℤ) - (1 - A022848 (n + 1))).toNat

end

end A184732.P4182255615592468814

namespace A184732

/-- `A110654(n-(1-A022848(n+1)))` -/
def P4182255615592468814.Spec : Prop :=
  ∀ n, P4182255615592468814.a n = A184732 (n + 1)

end A184732

/-! ## A184732.P7294385459967656789

`A060144(A004938(n+1)-1)`
-/

namespace A184732.P7294385459967656789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A004938 (n + 1) - 1).toNat

end

end A184732.P7294385459967656789

namespace A184732

/-- `A060144(A004938(n+1)-1)` -/
def P7294385459967656789.Spec : Prop :=
  ∀ n, P7294385459967656789.a n = A184732 (n + 1)

end A184732

/-! ## A184732.P14840012563837276707

`A123108(A189379(2*(n+1)))-(n+1)`
-/

namespace A184732.P14840012563837276707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A189379 (2 * (n + 1))).toNat - (n + 1 : ℤ)

end

end A184732.P14840012563837276707

namespace A184732

/-- `A123108(A189379(2*(n+1)))-(n+1)` -/
def P14840012563837276707.Spec : Prop :=
  ∀ n, P14840012563837276707.a n = A184732 (n + 1)

end A184732

/-!
# A184733: a(n) = floor(n*s+h-h*s), where s=(3+sqrt(5))/2, h=-1/4; complement of A184732.

The programs for A184733, the canonical program `A184733.P11068401614158211391` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184733 has offset 1).

The definition of A184733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184733.P11068401614158211391

`n+1+floor((n+1+1/4)*ϕ)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184733

/-- `n+1+floor((n+1+1/4)*ϕ)` -/
def P11068401614158211391.Spec : Prop :=
  ∀ n, P11068401614158211391.a n = A184733 (n + 1)

theorem P11068401614158211391.correct : P11068401614158211391.Spec := by
  intro n
  simp only [A184733, Nat.add_sub_cancel]

end A184733

/-! ## A184733.P13341463158097171693

`floor(A184487(n+1)/2)`
-/

namespace A184733.P13341463158097171693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184487 (n + 1) : ℚ) / 2⌋

end

end A184733.P13341463158097171693

namespace A184733

/-- `floor(A184487(n+1)/2)` -/
def P13341463158097171693.Spec : Prop :=
  ∀ n, P13341463158097171693.a n = A184733 (n + 1)

end A184733

/-! ## A184733.P10993069744849565244

`floor(A003622(4*n+5)/4)`
-/

namespace A184733.P10993069744849565244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003622 (4 * n + 5) : ℚ) / 4⌋

end

end A184733.P10993069744849565244

namespace A184733

/-- `floor(A003622(4*n+5)/4)` -/
def P10993069744849565244.Spec : Prop :=
  ∀ n, P10993069744849565244.a n = A184733 (n + 1)

end A184733

/-! ## A184733.P7566215677371954732

`A008619(A184486(n+1)+A004767(n))`
-/

namespace A184733.P7566215677371954732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184486 (n + 1) + A004767 n).toNat

end

end A184733.P7566215677371954732

namespace A184733

/-- `A008619(A184486(n+1)+A004767(n))` -/
def P7566215677371954732.Spec : Prop :=
  ∀ n, P7566215677371954732.a n = A184733 (n + 1)

end A184733

/-! ## A184733.P11732883131920577412

`A004526(A184487(n+1))`
-/

namespace A184733.P11732883131920577412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184487 (n + 1)).toNat

end

end A184733.P11732883131920577412

namespace A184733

/-- `A004526(A184487(n+1))` -/
def P11732883131920577412.Spec : Prop :=
  ∀ n, P11732883131920577412.a n = A184733 (n + 1)

end A184733

/-! ## A184733.P15801246038686306127

`A140106(A184519(n+2))`
-/

namespace A184733.P15801246038686306127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A184519 (n + 2)).toNat

end

end A184733.P15801246038686306127

namespace A184733

/-- `A140106(A184519(n+2))` -/
def P15801246038686306127.Spec : Prop :=
  ∀ n, P15801246038686306127.a n = A184733 (n + 1)

end A184733

/-! ## A184733.P12684878545390582203

`floor(A026274(A004768(n))/8)`
-/

namespace A184733.P12684878545390582203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026274 (A004768 n).toNat : ℚ) / 8⌋

end

end A184733.P12684878545390582203

namespace A184733

/-- `floor(A026274(A004768(n))/8)` -/
def P12684878545390582203.Spec : Prop :=
  ∀ n, P12684878545390582203.a n = A184733 (n + 1)

end A184733

/-!
# A184734: 

The programs for A184734, there is no canonical definition to state claims against.
-/

/-! ## A184734.P15944686975741824823

`A140397(n+1)+A005206(A003622(n+1)-A140397(n+1))`
-/

namespace A184734.P15944686975741824823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140397 (n + 1) + A005206 (A003622 (n + 1) - A140397 (n + 1)).toNat

end

end A184734.P15944686975741824823

/-! ## A184734.P8178675708468448979

`A005206(A140397(n+1)+A003622(n+1))`
-/

namespace A184734.P8178675708468448979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A140397 (n + 1) + A003622 (n + 1)).toNat

end

end A184734.P8178675708468448979

/-! ## A184734.P6454855457270044302

`ceil(A184658(2*(n+1))/2)`
-/

namespace A184734.P6454855457270044302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184658 (2 * (n + 1)) : ℚ) / 2⌉

end

end A184734.P6454855457270044302

/-! ## A184734.P3772179236143686435

`A181712(n+1)+A005378(A007066(n+1)-A181712(n+1))`
-/

namespace A184734.P3772179236143686435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181712 (n + 1) + A005378 (A007066 (n + 1) - A181712 (n + 1)).toNat

end

end A184734.P3772179236143686435

/-! ## A184734.P12727544364247194412

`A005378(A181712(n+1)+A007066(n+1))`
-/

namespace A184734.P12727544364247194412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A181712 (n + 1) + A007066 (n + 1)).toNat

end

end A184734.P12727544364247194412

/-! ## A184734.P1671410909039364190

`floor(A026351(3*(n+1))/3)`
-/

namespace A184734.P1671410909039364190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026351 (3 * (n + 1)) : ℚ) / 3⌋

end

end A184734.P1671410909039364190

/-! ## A184734.P15421712393683881297

`round(A000201(3*(n+1))/3)`
-/

namespace A184734.P15421712393683881297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000201 (3 * (n + 1)) : ℚ) / 3)

end

end A184734.P15421712393683881297

/-! ## A184734.P3728156479896176926

`A002264(A004919(n+1)-(2*n+1))`
-/

namespace A184734.P3728156479896176926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004919 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A184734.P3728156479896176926

/-! ## A184734.P14941405344343223345

`A300763(A004919(n+1)-2)`
-/

namespace A184734.P14941405344343223345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A004919 (n + 1) - 2).toNat

end

end A184734.P14941405344343223345

/-! ## A184734.P2098870747566795247

`A008620(A026352(3*(n+1)))-(n+2)`
-/

namespace A184734.P2098870747566795247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A026352 (3 * (n + 1))).toNat - (n + 2 : ℤ)

end

end A184734.P2098870747566795247

/-! ## A184734.P3737547977330528129

`and(A184582(n+1), A381707(n+1))`
-/

namespace A184734.P3737547977330528129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184582 (n + 1)) (A381707 (n + 1))

end

end A184734.P3737547977330528129

/-!
# A184735: a(n)=floor(n*s+h-h*s), where s=(3+sqrt(5))/2, h=1/3; complement of A184734.

The programs for A184735, the canonical program `A184735.P8042126409278798705` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184735 has offset 1).

The definition of A184735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184735.P8042126409278798705

`ceil(ϕ*(2/3+n)+n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184735

/-- `ceil(ϕ*(2/3+n)+n)` -/
def P8042126409278798705.Spec : Prop :=
  ∀ n, P8042126409278798705.a n = A184735 (n + 1)

theorem P8042126409278798705.correct : P8042126409278798705.Spec := by
  intro n
  simp only [A184735, Nat.add_sub_cancel]

end A184735

/-! ## A184735.P12531221319536584188

`round((A003622(3*n+2)+1)/3)`
-/

namespace A184735.P12531221319536584188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003622 (3 * n + 2) + 1 : ℚ) / 3)

end

end A184735.P12531221319536584188

namespace A184735

/-- `round((A003622(3*n+2)+1)/3)` -/
def P12531221319536584188.Spec : Prop :=
  ∀ n, P12531221319536584188.a n = A184735 (n + 1)

end A184735

/-! ## A184735.P7372985188131437380

`floor(A026352(3*n+2)/3)`
-/

namespace A184735.P7372985188131437380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026352 (3 * n + 2) : ℚ) / 3⌋

end

end A184735.P7372985188131437380

namespace A184735

/-- `floor(A026352(3*n+2)/3)` -/
def P7372985188131437380.Spec : Prop :=
  ∀ n, P7372985188131437380.a n = A184735 (n + 1)

end A184735

/-! ## A184735.P18330654962726533674

`round(A001950(3*n+2)/3)`
-/

namespace A184735.P18330654962726533674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001950 (3 * n + 2) : ℚ) / 3)

end

end A184735.P18330654962726533674

namespace A184735

/-- `round(A001950(3*n+2)/3)` -/
def P18330654962726533674.Spec : Prop :=
  ∀ n, P18330654962726533674.a n = A184735 (n + 1)

end A184735

/-! ## A184735.P12272282123992956671

`A002264(A003622(3*n+2)+2)`
-/

namespace A184735.P12272282123992956671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A003622 (3 * n + 2) + 2).toNat

end

end A184735.P12272282123992956671

namespace A184735

/-- `A002264(A003622(3*n+2)+2)` -/
def P12272282123992956671.Spec : Prop :=
  ∀ n, P12272282123992956671.a n = A184735 (n + 1)

end A184735

/-! ## A184735.P9619395378470719532

`A002264(A004957(2*(n+1)+n))`
-/

namespace A184735.P9619395378470719532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004957 (2 * (n + 1) + n)).toNat

end

end A184735.P9619395378470719532

namespace A184735

/-- `A002264(A004957(2*(n+1)+n))` -/
def P9619395378470719532.Spec : Prop :=
  ∀ n, P9619395378470719532.a n = A184735 (n + 1)

end A184735

/-! ## A184735.P13564866777243078856

`A008620(A026274(A016777(n)))`
-/

namespace A184735.P13564866777243078856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A026274 (A016777 n).toNat).toNat

end

end A184735.P13564866777243078856

namespace A184735

/-- `A008620(A026274(A016777(n)))` -/
def P13564866777243078856.Spec : Prop :=
  ∀ n, P13564866777243078856.a n = A184735 (n + 1)

end A184735

/-! ## A184735.P1966000382281419563

`A195174(A035338(n)+2)+n`
-/

namespace A184735.P1966000382281419563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A035338 n + 2).toNat + (n : ℤ)

end

end A184735.P1966000382281419563

namespace A184735

/-- `A195174(A035338(n)+2)+n` -/
def P1966000382281419563.Spec : Prop :=
  ∀ n, P1966000382281419563.a n = A184735 (n + 1)

end A184735

/-! ## A184735.P11304592984280403786

`A003849(3*A035336(n+1))+A003622(n+1)`
-/

namespace A184735.P11304592984280403786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (3 * A035336 (n + 1)).toNat + A003622 (n + 1)

end

end A184735.P11304592984280403786

namespace A184735

/-- `A003849(3*A035336(n+1))+A003622(n+1)` -/
def P11304592984280403786.Spec : Prop :=
  ∀ n, P11304592984280403786.a n = A184735 (n + 1)

end A184735

/-! ## A184735.P11405454866473502367

`A001950(n+1)-A005614(3*A035336(n+1))`
-/

namespace A184735.P11405454866473502367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) - A005614 (3 * A035336 (n + 1)).toNat

end

end A184735.P11405454866473502367

namespace A184735

/-- `A001950(n+1)-A005614(3*A035336(n+1))` -/
def P11405454866473502367.Spec : Prop :=
  ∀ n, P11405454866473502367.a n = A184735 (n + 1)

end A184735

/-! ## A184735.P15824659819762273389

`floor(∑[ratio[A188378(n)]])`
-/

namespace A184735.P15824659819762273389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188378 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A184735.P15824659819762273389

namespace A184735

/-- `floor(∑[ratio[A188378(n)]])` -/
def P15824659819762273389.Spec : Prop :=
  ∀ n, P15824659819762273389.a n = A184735 (n + 1)

end A184735

/-! ## A184735.P17001221467900760683

`floor(∑[ratio[∑[A000032(2*n)]]])`
-/

namespace A184735.P17001221467900760683
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A184735.P17001221467900760683

namespace A184735

/-- `floor(∑[ratio[∑[A000032(2*n)]]])` -/
def P17001221467900760683.Spec : Prop :=
  ∀ n, P17001221467900760683.a n = A184735 (n + 1)

end A184735

/-!
# A184736: floor(nr+h), where r=-1+2^(3/2), h=-1/2; complement of A184735.

The programs for A184736, the canonical program `A184736.P3648179815715570266` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184736 has offset 1).

The definition of A184736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184736.P9017577208400253599

`round((n+1)*sqrt(8)-(n+2))`
-/

namespace A184736.P9017577208400253599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.sqrt (8 : ℝ) - (n + 2 : ℝ))

end

end A184736.P9017577208400253599

namespace A184736

/-- `round((n+1)*sqrt(8)-(n+2))` -/
def P9017577208400253599.Spec : Prop :=
  ∀ n, P9017577208400253599.a n = A184736 (n + 1)

end A184736

/-! ## A184736.P3648179815715570266

`A022851(n+1)-(n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184736

/-- `A022851(n+1)-(n+2)` -/
def P3648179815715570266.Spec : Prop :=
  ∀ n, P3648179815715570266.a n = A184736 (n + 1)

theorem P3648179815715570266.correct : P3648179815715570266.Spec := by
  intro n
  simp only [A184736, Nat.add_sub_cancel]

end A184736

/-! ## A184736.P10316856147505466577

`A022846(2*(n+1))-(n+2)`
-/

namespace A184736.P10316856147505466577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (2 * (n + 1)) - (n + 2 : ℤ)

end

end A184736.P10316856147505466577

namespace A184736

/-- `A022846(2*(n+1))-(n+2)` -/
def P10316856147505466577.Spec : Prop :=
  ∀ n, P10316856147505466577.a n = A184736 (n + 1)

end A184736

/-! ## A184736.P14143603104184384312

`abs(A022846(Δ[n²]+1)+1-n)-3`
-/

namespace A184736.P14143603104184384312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022846 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + 1 - (n : ℤ)| - 3

end

end A184736.P14143603104184384312

namespace A184736

/-- `abs(A022846(Δ[n²]+1)+1-n)-3` -/
def P14143603104184384312.Spec : Prop :=
  ∀ n, P14143603104184384312.a n = A184736 (n + 1)

end A184736

/-! ## A184736.P14431935253883901159

`A000027(3*n+2)-A088462(A001951(2*(n+1)))`
-/

namespace A184736.P14431935253883901159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (3 * n + 2) - A088462 (A001951 (2 * (n + 1))).toNat

end

end A184736.P14431935253883901159

namespace A184736

/-- `A000027(3*n+2)-A088462(A001951(2*(n+1)))` -/
def P14431935253883901159.Spec : Prop :=
  ∀ n, P14431935253883901159.a n = A184736 (n + 1)

end A184736

/-! ## A184736.P5213032105084941669

`A052146(A005563(2*n+1))-n`
-/

namespace A184736.P5213032105084941669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A005563 (2 * n + 1)).toNat - (n : ℤ)

end

end A184736.P5213032105084941669

namespace A184736

/-- `A052146(A005563(2*n+1))-n` -/
def P5213032105084941669.Spec : Prop :=
  ∀ n, P5213032105084941669.a n = A184736 (n + 1)

end A184736

/-! ## A184736.P4893087679068730187

`A002024(A000290(2*(n+1)))-(n+2)`
-/

namespace A184736.P4893087679068730187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000290 (2 * (n + 1))).toNat - (n + 2 : ℤ)

end

end A184736.P4893087679068730187

namespace A184736

/-- `A002024(A000290(2*(n+1)))-(n+2)` -/
def P4893087679068730187.Spec : Prop :=
  ∀ n, P4893087679068730187.a n = A184736 (n + 1)

end A184736

/-!
# A184737: a(n) = floor(n*s+h-h*s), where s=-1+2^(3/2), h=-1/2; complement of A184736.

The programs for A184737, the canonical program `A184737.P17691551374496734365` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184737 has offset 1).

The definition of A184737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184737.P17691551374496734365

`∑[p?[2-Δ[A327256(n)]]]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184737

/-- `∑[p?[2-Δ[A327256(n)]]]` -/
def P17691551374496734365.Spec : Prop :=
  ∀ n, P17691551374496734365.a n = A184737 (n + 1)

theorem P17691551374496734365.correct : P17691551374496734365.Spec := by
  intro n
  simp only [A184737, Nat.add_sub_cancel]

end A184737

/-! ## A184737.P17690275589197899894

`A004526(A063957(n+2)+n)`
-/

namespace A184737.P17690275589197899894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A063957 (n + 2) + (n : ℤ)).toNat

end

end A184737.P17690275589197899894

namespace A184737

/-- `A004526(A063957(n+2)+n)` -/
def P17690275589197899894.Spec : Prop :=
  ∀ n, P17690275589197899894.a n = A184737 (n + 1)

end A184737

/-! ## A184737.P7249445541393082274

`A123108(A063957(n+2)+n)`
-/

namespace A184737.P7249445541393082274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A063957 (n + 2) + (n : ℤ)).toNat

end

end A184737.P7249445541393082274

namespace A184737

/-- `A123108(A063957(n+2)+n)` -/
def P7249445541393082274.Spec : Prop :=
  ∀ n, P7249445541393082274.a n = A184737 (n + 1)

end A184737

/-! ## A184737.P11942337330429743864

`A008619(A063957(n+2)+n)-1`
-/

namespace A184737.P11942337330429743864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A063957 (n + 2) + (n : ℤ)).toNat - 1

end

end A184737.P11942337330429743864

namespace A184737

/-- `A008619(A063957(n+2)+n)-1` -/
def P11942337330429743864.Spec : Prop :=
  ∀ n, P11942337330429743864.a n = A184737 (n + 1)

end A184737

/-! ## A184737.P15930843449223245044

`A065033(A063957(n+2)+n-1)`
-/

namespace A184737.P15930843449223245044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A063957 (n + 2) + ((n : ℤ) - 1)).toNat

end

end A184737.P15930843449223245044

namespace A184737

/-- `A065033(A063957(n+2)+n-1)` -/
def P15930843449223245044.Spec : Prop :=
  ∀ n, P15930843449223245044.a n = A184737 (n + 1)

end A184737

/-! ## A184737.P17023082701989817637

`A002265(A215247(n+2))+n+1`
-/

namespace A184737.P17023082701989817637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A215247 (n + 2)).toNat + (n + 1 : ℤ)

end

end A184737.P17023082701989817637

namespace A184737

/-- `A002265(A215247(n+2))+n+1` -/
def P17023082701989817637.Spec : Prop :=
  ∀ n, P17023082701989817637.a n = A184737 (n + 1)

end A184737

/-! ## A184737.P3855759285527106619

`A002265(A003151(2*n+3))+1+n`
-/

namespace A184737.P3855759285527106619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A003151 (2 * n + 3)).toNat + 1 + (n : ℤ)

end

end A184737.P3855759285527106619

namespace A184737

/-- `A002265(A003151(2*n+3))+1+n` -/
def P3855759285527106619.Spec : Prop :=
  ∀ n, P3855759285527106619.a n = A184737 (n + 1)

end A184737

/-! ## A184737.P18378525511254021645

`A131508(2*(A063957(n+2)+n))`
-/

namespace A184737.P18378525511254021645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (2 * (A063957 (n + 2) + (n : ℤ))).toNat

end

end A184737.P18378525511254021645

namespace A184737

/-- `A131508(2*(A063957(n+2)+n))` -/
def P18378525511254021645.Spec : Prop :=
  ∀ n, P18378525511254021645.a n = A184737 (n + 1)

end A184737

/-!
# A184738: floor(nr+h), where r=-1+sqrt(5), h=1/2; complement of A184735.

The programs for A184738, the canonical program `A184738.P12317671310958345823` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184738 has offset 1).

The definition of A184738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184738.P10468038009345506948

`round(2*(n+1)/ϕ)`
-/

namespace A184738.P10468038009345506948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n + 1 : ℝ) / Real.goldenRatio))

end

end A184738.P10468038009345506948

namespace A184738

/-- `round(2*(n+1)/ϕ)` -/
def P10468038009345506948.Spec : Prop :=
  ∀ n, P10468038009345506948.a n = A184738 (n + 1)

end A184738

/-! ## A184738.P6650402783637432138

`abs(round(2*xor(n, -1)/ϕ))`
-/

namespace A184738.P6650402783637432138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (2 * ((Int.xor (n : ℤ) (-1) : ℝ) / Real.goldenRatio))|

end

end A184738.P6650402783637432138

namespace A184738

/-- `abs(round(2*xor(n, -1)/ϕ))` -/
def P6650402783637432138.Spec : Prop :=
  ∀ n, P6650402783637432138.a n = A184738 (n + 1)

end A184738

/-! ## A184738.P14882095599931224647

`-round(xor(2*n, -2)/ϕ)`
-/

namespace A184738.P14882095599931224647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -SequenceMachineLib.roundAway ((Int.xor (2 * n : ℤ) (-2) : ℝ) / Real.goldenRatio)

end

end A184738.P14882095599931224647

namespace A184738

/-- `-round(xor(2*n, -2)/ϕ)` -/
def P14882095599931224647.Spec : Prop :=
  ∀ n, P14882095599931224647.a n = A184738 (n + 1)

end A184738

/-! ## A184738.P12317671310958345823

`∑[Δ[A022848(n)]-1]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184738

/-- `∑[Δ[A022848(n)]-1]` -/
def P12317671310958345823.Spec : Prop :=
  ∀ n, P12317671310958345823.a n = A184738 (n + 1)

theorem P12317671310958345823.correct : P12317671310958345823.Spec := by
  intro n
  simp only [A184738, Nat.add_sub_cancel]

end A184738

/-! ## A184738.P9595875572033796188

`∑[A214861(n+1)-1]`
-/

namespace A184738.P9595875572033796188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214861 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184738.P9595875572033796188

namespace A184738

/-- `∑[A214861(n+1)-1]` -/
def P9595875572033796188.Spec : Prop :=
  ∀ n, P9595875572033796188.a n = A184738 (n + 1)

end A184738

/-! ## A184738.P16546494627547811367

`A022848(n+1)-(n+1)`
-/

namespace A184738.P16546494627547811367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022848 (n + 1) - (n + 1 : ℤ)

end

end A184738.P16546494627547811367

namespace A184738

/-- `A022848(n+1)-(n+1)` -/
def P16546494627547811367.Spec : Prop :=
  ∀ n, P16546494627547811367.a n = A184738 (n + 1)

end A184738

/-! ## A184738.P6036158390795616782

`∑[A000010(Δ[round(n*sqrt(5))])]`
-/

namespace A184738.P6036158390795616782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (5 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184738.P6036158390795616782

namespace A184738

/-- `∑[A000010(Δ[round(n*sqrt(5))])]` -/
def P6036158390795616782.Spec : Prop :=
  ∀ n, P6036158390795616782.a n = A184738 (n + 1)

end A184738

/-! ## A184738.P4720519299838943950

`∑[A000045(Δ[round(n*sqrt(5))])]`
-/

namespace A184738.P4720519299838943950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (5 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184738.P4720519299838943950

namespace A184738

/-- `∑[A000045(Δ[round(n*sqrt(5))])]` -/
def P4720519299838943950.Spec : Prop :=
  ∀ n, P4720519299838943950.a n = A184738 (n + 1)

end A184738

/-! ## A184738.P2732887117730030773

`comp[A184739(n+1)-1]+1`
-/

namespace A184738.P2732887117730030773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184739 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184738.P2732887117730030773

namespace A184738

/-- `comp[A184739(n+1)-1]+1` -/
def P2732887117730030773.Spec : Prop :=
  ∀ n, (P2732887117730030773.a n : ℤ) = A184738 (n + 1)

end A184738

/-! ## A184738.P5748008007582855508

`comp[A189379(2*n+1)]+1`
-/

namespace A184738.P5748008007582855508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184738.P5748008007582855508

namespace A184738

/-- `comp[A189379(2*n+1)]+1` -/
def P5748008007582855508.Spec : Prop :=
  ∀ n, (P5748008007582855508.a n : ℤ) = A184738 (n + 1)

end A184738

/-! ## A184738.P3639932420923478161

`round(sqrt(∑[A017329(n)]))-(n+1)`
-/

namespace A184738.P3639932420923478161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)) - (n + 1 : ℤ)

end

end A184738.P3639932420923478161

namespace A184738

/-- `round(sqrt(∑[A017329(n)]))-(n+1)` -/
def P3639932420923478161.Spec : Prop :=
  ∀ n, P3639932420923478161.a n = A184738 (n + 1)

end A184738

/-! ## A184738.P11359314409900706566

`A004938(n+1)-3*(n+1)`
-/

namespace A184738.P11359314409900706566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 (n + 1) - (3 * (n + 1) : ℤ)

end

end A184738.P11359314409900706566

namespace A184738

/-- `A004938(n+1)-3*(n+1)` -/
def P11359314409900706566.Spec : Prop :=
  ∀ n, P11359314409900706566.a n = A184738 (n + 1)

end A184738

/-! ## A184738.P3799509301585481858

`A016789(n)-A184748(n+1)`
-/

namespace A184738.P3799509301585481858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A184748 (n + 1)

end

end A184738.P3799509301585481858

namespace A184738

/-- `A016789(n)-A184748(n+1)` -/
def P3799509301585481858.Spec : Prop :=
  ∀ n, P3799509301585481858.a n = A184738 (n + 1)

end A184738

/-! ## A184738.P10323889347461133223

`A016897(n)-A190080(n+1)`
-/

namespace A184738.P10323889347461133223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n - A190080 (n + 1)

end

end A184738.P10323889347461133223

namespace A184738

/-- `A016897(n)-A190080(n+1)` -/
def P10323889347461133223.Spec : Prop :=
  ∀ n, P10323889347461133223.a n = A184738 (n + 1)

end A184738

/-! ## A184738.P5489381529562168072

`A187341(n+1)-A189935(n+1)`
-/

namespace A184738.P5489381529562168072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187341 (n + 1) - A189935 (n + 1)

end

end A184738.P5489381529562168072

namespace A184738

/-- `A187341(n+1)-A189935(n+1)` -/
def P5489381529562168072.Spec : Prop :=
  ∀ n, P5489381529562168072.a n = A184738 (n + 1)

end A184738

/-! ## A184738.P2551278313277241156

`ceil(A001961(2*(n+1))/2)`
-/

namespace A184738.P2551278313277241156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001961 (2 * (n + 1)) : ℚ) / 2⌉

end

end A184738.P2551278313277241156

namespace A184738

/-- `ceil(A001961(2*(n+1))/2)` -/
def P2551278313277241156.Spec : Prop :=
  ∀ n, P2551278313277241156.a n = A184738 (n + 1)

end A184738

/-! ## A184738.P2622228244000131685

`A184656(2*(n+1))-Δ[n²]`
-/

namespace A184738.P2622228244000131685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184656 (2 * (n + 1)) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A184738.P2622228244000131685

namespace A184738

/-- `A184656(2*(n+1))-Δ[n²]` -/
def P2622228244000131685.Spec : Prop :=
  ∀ n, P2622228244000131685.a n = A184738 (n + 1)

end A184738

/-! ## A184738.P4327702657841310886

`A001961(2*(n+1))-A001961(n+1)`
-/

namespace A184738.P4327702657841310886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (2 * (n + 1)) - A001961 (n + 1)

end

end A184738.P4327702657841310886

namespace A184738

/-- `A001961(2*(n+1))-A001961(n+1)` -/
def P4327702657841310886.Spec : Prop :=
  ∀ n, P4327702657841310886.a n = A184738 (n + 1)

end A184738

/-! ## A184738.P7461523676069888996

`A022839(2*(n+1))-A276854(n+1)`
-/

namespace A184738.P7461523676069888996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (2 * (n + 1)) - A276854 (n + 1)

end

end A184738.P7461523676069888996

namespace A184738

/-- `A022839(2*(n+1))-A276854(n+1)` -/
def P7461523676069888996.Spec : Prop :=
  ∀ n, P7461523676069888996.a n = A184738 (n + 1)

end A184738

/-!
# A184739: floor(n*s+h-h*s), where s=3+sqrt(5), h=1/2; complement of A184738.

The programs for A184739, the canonical program `A184739.P7836081269569052161` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184739 has offset 1).

The definition of A184739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184739.P10849290750991973904

`round(Δ[(ϕ*n)²])`
-/

namespace A184739.P10849290750991973904
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio * (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A184739.P10849290750991973904

namespace A184739

/-- `round(Δ[(ϕ*n)²])` -/
def P10849290750991973904.Spec : Prop :=
  ∀ n, P10849290750991973904.a n = A184739 (n + 1)

end A184739

/-! ## A184739.P10497572953819520583

`round(ϕ*or(1, 2*n))+2*n+1`
-/

namespace A184739.P10497572953819520583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Nat.lor 1 (2 * n) : ℝ)) + (2 * n + 1 : ℤ)

end

end A184739.P10497572953819520583

namespace A184739

/-- `round(ϕ*or(1, 2*n))+2*n+1` -/
def P10497572953819520583.Spec : Prop :=
  ∀ n, P10497572953819520583.a n = A184739 (n + 1)

end A184739

/-! ## A184739.P7384820922114914058

`round(ϕ*xor(1, 2*n))+2*n+1`
-/

namespace A184739.P7384820922114914058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Nat.xor 1 (2 * n) : ℝ)) + (2 * n + 1 : ℤ)

end

end A184739.P7384820922114914058

namespace A184739

/-- `round(ϕ*xor(1, 2*n))+2*n+1` -/
def P7384820922114914058.Spec : Prop :=
  ∀ n, P7384820922114914058.a n = A184739 (n + 1)

end A184739

/-! ## A184739.P10381827564604455011

`round(ϕ/acot(2*n+1))+2*n+1`
-/

namespace A184739.P10381827564604455011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio / SequenceMachineLib.acot (2 * n + 1 : ℝ)) + (2 * n + 1 : ℤ)

end

end A184739.P10381827564604455011

namespace A184739

/-- `round(ϕ/acot(2*n+1))+2*n+1` -/
def P10381827564604455011.Spec : Prop :=
  ∀ n, P10381827564604455011.a n = A184739 (n + 1)

end A184739

/-! ## A184739.P15363996720456048547

`round((2*n+1)/ϕ)+lcm(2, 2*n+1)`
-/

namespace A184739.P15363996720456048547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) / Real.goldenRatio) + (Nat.lcm 2 (2 * n + 1) : ℤ)

end

end A184739.P15363996720456048547

namespace A184739

/-- `round((2*n+1)/ϕ)+lcm(2, 2*n+1)` -/
def P15363996720456048547.Spec : Prop :=
  ∀ n, P15363996720456048547.a n = A184739 (n + 1)

end A184739

/-! ## A184739.P6378119279252684238

`round(ϕ*C(2*n+1, 2*n))+2*n+1`
-/

namespace A184739.P6378119279252684238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Nat.choose (2 * n + 1) (2 * n) : ℝ)) + (2 * n + 1 : ℤ)

end

end A184739.P6378119279252684238

namespace A184739

/-- `round(ϕ*C(2*n+1, 2*n))+2*n+1` -/
def P6378119279252684238.Spec : Prop :=
  ∀ n, P6378119279252684238.a n = A184739 (n + 1)

end A184739

/-! ## A184739.P8963576983527237890

`A184747(n+1)+Δ[n²]`
-/

namespace A184739.P8963576983527237890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184747 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A184739.P8963576983527237890

namespace A184739

/-- `A184747(n+1)+Δ[n²]` -/
def P8963576983527237890.Spec : Prop :=
  ∀ n, P8963576983527237890.a n = A184739 (n + 1)

end A184739

/-! ## A184739.P7836081269569052161

`A184586(n+1)+3*n+2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184739

/-- `A184586(n+1)+3*n+2` -/
def P7836081269569052161.Spec : Prop :=
  ∀ n, P7836081269569052161.a n = A184739 (n + 1)

theorem P7836081269569052161.correct : P7836081269569052161.Spec := by
  intro n
  simp only [A184739, Nat.add_sub_cancel]

end A184739

/-! ## A184739.P5883048269490894574

`A184747(n+1)-A001478(n+1)+n`
-/

namespace A184739.P5883048269490894574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184747 (n + 1) - A001478 (n + 1) + (n : ℤ)

end

end A184739.P5883048269490894574

namespace A184739

/-- `A184747(n+1)-A001478(n+1)+n` -/
def P5883048269490894574.Spec : Prop :=
  ∀ n, P5883048269490894574.a n = A184739 (n + 1)

end A184739

/-! ## A184739.P9706475521110390013

`A004937(Δ[n²])`
-/

namespace A184739.P9706475521110390013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A184739.P9706475521110390013

namespace A184739

/-- `A004937(Δ[n²])` -/
def P9706475521110390013.Spec : Prop :=
  ∀ n, P9706475521110390013.a n = A184739 (n + 1)

end A184739

/-! ## A184739.P13696987069665562184

`A189379(Δ[n²])+1`
-/

namespace A184739.P13696987069665562184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A184739.P13696987069665562184

namespace A184739

/-- `A189379(Δ[n²])+1` -/
def P13696987069665562184.Spec : Prop :=
  ∀ n, P13696987069665562184.a n = A184739 (n + 1)

end A184739

/-! ## A184739.P10838997543291256249

`A058066(Δ[n²])+n+1`
-/

namespace A184739.P10838997543291256249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058066 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A184739.P10838997543291256249

namespace A184739

/-- `A058066(Δ[n²])+n+1` -/
def P10838997543291256249.Spec : Prop :=
  ∀ n, P10838997543291256249.a n = A184739 (n + 1)

end A184739

/-! ## A184739.P9560547944243292502

`ceil(A001962(2*n+1)/2)`
-/

namespace A184739.P9560547944243292502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001962 (2 * n + 1) : ℚ) / 2⌉

end

end A184739.P9560547944243292502

namespace A184739

/-- `ceil(A001962(2*n+1)/2)` -/
def P9560547944243292502.Spec : Prop :=
  ∀ n, P9560547944243292502.a n = A184739 (n + 1)

end A184739

/-! ## A184739.P3043255749589198633

`A058066(2*n+1)+1+n`
-/

namespace A184739.P3043255749589198633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058066 (2 * n + 1) + 1 + (n : ℤ)

end

end A184739.P3043255749589198633

namespace A184739

/-- `A058066(2*n+1)+1+n` -/
def P3043255749589198633.Spec : Prop :=
  ∀ n, P3043255749589198633.a n = A184739 (n + 1)

end A184739

/-! ## A184739.P17669384474342303933

`A007067(2*n+1)+Δ[n²]`
-/

namespace A184739.P17669384474342303933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A184739.P17669384474342303933

namespace A184739

/-- `A007067(2*n+1)+Δ[n²]` -/
def P17669384474342303933.Spec : Prop :=
  ∀ n, P17669384474342303933.a n = A184739 (n + 1)

end A184739

/-! ## A184739.P14472739454834247125

`A368649(2*n+1)-(2*n+1)`
-/

namespace A184739.P14472739454834247125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368649 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A184739.P14472739454834247125

namespace A184739

/-- `A368649(2*n+1)-(2*n+1)` -/
def P14472739454834247125.Spec : Prop :=
  ∀ n, P14472739454834247125.a n = A184739 (n + 1)

end A184739

/-! ## A184739.P17859912709199647144

`A078588(2*n+1)+A001966(n)`
-/

namespace A184739.P17859912709199647144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (2 * n + 1) + A001966 n

end

end A184739.P17859912709199647144

namespace A184739

/-- `A078588(2*n+1)+A001966(n)` -/
def P17859912709199647144.Spec : Prop :=
  ∀ n, P17859912709199647144.a n = A184739 (n + 1)

end A184739

/-! ## A184739.P3387727390838901619

`A001962(2*n+1)-A001966(n)`
-/

namespace A184739.P3387727390838901619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (2 * n + 1) - A001966 n

end

end A184739.P3387727390838901619

namespace A184739

/-- `A001962(2*n+1)-A001966(n)` -/
def P3387727390838901619.Spec : Prop :=
  ∀ n, P3387727390838901619.a n = A184739 (n + 1)

end A184739

/-! ## A184739.P14764222474269813398

`A078588(2*n+1)+A001950(2*n+1)`
-/

namespace A184739.P14764222474269813398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (2 * n + 1) + A001950 (2 * n + 1)

end

end A184739.P14764222474269813398

namespace A184739

/-- `A078588(2*n+1)+A001950(2*n+1)` -/
def P14764222474269813398.Spec : Prop :=
  ∀ n, P14764222474269813398.a n = A184739 (n + 1)

end A184739

/-!
# A184740: floor(n*(e-1)-1/2); complement of A184741.

The programs for A184740, the canonical program `A184740.P16451484989300559694` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184740 has offset 1).

The definition of A184740 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(e-1)-1/2)` (program `A184740.P16451484989300559694`, by `A184740.P16451484989300559694.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184740.P16451484989300559694

`floor((n+1)*(e-1)-1/2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184740

/-- `floor((n+1)*(e-1)-1/2)` -/
def P16451484989300559694.Spec : Prop :=
  ∀ n, P16451484989300559694.a n = A184740 (n + 1)

theorem P16451484989300559694.correct : P16451484989300559694.Spec := by
  intro n
  simp only [A184740, Nat.add_sub_cancel]

end A184740

/-! ## A184740.P739166349576782195

`abs(A022852(n+1)-(n+2))`
-/

namespace A184740.P739166349576782195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022852 (n + 1) - (n + 2 : ℤ)|

end

end A184740.P739166349576782195

namespace A184740

/-- `abs(A022852(n+1)-(n+2))` -/
def P739166349576782195.Spec : Prop :=
  ∀ n, P739166349576782195.a n = A184740 (n + 1)

end A184740

/-! ## A184740.P3740107616022419705

`A108599(A108599(A022852(n+1)-(n+2)))`
-/

namespace A184740.P3740107616022419705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (A108599 (A022852 (n + 1) - (n + 2 : ℤ)).toNat).toNat

end

end A184740.P3740107616022419705

namespace A184740

/-- `A108599(A108599(A022852(n+1)-(n+2)))` -/
def P3740107616022419705.Spec : Prop :=
  ∀ n, P3740107616022419705.a n = A184740 (n + 1)

end A184740

/-! ## A184740.P1617300613705015527

`A004526(A000210(2*(n+1))-1)`
-/

namespace A184740.P1617300613705015527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000210 (2 * (n + 1)) - 1).toNat

end

end A184740.P1617300613705015527

namespace A184740

/-- `A004526(A000210(2*(n+1))-1)` -/
def P1617300613705015527.Spec : Prop :=
  ∀ n, P1617300613705015527.a n = A184740 (n + 1)

end A184740

/-! ## A184740.P16612753625648261489

`A110654(A000210(2*(n+1))-2)`
-/

namespace A184740.P16612753625648261489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000210 (2 * (n + 1)) - 2).toNat

end

end A184740.P16612753625648261489

namespace A184740

/-- `A110654(A000210(2*(n+1))-2)` -/
def P16612753625648261489.Spec : Prop :=
  ∀ n, P16612753625648261489.a n = A184740 (n + 1)

end A184740

/-! ## A184740.P4614138079092142878

`A008619(A000210(2*(n+1))-3)`
-/

namespace A184740.P4614138079092142878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000210 (2 * (n + 1)) - 3).toNat

end

end A184740.P4614138079092142878

namespace A184740

/-- `A008619(A000210(2*(n+1))-3)` -/
def P4614138079092142878.Spec : Prop :=
  ∀ n, P4614138079092142878.a n = A184740 (n + 1)

end A184740

/-!
# A184741: floor(n*s+h-h*s), where s=(e-1)/(e-2) and h=-1/2; complement of A184740.

The programs for A184741, the canonical program `A184741.P10263354780089770362` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184741 has offset 1).

The definition of A184741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184741.P10263354780089770362

`∑[p?[2-Δ[A190843(n+1)]]]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184741

/-- `∑[p?[2-Δ[A190843(n+1)]]]` -/
def P10263354780089770362.Spec : Prop :=
  ∀ n, P10263354780089770362.a n = A184741 (n + 1)

theorem P10263354780089770362.correct : P10263354780089770362.Spec := by
  intro n
  simp only [A184741, Nat.add_sub_cancel]

end A184741

/-! ## A184741.P7590837697714541550

`A008619(A000062(2*n+3))+n`
-/

namespace A184741.P7590837697714541550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000062 (2 * n + 3)).toNat + (n : ℤ)

end

end A184741.P7590837697714541550

namespace A184741

/-- `A008619(A000062(2*n+3))+n` -/
def P7590837697714541550.Spec : Prop :=
  ∀ n, P7590837697714541550.a n = A184741 (n + 1)

end A184741

/-! ## A184741.P5315495691654127784

`A110654(A000062(2*n+3)+Δ[n²])`
-/

namespace A184741.P5315495691654127784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000062 (2 * n + 3) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A184741.P5315495691654127784

namespace A184741

/-- `A110654(A000062(2*n+3)+Δ[n²])` -/
def P5315495691654127784.Spec : Prop :=
  ∀ n, P5315495691654127784.a n = A184741 (n + 1)

end A184741

/-! ## A184741.P11304247991151433315

`A123108(A000062(2*n+3)+2*(n+1))`
-/

namespace A184741.P11304247991151433315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A000062 (2 * n + 3) + (2 * (n + 1) : ℤ)).toNat

end

end A184741.P11304247991151433315

namespace A184741

/-- `A123108(A000062(2*n+3)+2*(n+1))` -/
def P11304247991151433315.Spec : Prop :=
  ∀ n, P11304247991151433315.a n = A184741 (n + 1)

end A184741

/-! ## A184741.P8985609535133143239

`A065033(A005408(n)+A000062(2*n+3))`
-/

namespace A184741.P8985609535133143239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A005408 n + A000062 (2 * n + 3)).toNat

end

end A184741.P8985609535133143239

namespace A184741

/-- `A065033(A005408(n)+A000062(2*n+3))` -/
def P8985609535133143239.Spec : Prop :=
  ∀ n, P8985609535133143239.a n = A184741 (n + 1)

end A184741

/-!
# A184742: a(n) = floor(n*r + h), where r = sqrt(Pi), h = -1/2.

The programs for A184742, the canonical program `A184742.P18379976018883121207` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184742 has offset 1).

The definition of A184742 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184742.P18379976018883121207

`floor((n+1)*sqrt(π)-1/2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184742

/-- `floor((n+1)*sqrt(π)-1/2)` -/
def P18379976018883121207.Spec : Prop :=
  ∀ n, P18379976018883121207.a n = A184742 (n + 1)

theorem P18379976018883121207.correct : P18379976018883121207.Spec := by
  intro n
  simp only [A184742, Nat.add_sub_cancel]

end A184742

/-! ## A184742.P8019968799613801261

`record[round(abs(1-n)*sqrt(π))-1]`
-/

namespace A184742.P8019968799613801261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|1 - (n : ℤ)| : ℝ) * Real.sqrt Real.pi) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184742.P8019968799613801261

namespace A184742

/-- `record[round(abs(1-n)*sqrt(π))-1]` -/
def P8019968799613801261.Spec : Prop :=
  ∀ n, P8019968799613801261.a n = A184742 (n + 1)

end A184742

/-! ## A184742.P949981563089878205

`∑[char[A184743(n+1)-(2*n+1)+n]+1]`
-/

namespace A184742.P949981563089878205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184743 (n + 1) - (2 * n + 1 : ℤ) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184742.P949981563089878205

namespace A184742

/-- `∑[char[A184743(n+1)-(2*n+1)+n]+1]` -/
def P949981563089878205.Spec : Prop :=
  ∀ n, (P949981563089878205.a n : ℤ) = A184742 (n + 1)

end A184742

/-! ## A184742.P459656358467359364

`A140106(ceil(sqrt(A066644(n+1))))`
-/

namespace A184742.P459656358467359364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 ⌈Real.sqrt (A066644 (n + 1) : ℝ)⌉.toNat

end

end A184742.P459656358467359364

namespace A184742

/-- `A140106(ceil(sqrt(A066644(n+1))))` -/
def P459656358467359364.Spec : Prop :=
  ∀ n, P459656358467359364.a n = A184742 (n + 1)

end A184742

/-! ## A184742.P2221235749454207219

`A140106(ceil(sqrt(A135971(n+1))))`
-/

namespace A184742.P2221235749454207219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 ⌈Real.sqrt (A135971 (n + 1) : ℝ)⌉.toNat

end

end A184742.P2221235749454207219

namespace A184742

/-- `A140106(ceil(sqrt(A135971(n+1))))` -/
def P2221235749454207219.Spec : Prop :=
  ∀ n, P2221235749454207219.a n = A184742 (n + 1)

end A184742

/-! ## A184742.P7332130534918141683

`A172471(A060384(n)+∑[A121381(n)])`
-/

namespace A184742.P7332130534918141683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A060384 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184742.P7332130534918141683

namespace A184742

/-- `A172471(A060384(n)+∑[A121381(n)])` -/
def P7332130534918141683.Spec : Prop :=
  ∀ n, P7332130534918141683.a n = A184742 (n + 1)

end A184742

/-! ## A184742.P6362028707622195507

`A002024(∑[A310777(n)-n])`
-/

namespace A184742.P6362028707622195507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310777 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184742.P6362028707622195507

namespace A184742

/-- `A002024(∑[A310777(n)-n])` -/
def P6362028707622195507.Spec : Prop :=
  ∀ n, P6362028707622195507.a n = A184742 (n + 1)

end A184742

/-! ## A184742.P10404789873007725374

`A138554(A265410(round((n+1)*sqrt(π))²))`
-/

namespace A184742.P10404789873007725374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 (A265410 (SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.sqrt Real.pi) ^ 2).toNat).toNat

end

end A184742.P10404789873007725374

namespace A184742

/-- `A138554(A265410(round((n+1)*sqrt(π))²))` -/
def P10404789873007725374.Spec : Prop :=
  ∀ n, P10404789873007725374.a n = A184742 (n + 1)

end A184742

/-!
# A184743: a(n) = floor(n*s + (s-1)/2), where s = sqrt(Pi)/(sqrt(Pi)-1).

The programs for A184743, the canonical program `A184743.P15464110192563510752` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184743 has offset 1).

The definition of A184743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184743.P15464110192563510752

`floor((n+1+1/2)*sqrt(π)/(sqrt(π)-1)-1/2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184743

/-- `floor((n+1+1/2)*sqrt(π)/(sqrt(π)-1)-1/2)` -/
def P15464110192563510752.Spec : Prop :=
  ∀ n, P15464110192563510752.a n = A184743 (n + 1)

theorem P15464110192563510752.correct : P15464110192563510752.Spec := by
  intro n
  simp only [A184743, Nat.add_sub_cancel]

end A184743

/-! ## A184743.P13774460230663234246

`A257639((3*n+4)²-4*(n+2))`
-/

namespace A184743.P13774460230663234246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 ((3 * n + 4) ^ 2 - 4 * (n + 2))

end

end A184743.P13774460230663234246

namespace A184743

/-- `A257639((3*n+4)²-4*(n+2))` -/
def P13774460230663234246.Spec : Prop :=
  ∀ n, P13774460230663234246.a n = A184743 (n + 1)

end A184743

/-! ## A184743.P1633066259939907844

`A257639(A000290(3*n+2)-3)+1`
-/

namespace A184743.P1633066259939907844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A000290 (3 * n + 2) - 3).toNat + 1

end

end A184743.P1633066259939907844

namespace A184743

/-- `A257639(A000290(3*n+2)-3)+1` -/
def P1633066259939907844.Spec : Prop :=
  ∀ n, P1633066259939907844.a n = A184743 (n + 1)

end A184743

/-! ## A184743.P11068250986870505469

`A257639(A059100(3*n+2)-3)+1`
-/

namespace A184743.P11068250986870505469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A059100 (3 * n + 2) - 3).toNat + 1

end

end A184743.P11068250986870505469

namespace A184743

/-- `A257639(A059100(3*n+2)-3)+1` -/
def P11068250986870505469.Spec : Prop :=
  ∀ n, P11068250986870505469.a n = A184743 (n + 1)

end A184743

/-! ## A184743.P15074705253108606282

`A004526(round(log2(A232277(n+1))))`
-/

namespace A184743.P15074705253108606282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (Real.logb 2 (A232277 (n + 1) : ℝ))).toNat

end

end A184743.P15074705253108606282

namespace A184743

/-- `A004526(round(log2(A232277(n+1))))` -/
def P15074705253108606282.Spec : Prop :=
  ∀ n, P15074705253108606282.a n = A184743 (n + 1)

end A184743

/-! ## A184743.P10668756177124026279

`A130773(2*n+1)-(A285074(n+1)-A057427(A137910(n+1)))`
-/

namespace A184743.P10668756177124026279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (2 * n + 1) - (A285074 (n + 1) - A057427 (A137910 (n + 1)).toNat)

end

end A184743.P10668756177124026279

namespace A184743

/-- `A130773(2*n+1)-(A285074(n+1)-A057427(A137910(n+1)))` -/
def P10668756177124026279.Spec : Prop :=
  ∀ n, P10668756177124026279.a n = A184743 (n + 1)

end A184743

/-! ## A184743.P3129761265266436007

`A000007(A038207(n))+A195128(n)+n+2`
-/

namespace A184743.P3129761265266436007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A038207 n).toNat + (A195128 n + (n + 2 : ℤ))

end

end A184743.P3129761265266436007

namespace A184743

/-- `A000007(A038207(n))+A195128(n)+n+2` -/
def P3129761265266436007.Spec : Prop :=
  ∀ n, P3129761265266436007.a n = A184743 (n + 1)

end A184743

/-! ## A184743.P10010389748466212008

`(A195128(n)+n+2)%A088511(n+1)`
-/

namespace A184743.P10010389748466212008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195128 n + (n + 2 : ℤ)) (A088511 (n + 1))

end

end A184743.P10010389748466212008

namespace A184743

/-- `(A195128(n)+n+2)%A088511(n+1)` -/
def P10010389748466212008.Spec : Prop :=
  ∀ n, P10010389748466212008.a n = A184743 (n + 1)

end A184743

/-! ## A184743.P4967468381444808566

`(A195128(n)+n+2)*A298248(A267181(n)²)`
-/

namespace A184743.P4967468381444808566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A195128 n + (n + 2 : ℤ)) * A298248 (A267181 n ^ 2).toNat

end

end A184743.P4967468381444808566

namespace A184743

/-- `(A195128(n)+n+2)*A298248(A267181(n)²)` -/
def P4967468381444808566.Spec : Prop :=
  ∀ n, P4967468381444808566.a n = A184743 (n + 1)

end A184743

/-!
# A184744: floor(nr+h), where r=1+1/e, h=1/2; complement of A184745.

The programs for A184744, the canonical program `A184744.P16604802667379157245` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184744 has offset 1).

The definition of A184744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184744.P16604802667379157245

`∑[Δ[round(n/e)]+1]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184744

/-- `∑[Δ[round(n/e)]+1]` -/
def P16604802667379157245.Spec : Prop :=
  ∀ n, P16604802667379157245.a n = A184744 (n + 1)

theorem P16604802667379157245.correct : P16604802667379157245.Spec := by
  intro n
  simp only [A184744, Nat.add_sub_cancel]

end A184744

/-! ## A184744.P194095200566294204

`A225593(n+1)+1+n`
-/

namespace A184744.P194095200566294204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225593 (n + 1) + 1 + (n : ℤ)

end

end A184744.P194095200566294204

namespace A184744

/-- `A225593(n+1)+1+n` -/
def P194095200566294204.Spec : Prop :=
  ∀ n, P194095200566294204.a n = A184744 (n + 1)

end A184744

/-! ## A184744.P8022690885288011584

`comp[comp[A184588(n+1)]+n]`
-/

namespace A184744.P8022690885288011584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184588 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A184744.P8022690885288011584

namespace A184744

/-- `comp[comp[A184588(n+1)]+n]` -/
def P8022690885288011584.Spec : Prop :=
  ∀ n, (P8022690885288011584.a n : ℤ) = A184744 (n + 1)

end A184744

/-! ## A184744.P17284586487886603287

`ceil(A006594(2*(n+1))/2)`
-/

namespace A184744.P17284586487886603287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006594 (2 * (n + 1)) : ℚ) / 2⌉

end

end A184744.P17284586487886603287

namespace A184744

/-- `ceil(A006594(2*(n+1))/2)` -/
def P17284586487886603287.Spec : Prop :=
  ∀ n, P17284586487886603287.a n = A184744 (n + 1)

end A184744

/-! ## A184744.P3935542172816501563

`round(A006594(2*n+2)/2)`
-/

namespace A184744.P3935542172816501563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006594 (2 * n + 2) : ℚ) / 2)

end

end A184744.P3935542172816501563

namespace A184744

/-- `round(A006594(2*n+2)/2)` -/
def P3935542172816501563.Spec : Prop :=
  ∀ n, P3935542172816501563.a n = A184744 (n + 1)

end A184744

/-! ## A184744.P6007419213373317414

`A006594(2*(n+1))-A006594(n+1)`
-/

namespace A184744.P6007419213373317414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006594 (2 * (n + 1)) - A006594 (n + 1)

end

end A184744.P6007419213373317414

namespace A184744

/-- `A006594(2*(n+1))-A006594(n+1)` -/
def P6007419213373317414.Spec : Prop :=
  ∀ n, P6007419213373317414.a n = A184744 (n + 1)

end A184744

/-! ## A184744.P13967231289314063261

`A008619(A006594(2*(n+1))-1)`
-/

namespace A184744.P13967231289314063261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A006594 (2 * (n + 1)) - 1).toNat

end

end A184744.P13967231289314063261

namespace A184744

/-- `A008619(A006594(2*(n+1))-1)` -/
def P13967231289314063261.Spec : Prop :=
  ∀ n, P13967231289314063261.a n = A184744 (n + 1)

end A184744

/-! ## A184744.P16386712544397208547

`A065033(A006594(2*(n+1)))`
-/

namespace A184744.P16386712544397208547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A006594 (2 * (n + 1))).toNat

end

end A184744.P16386712544397208547

namespace A184744

/-- `A065033(A006594(2*(n+1)))` -/
def P16386712544397208547.Spec : Prop :=
  ∀ n, P16386712544397208547.a n = A184744 (n + 1)

end A184744

/-! ## A184744.P13844678116525362770

`A004526(A006594(2*(n+1))+1)`
-/

namespace A184744.P13844678116525362770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A006594 (2 * (n + 1)) + 1).toNat

end

end A184744.P13844678116525362770

namespace A184744

/-- `A004526(A006594(2*(n+1))+1)` -/
def P13844678116525362770.Spec : Prop :=
  ∀ n, P13844678116525362770.a n = A184744 (n + 1)

end A184744

/-!
# A184745: floor(n*(e-1/2)+1/2); complement of A184744.

The programs for A184745, the canonical program `A184745.P12485344530230035149` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184745 has offset 1).

The definition of A184745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184745.P350952020558414097

`comp[round(n/e+n)]`
-/

namespace A184745.P350952020558414097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.exp 1 + (n : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184745.P350952020558414097

namespace A184745

/-- `comp[round(n/e+n)]` -/
def P350952020558414097.Spec : Prop :=
  ∀ n, (P350952020558414097.a n : ℤ) = A184745 (n + 1)

end A184745

/-! ## A184745.P12485344530230035149

`A060644(n)+1+n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184745

/-- `A060644(n)+1+n` -/
def P12485344530230035149.Spec : Prop :=
  ∀ n, P12485344530230035149.a n = A184745 (n + 1)

theorem P12485344530230035149.correct : P12485344530230035149.Spec := by
  intro n
  simp only [A184745, Nat.add_sub_cancel]

end A184745

/-! ## A184745.P9953725844112000446

`A279607(Δ[n²])+n+1`
-/

namespace A184745.P9953725844112000446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279607 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A184745.P9953725844112000446

namespace A184745

/-- `A279607(Δ[n²])+n+1` -/
def P9953725844112000446.Spec : Prop :=
  ∀ n, P9953725844112000446.a n = A184745 (n + 1)

end A184745

/-! ## A184745.P7407865315552996282

`ceil(A000572(2*n+1)/2)`
-/

namespace A184745.P7407865315552996282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000572 (2 * n + 1) : ℚ) / 2⌉

end

end A184745.P7407865315552996282

namespace A184745

/-- `ceil(A000572(2*n+1)/2)` -/
def P7407865315552996282.Spec : Prop :=
  ∀ n, P7407865315552996282.a n = A184745 (n + 1)

end A184745

/-! ## A184745.P1687362284070880099

`A279607(2*n+1)+1+n`
-/

namespace A184745.P1687362284070880099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279607 (2 * n + 1) + 1 + (n : ℤ)

end

end A184745.P1687362284070880099

namespace A184745

/-- `A279607(2*n+1)+1+n` -/
def P1687362284070880099.Spec : Prop :=
  ∀ n, P1687362284070880099.a n = A184745 (n + 1)

end A184745

/-! ## A184745.P17736971689164733977

`A008619(A022843(2*n+1))+n`
-/

namespace A184745.P17736971689164733977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A022843 (2 * n + 1)).toNat + (n : ℤ)

end

end A184745.P17736971689164733977

namespace A184745

/-- `A008619(A022843(2*n+1))+n` -/
def P17736971689164733977.Spec : Prop :=
  ∀ n, P17736971689164733977.a n = A184745 (n + 1)

end A184745

/-! ## A184745.P13164593786290839492

`n+1+A065033(A184589(2*n+1))`
-/

namespace A184745.P13164593786290839492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A065033 (A184589 (2 * n + 1)).toNat

end

end A184745.P13164593786290839492

namespace A184745

/-- `n+1+A065033(A184589(2*n+1))` -/
def P13164593786290839492.Spec : Prop :=
  ∀ n, P13164593786290839492.a n = A184745 (n + 1)

end A184745

/-! ## A184745.P13228351165097420254

`A004526(A022843(2*n+1))+A004526(A005843(n+1))`
-/

namespace A184745.P13228351165097420254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022843 (2 * n + 1)).toNat + A004526 (A005843 (n + 1)).toNat

end

end A184745.P13228351165097420254

namespace A184745

/-- `A004526(A022843(2*n+1))+A004526(A005843(n+1))` -/
def P13228351165097420254.Spec : Prop :=
  ∀ n, P13228351165097420254.a n = A184745 (n + 1)

end A184745

/-! ## A184745.P11389143636100058518

`A065033(A000572(2*n+1))`
-/

namespace A184745.P11389143636100058518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000572 (2 * n + 1)).toNat

end

end A184745.P11389143636100058518

namespace A184745

/-- `A065033(A000572(2*n+1))` -/
def P11389143636100058518.Spec : Prop :=
  ∀ n, P11389143636100058518.a n = A184745 (n + 1)

end A184745

/-! ## A184745.P12373150959526053794

`A110654(A000572(n+1+n))`
-/

namespace A184745.P12373150959526053794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000572 (n + 1 + n)).toNat

end

end A184745.P12373150959526053794

namespace A184745

/-- `A110654(A000572(n+1+n))` -/
def P12373150959526053794.Spec : Prop :=
  ∀ n, P12373150959526053794.a n = A184745 (n + 1)

end A184745

/-! ## A184745.P7826845264313349702

`A004526(A000572(2*n+1)+1)`
-/

namespace A184745.P7826845264313349702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000572 (2 * n + 1) + 1).toNat

end

end A184745.P7826845264313349702

namespace A184745

/-- `A004526(A000572(2*n+1)+1)` -/
def P7826845264313349702.Spec : Prop :=
  ∀ n, P7826845264313349702.a n = A184745 (n + 1)

end A184745

/-! ## A184745.P424017920520366171

`A004526(A022843(2*n+1)+A005843(n+1))`
-/

namespace A184745.P424017920520366171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022843 (2 * n + 1) + A005843 (n + 1)).toNat

end

end A184745.P424017920520366171

namespace A184745

/-- `A004526(A022843(2*n+1)+A005843(n+1))` -/
def P424017920520366171.Spec : Prop :=
  ∀ n, P424017920520366171.a n = A184745 (n + 1)

end A184745

/-!
# A184746: floor(nr+h), where r=1+1/sqrt(5), h=1/2; complement of A184747.

The programs for A184746, the canonical program `A184746.P4321245870303371499` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184746 has offset 1).

The definition of A184746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184746.P4321245870303371499

`round(2*(n+1)/(3-ϕ))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184746

/-- `round(2*(n+1)/(3-ϕ))` -/
def P4321245870303371499.Spec : Prop :=
  ∀ n, P4321245870303371499.a n = A184746 (n + 1)

theorem P4321245870303371499.correct : P4321245870303371499.Spec := by
  intro n
  simp only [A184746, Nat.add_sub_cancel]

end A184746

/-! ## A184746.P3382894392849614041

`ceil(A189934(n+1)/2)`
-/

namespace A184746.P3382894392849614041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A189934 (n + 1) : ℚ) / 2⌉

end

end A184746.P3382894392849614041

namespace A184746

/-- `ceil(A189934(n+1)/2)` -/
def P3382894392849614041.Spec : Prop :=
  ∀ n, P3382894392849614041.a n = A184746 (n + 1)

end A184746

/-! ## A184746.P6419797750079520152

`ceil(A330185(n+1)/3)`
-/

namespace A184746.P6419797750079520152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330185 (n + 1) : ℚ) / 3⌉

end

end A184746.P6419797750079520152

namespace A184746

/-- `ceil(A330185(n+1)/3)` -/
def P6419797750079520152.Spec : Prop :=
  ∀ n, P6419797750079520152.a n = A184746 (n + 1)

end A184746

/-! ## A184746.P3806980675637457658

`ceil(A189932(n+1)/4)`
-/

namespace A184746.P3806980675637457658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A189932 (n + 1) : ℚ) / 4⌉

end

end A184746.P3806980675637457658

namespace A184746

/-- `ceil(A189932(n+1)/4)` -/
def P3806980675637457658.Spec : Prop :=
  ∀ n, P3806980675637457658.a n = A184746 (n + 1)

end A184746

/-! ## A184746.P16157103559568514860

`∑[char[A184586(n+1)]+1]`
-/

namespace A184746.P16157103559568514860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184586 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184746.P16157103559568514860

namespace A184746

/-- `∑[char[A184586(n+1)]+1]` -/
def P16157103559568514860.Spec : Prop :=
  ∀ n, (P16157103559568514860.a n : ℤ) = A184746 (n + 1)

end A184746

/-! ## A184746.P13422311202572165156

`A189461(n+1)-A188258(n+1)`
-/

namespace A184746.P13422311202572165156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189461 (n + 1) - A188258 (n + 1)

end

end A184746.P13422311202572165156

namespace A184746

/-- `A189461(n+1)-A188258(n+1)` -/
def P13422311202572165156.Spec : Prop :=
  ∀ n, P13422311202572165156.a n = A184746 (n + 1)

end A184746

/-! ## A184746.P9773808196229755320

`A189932(n+1)-A330185(n+1)`
-/

namespace A184746.P9773808196229755320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189932 (n + 1) - A330185 (n + 1)

end

end A184746.P9773808196229755320

namespace A184746

/-- `A189932(n+1)-A330185(n+1)` -/
def P9773808196229755320.Spec : Prop :=
  ∀ n, P9773808196229755320.a n = A184746 (n + 1)

end A184746

/-! ## A184746.P13942890412387834879

`comp[A007067(C(xor(1, n), n))]`
-/

namespace A184746.P13942890412387834879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (Nat.choose (Nat.xor 1 n) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184746.P13942890412387834879

namespace A184746

/-- `comp[A007067(C(xor(1, n), n))]` -/
def P13942890412387834879.Spec : Prop :=
  ∀ n, (P13942890412387834879.a n : ℤ) = A184746 (n + 1)

end A184746

/-! ## A184746.P3628067084256092286

`A008619(A194964(2*(n+1)))+n`
-/

namespace A184746.P3628067084256092286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A194964 (2 * (n + 1))).toNat + (n : ℤ)

end

end A184746.P3628067084256092286

namespace A184746

/-- `A008619(A194964(2*(n+1)))+n` -/
def P3628067084256092286.Spec : Prop :=
  ∀ n, P3628067084256092286.a n = A184746 (n + 1)

end A184746

/-! ## A184746.P2508762506988524720

`A186513(2*(n+1))-A186515(n+1)`
-/

namespace A184746.P2508762506988524720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186513 (2 * (n + 1)) - A186515 (n + 1)

end

end A184746.P2508762506988524720

namespace A184746

/-- `A186513(2*(n+1))-A186515(n+1)` -/
def P2508762506988524720.Spec : Prop :=
  ∀ n, P2508762506988524720.a n = A184746 (n + 1)

end A184746

/-! ## A184746.P13168168174242688269

`A008619(A189934(n+1)-1)`
-/

namespace A184746.P13168168174242688269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A189934 (n + 1) - 1).toNat

end

end A184746.P13168168174242688269

namespace A184746

/-- `A008619(A189934(n+1)-1)` -/
def P13168168174242688269.Spec : Prop :=
  ∀ n, P13168168174242688269.a n = A184746 (n + 1)

end A184746

/-! ## A184746.P11130649580345171990

`A004526(A189934(n+1)-1)+1`
-/

namespace A184746.P11130649580345171990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189934 (n + 1) - 1).toNat + 1

end

end A184746.P11130649580345171990

namespace A184746

/-- `A004526(A189934(n+1)-1)+1` -/
def P11130649580345171990.Spec : Prop :=
  ∀ n, P11130649580345171990.a n = A184746 (n + 1)

end A184746

/-! ## A184746.P9721740354990402305

`A123108(A189934(n+1)-1)+1`
-/

namespace A184746.P9721740354990402305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A189934 (n + 1) - 1).toNat + 1

end

end A184746.P9721740354990402305

namespace A184746

/-- `A123108(A189934(n+1)-1)+1` -/
def P9721740354990402305.Spec : Prop :=
  ∀ n, P9721740354990402305.a n = A184746 (n + 1)

end A184746

/-! ## A184746.P9434296686513305376

`A189932(n+1)-A032766(A189932(n+1)/2)`
-/

namespace A184746.P9434296686513305376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189932 (n + 1) - A032766 (SequenceMachineLib.roundAway ((A189932 (n + 1) : ℚ) / 2)).toNat

end

end A184746.P9434296686513305376

namespace A184746

/-- `A189932(n+1)-A032766(A189932(n+1)/2)` -/
def P9434296686513305376.Spec : Prop :=
  ∀ n, P9434296686513305376.a n = A184746 (n + 1)

end A184746

/-! ## A184746.P11757209178485319122

`A065033(A189934(n+1))`
-/

namespace A184746.P11757209178485319122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A189934 (n + 1)).toNat

end

end A184746.P11757209178485319122

namespace A184746

/-- `A065033(A189934(n+1))` -/
def P11757209178485319122.Spec : Prop :=
  ∀ n, P11757209178485319122.a n = A184746 (n + 1)

end A184746

/-! ## A184746.P16229585690524904459

`A004526(A189934(n+1)+1)`
-/

namespace A184746.P16229585690524904459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189934 (n + 1) + 1).toNat

end

end A184746.P16229585690524904459

namespace A184746

/-- `A004526(A189934(n+1)+1)` -/
def P16229585690524904459.Spec : Prop :=
  ∀ n, P16229585690524904459.a n = A184746 (n + 1)

end A184746

/-! ## A184746.P7952097132891194207

`A123108(A189934(n+1)+1)`
-/

namespace A184746.P7952097132891194207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A189934 (n + 1) + 1).toNat

end

end A184746.P7952097132891194207

namespace A184746

/-- `A123108(A189934(n+1)+1)` -/
def P7952097132891194207.Spec : Prop :=
  ∀ n, P7952097132891194207.a n = A184746 (n + 1)

end A184746

/-! ## A184746.P15336164849381605108

`A004526(A186513(2*(n+1))+1)`
-/

namespace A184746.P15336164849381605108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A186513 (2 * (n + 1)) + 1).toNat

end

end A184746.P15336164849381605108

namespace A184746

/-- `A004526(A186513(2*(n+1))+1)` -/
def P15336164849381605108.Spec : Prop :=
  ∀ n, P15336164849381605108.a n = A184746 (n + 1)

end A184746

/-! ## A184746.P14221926074287023046

`A004526(A189932(n+1)/2+1)`
-/

namespace A184746.P14221926074287023046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A189932 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A184746.P14221926074287023046

namespace A184746

/-- `A004526(A189932(n+1)/2+1)` -/
def P14221926074287023046.Spec : Prop :=
  ∀ n, P14221926074287023046.a n = A184746 (n + 1)

end A184746

/-!
# A184747: a(n) = floor(n*s+h-h*s), where s=1+sqrt(5), h=1/2; complement of A184746.

The programs for A184747, the canonical program `A184747.P12092686040311310565` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184747 has offset 1).

The definition of A184747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184747.P5976790619621477623

`round(Δ[ϕ*n²])`
-/

namespace A184747.P5976790619621477623
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (n ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A184747.P5976790619621477623

namespace A184747

/-- `round(Δ[ϕ*n²])` -/
def P5976790619621477623.Spec : Prop :=
  ∀ n, P5976790619621477623.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P2111283901034319941

`record[round(ϕ*xor(1, n))]`
-/

namespace A184747.P2111283901034319941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Nat.xor 1 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184747.P2111283901034319941

namespace A184747

/-- `record[round(ϕ*xor(1, n))]` -/
def P2111283901034319941.Spec : Prop :=
  ∀ n, P2111283901034319941.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P4109961211316333182

`record[round(ϕ*n^(n%2))]`
-/

namespace A184747.P4109961211316333182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (n ^ (n % 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184747.P4109961211316333182

namespace A184747

/-- `record[round(ϕ*n^(n%2))]` -/
def P4109961211316333182.Spec : Prop :=
  ∀ n, P4109961211316333182.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P8447213848349734082

`-round(ϕ*xor(2*n, -1))`
-/

namespace A184747.P8447213848349734082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -SequenceMachineLib.roundAway (Real.goldenRatio * (Int.xor (2 * n : ℤ) (-1) : ℝ))

end

end A184747.P8447213848349734082

namespace A184747

/-- `-round(ϕ*xor(2*n, -1))` -/
def P8447213848349734082.Spec : Prop :=
  ∀ n, P8447213848349734082.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P2734911079022606452

`-round(ϕ*or(1, -(2*n+1)))`
-/

namespace A184747.P2734911079022606452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -SequenceMachineLib.roundAway (Real.goldenRatio * (Int.lor 1 (-(2 * n + 1 : ℤ)) : ℝ))

end

end A184747.P2734911079022606452

namespace A184747

/-- `-round(ϕ*or(1, -(2*n+1)))` -/
def P2734911079022606452.Spec : Prop :=
  ∀ n, P2734911079022606452.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P805948530236764086

`round(ϕ*(2*n+1))%(n+2)²`
-/

namespace A184747.P805948530236764086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.goldenRatio * (2 * n + 1 : ℝ))) ((n + 2) ^ 2 : ℤ)

end

end A184747.P805948530236764086

namespace A184747

/-- `round(ϕ*(2*n+1))%(n+2)²` -/
def P805948530236764086.Spec : Prop :=
  ∀ n, P805948530236764086.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P7920348413590438725

`round(ϕ*(2*n+1))+C(2, n+3)`
-/

namespace A184747.P7920348413590438725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (2 * n + 1 : ℝ)) + (Nat.choose 2 (n + 3) : ℤ)

end

end A184747.P7920348413590438725

namespace A184747

/-- `round(ϕ*(2*n+1))+C(2, n+3)` -/
def P7920348413590438725.Spec : Prop :=
  ∀ n, P7920348413590438725.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P1395468832450109077

`round(ϕ*(2*n+1))+and(1, 2*n)`
-/

namespace A184747.P1395468832450109077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (2 * n + 1 : ℝ)) + (Nat.land 1 (2 * n) : ℤ)

end

end A184747.P1395468832450109077

namespace A184747

/-- `round(ϕ*(2*n+1))+and(1, 2*n)` -/
def P1395468832450109077.Spec : Prop :=
  ∀ n, P1395468832450109077.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P11992246481685971270

`round(or(1, 2*n)/ϕ)+2*n+1`
-/

namespace A184747.P11992246481685971270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (2 * n) : ℝ) / Real.goldenRatio) + (2 * n + 1 : ℤ)

end

end A184747.P11992246481685971270

namespace A184747

/-- `round(or(1, 2*n)/ϕ)+2*n+1` -/
def P11992246481685971270.Spec : Prop :=
  ∀ n, P11992246481685971270.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P3137140741457782504

`round(xor(1, 2*n)/ϕ)+2*n+1`
-/

namespace A184747.P3137140741457782504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (2 * n) : ℝ) / Real.goldenRatio) + (2 * n + 1 : ℤ)

end

end A184747.P3137140741457782504

namespace A184747

/-- `round(xor(1, 2*n)/ϕ)+2*n+1` -/
def P3137140741457782504.Spec : Prop :=
  ∀ n, P3137140741457782504.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P18295487203792013043

`gcd(n, n+1)*round(ϕ*(2*n+1))`
-/

namespace A184747.P18295487203792013043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio * (2 * n + 1 : ℝ))

end

end A184747.P18295487203792013043

namespace A184747

/-- `gcd(n, n+1)*round(ϕ*(2*n+1))` -/
def P18295487203792013043.Spec : Prop :=
  ∀ n, P18295487203792013043.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P9984282407966226612

`round(ϕ*(2*n+1))+val(2*n+1, 2)`
-/

namespace A184747.P9984282407966226612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (2 * n + 1 : ℝ)) + (SequenceMachineLib.valuation (2 * n + 1) 2 : ℤ)

end

end A184747.P9984282407966226612

namespace A184747

/-- `round(ϕ*(2*n+1))+val(2*n+1, 2)` -/
def P9984282407966226612.Spec : Prop :=
  ∀ n, P9984282407966226612.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P10783620142524774334

`floor(ϕ*(n/a(n-1)+2*n+1))` with `a(0)=2`
-/

namespace A184747.P10783620142524774334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊Real.goldenRatio * ((n : ℚ) / (a (n - 1) : ℚ) + (2 * n + 1 : ℚ) : ℝ)⌋

end

end A184747.P10783620142524774334

namespace A184747

/-- `floor(ϕ*(n/a(n-1)+2*n+1))` -/
def P10783620142524774334.Spec : Prop :=
  ∀ n, P10783620142524774334.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P6323522303219000438

`xor(2*n+1, 2*n)*round(ϕ*(2*n+1))`
-/

namespace A184747.P6323522303219000438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor (2 * n + 1) (2 * n) : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio * (2 * n + 1 : ℝ))

end

end A184747.P6323522303219000438

namespace A184747

/-- `xor(2*n+1, 2*n)*round(ϕ*(2*n+1))` -/
def P6323522303219000438.Spec : Prop :=
  ∀ n, P6323522303219000438.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P12092686040311310565

`A184586(n+1)+1+n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184747

/-- `A184586(n+1)+1+n` -/
def P12092686040311310565.Spec : Prop :=
  ∀ n, P12092686040311310565.a n = A184747 (n + 1)

theorem P12092686040311310565.correct : P12092686040311310565.Spec := by
  intro n
  simp only [A184747, Nat.add_sub_cancel]

end A184747

/-! ## A184747.P14148389531921685310

`A184739(n+1)-Δ[n²]`
-/

namespace A184747.P14148389531921685310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184739 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A184747.P14148389531921685310

namespace A184747

/-- `A184739(n+1)-Δ[n²]` -/
def P14148389531921685310.Spec : Prop :=
  ∀ n, P14148389531921685310.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P17467521545760017609

`ceil(sqrt(∑[A008592(n)]+2))+n`
-/

namespace A184747.P17467521545760017609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℤ) : ℝ)⌉ + (n : ℤ)

end

end A184747.P17467521545760017609

namespace A184747

/-- `ceil(sqrt(∑[A008592(n)]+2))+n` -/
def P17467521545760017609.Spec : Prop :=
  ∀ n, P17467521545760017609.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P9622097565160890398

`floor(sqrt(A062786(n+1)))+1+n`
-/

namespace A184747.P9622097565160890398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A062786 (n + 1)) + 1 + (n : ℤ)

end

end A184747.P9622097565160890398

namespace A184747

/-- `floor(sqrt(A062786(n+1)))+1+n` -/
def P9622097565160890398.Spec : Prop :=
  ∀ n, P9622097565160890398.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P5655698488764192279

`A007067(Δ[n²])`
-/

namespace A184747.P5655698488764192279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A184747.P5655698488764192279

namespace A184747

/-- `A007067(Δ[n²])` -/
def P5655698488764192279.Spec : Prop :=
  ∀ n, P5655698488764192279.a n = A184747 (n + 1)

end A184747

/-! ## A184747.P4251845579059738501

`A184656(Δ[n²])+1`
-/

namespace A184747.P4251845579059738501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184656 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A184747.P4251845579059738501

namespace A184747

/-- `A184656(Δ[n²])+1` -/
def P4251845579059738501.Spec : Prop :=
  ∀ n, P4251845579059738501.a n = A184747 (n + 1)

end A184747

/-!
# A184748: a(n) = floor(n*r + h), where r = 4 - sqrt(5), h = -1/2. Also, complement of A184749.

The programs for A184748, the canonical program `A184748.P35318513119021768` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184748 has offset 1).

The definition of A184748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184748.P12395492606567122287

`round((n+1)*(4-sqrt(5)))-1`
-/

namespace A184748.P12395492606567122287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) * (4 - Real.sqrt (5 : ℝ))) - 1

end

end A184748.P12395492606567122287

namespace A184748

/-- `round((n+1)*(4-sqrt(5)))-1` -/
def P12395492606567122287.Spec : Prop :=
  ∀ n, P12395492606567122287.a n = A184748 (n + 1)

end A184748

/-! ## A184748.P7553814667241818952

`round(A189935(n+1)/2+n)`
-/

namespace A184748.P7553814667241818952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A189935 (n + 1) : ℚ) / 2 + (n : ℚ))

end

end A184748.P7553814667241818952

namespace A184748

/-- `round(A189935(n+1)/2+n)` -/
def P7553814667241818952.Spec : Prop :=
  ∀ n, P7553814667241818952.a n = A184748 (n + 1)

end A184748

/-! ## A184748.P18202937076291092146

`A190080(n+1)%(2*(n+1))`
-/

namespace A184748.P18202937076291092146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190080 (n + 1)) (2 * (n + 1) : ℤ)

end

end A184748.P18202937076291092146

namespace A184748

/-- `A190080(n+1)%(2*(n+1))` -/
def P18202937076291092146.Spec : Prop :=
  ∀ n, P18202937076291092146.a n = A184748 (n + 1)

end A184748

/-! ## A184748.P35318513119021768

`(4*n+3)%A022848(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184748

/-- `(4*n+3)%A022848(n+1)` -/
def P35318513119021768.Spec : Prop :=
  ∀ n, P35318513119021768.a n = A184748 (n + 1)

theorem P35318513119021768.correct : P35318513119021768.Spec := by
  intro n
  simp only [A184748, Nat.add_sub_cancel]

end A184748

/-! ## A184748.P7870635668875753857

`∑[gcd(A040506(n), A214861(n+1))]`
-/

namespace A184748.P7870635668875753857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040506 n) (A214861 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184748.P7870635668875753857

namespace A184748

/-- `∑[gcd(A040506(n), A214861(n+1))]` -/
def P7870635668875753857.Spec : Prop :=
  ∀ n, (P7870635668875753857.a n : ℤ) = A184748 (n + 1)

end A184748

/-! ## A184748.P12110559374580618980

`A028310(A016789(n)-A184738(n+1))`
-/

namespace A184748.P12110559374580618980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A016789 n - A184738 (n + 1)).toNat

end

end A184748.P12110559374580618980

namespace A184748

/-- `A028310(A016789(n)-A184738(n+1))` -/
def P12110559374580618980.Spec : Prop :=
  ∀ n, P12110559374580618980.a n = A184748 (n + 1)

end A184748

/-! ## A184748.P10162417933629593673

`A016897(n)%A007067(2*(n+1))`
-/

namespace A184748.P10162417933629593673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016897 n) (A007067 (2 * (n + 1)))

end

end A184748.P10162417933629593673

namespace A184748

/-- `A016897(n)%A007067(2*(n+1))` -/
def P10162417933629593673.Spec : Prop :=
  ∀ n, P10162417933629593673.a n = A184748 (n + 1)

end A184748

/-! ## A184748.P8990883097220592581

`A029579(A017617(n)%A004938(n+1))`
-/

namespace A184748.P8990883097220592581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (Int.tmod (A017617 n) (A004938 (n + 1))).toNat

end

end A184748.P8990883097220592581

namespace A184748

/-- `A029579(A017617(n)%A004938(n+1))` -/
def P8990883097220592581.Spec : Prop :=
  ∀ n, P8990883097220592581.a n = A184748 (n + 1)

end A184748

/-! ## A184748.P6386270766139847482

`A004526(A189935(n+1)+2*n+1)`
-/

namespace A184748.P6386270766139847482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189935 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A184748.P6386270766139847482

namespace A184748

/-- `A004526(A189935(n+1)+2*n+1)` -/
def P6386270766139847482.Spec : Prop :=
  ∀ n, P6386270766139847482.a n = A184748 (n + 1)

end A184748

/-! ## A184748.P11716195739393275866

`A004526(A190505(n+1)-A184738(n+1))`
-/

namespace A184748.P11716195739393275866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A190505 (n + 1) - A184738 (n + 1)).toNat

end

end A184748.P11716195739393275866

namespace A184748

/-- `A004526(A190505(n+1)-A184738(n+1))` -/
def P11716195739393275866.Spec : Prop :=
  ∀ n, P11716195739393275866.a n = A184748 (n + 1)

end A184748

/-! ## A184748.P10132278866350104049

`A002265(A287724(record[A166519(n)]))`
-/

namespace A184748.P10132278866350104049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A287724 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A184748.P10132278866350104049

namespace A184748

/-- `A002265(A287724(record[A166519(n)]))` -/
def P10132278866350104049.Spec : Prop :=
  ∀ n, P10132278866350104049.a n = A184748 (n + 1)

end A184748

/-!
# A184749: a(n) = floor(n*s+h-h*s), where s = (7 + sqrt(5))/4, h = -1/2; complement of A184748.

The programs for A184749, the canonical program `A184749.P13125599606480254590` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184749 has offset 1).

The definition of A184749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184749.P13125599606480254590

`floor(A287723(A004766(n+1))/4)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A184749

/-- `floor(A287723(A004766(n+1))/4)` -/
def P13125599606480254590.Spec : Prop :=
  ∀ n, P13125599606480254590.a n = A184749 (n + 1)

theorem P13125599606480254590.correct : P13125599606480254590.Spec := by
  intro n
  simp only [A184749, Nat.add_sub_cancel]

end A184749

/-! ## A184749.P1448525973995127516

`A008621(A001966(n+1))+n`
-/

namespace A184749.P1448525973995127516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A001966 (n + 1)).toNat + (n : ℤ)

end

end A184749.P1448525973995127516

namespace A184749

/-- `A008621(A001966(n+1))+n` -/
def P1448525973995127516.Spec : Prop :=
  ∀ n, P1448525973995127516.a n = A184749 (n + 1)

end A184749

/-! ## A184749.P2251662877472851782

`A008621(A001950(2*n+3))+n`
-/

namespace A184749.P2251662877472851782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A001950 (2 * n + 3)).toNat + (n : ℤ)

end

end A184749.P2251662877472851782

namespace A184749

/-- `A008621(A001950(2*n+3))+n` -/
def P2251662877472851782.Spec : Prop :=
  ∀ n, P2251662877472851782.a n = A184749 (n + 1)

end A184749

/-! ## A184749.P17900060008229924243

`A002265(A001950(2*(n+1)+1)+4)+n`
-/

namespace A184749.P17900060008229924243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A001950 (2 * (n + 1) + 1) + 4).toNat + (n : ℤ)

end

end A184749.P17900060008229924243

namespace A184749

/-- `A002265(A001950(2*(n+1)+1)+4)+n` -/
def P17900060008229924243.Spec : Prop :=
  ∀ n, P17900060008229924243.a n = A184749 (n + 1)

end A184749

/-! ## A184749.P119017247410767876

`A008621(A286750(4*n+6)-6)`
-/

namespace A184749.P119017247410767876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A286750 (4 * n + 6) - 6).toNat

end

end A184749.P119017247410767876

namespace A184749

/-- `A008621(A286750(4*n+6)-6)` -/
def P119017247410767876.Spec : Prop :=
  ∀ n, P119017247410767876.a n = A184749 (n + 1)

end A184749

/-! ## A184749.P2681474109008225103

`A008621(10*n+8-A060144(2*n+3))`
-/

namespace A184749.P2681474109008225103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 ((10 * n + 8 : ℤ) - A060144 (2 * n + 3)).toNat

end

end A184749.P2681474109008225103

namespace A184749

/-- `A008621(10*n+8-A060144(2*n+3))` -/
def P2681474109008225103.Spec : Prop :=
  ∀ n, P2681474109008225103.a n = A184749 (n + 1)

end A184749

/-! ## A184749.P18179270677102386185

`A002024(2*A212978(n)+n)`
-/

namespace A184749.P18179270677102386185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (2 * A212978 n + (n : ℤ)).toNat

end

end A184749.P18179270677102386185

namespace A184749

/-- `A002024(2*A212978(n)+n)` -/
def P18179270677102386185.Spec : Prop :=
  ∀ n, P18179270677102386185.a n = A184749 (n + 1)

end A184749

/-! ## A184749.P8203206381953751698

`A123578(2*A212978(n)+n)`
-/

namespace A184749.P8203206381953751698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (2 * A212978 n + (n : ℤ)).toNat

end

end A184749.P8203206381953751698

namespace A184749

/-- `A123578(2*A212978(n)+n)` -/
def P8203206381953751698.Spec : Prop :=
  ∀ n, P8203206381953751698.a n = A184749 (n + 1)

end A184749

/-! ## A184749.P3400861247694959807

`A002024(A212978(n)+A212978(n)+n)`
-/

namespace A184749.P3400861247694959807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A212978 n + (A212978 n + (n : ℤ))).toNat

end

end A184749.P3400861247694959807

namespace A184749

/-- `A002024(A212978(n)+A212978(n)+n)` -/
def P3400861247694959807.Spec : Prop :=
  ∀ n, P3400861247694959807.a n = A184749 (n + 1)

end A184749

/-! ## A184749.P13772414085546451235

`A123578(A212978(n)+A212978(n)+n)`
-/

namespace A184749.P13772414085546451235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A212978 n + (A212978 n + (n : ℤ))).toNat

end

end A184749.P13772414085546451235

namespace A184749

/-- `A123578(A212978(n)+A212978(n)+n)` -/
def P13772414085546451235.Spec : Prop :=
  ∀ n, P13772414085546451235.a n = A184749 (n + 1)

end A184749

/-!
# A184750: a(n) = largest k such that A000326(n+1) = A000326(n) + (A000326(n) mod k), or 0 if no such k exists.

The programs for A184750, the canonical program `A184750.P15013896419122268324` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184750 has offset 1).

The definition of A184750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184750.P15013896419122268324

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=19, a(5)=32, a(6)=48`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184750

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15013896419122268324.Spec : Prop :=
  ∀ n, P15013896419122268324.a n = A184750 (n + 1)

theorem P15013896419122268324.correct : P15013896419122268324.Spec := by
  intro n
  simp only [A184750, Nat.add_sub_cancel]

end A184750

/-! ## A184750.P6101935349430801242

`(A000326(n)-3)*A130543(n)`
-/

namespace A184750.P6101935349430801242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000326 n - 3) * A130543 n

end

end A184750.P6101935349430801242

namespace A184750

/-- `(A000326(n)-3)*A130543(n)` -/
def P6101935349430801242.Spec : Prop :=
  ∀ n, P6101935349430801242.a n = A184750 (n + 1)

end A184750

/-! ## A184750.P18150661146851086471

`2*A184220(n+1)-A184218(n+1)`
-/

namespace A184750.P18150661146851086471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A184220 (n + 1) - A184218 (n + 1)

end

end A184750.P18150661146851086471

namespace A184750

/-- `2*A184220(n+1)-A184218(n+1)` -/
def P18150661146851086471.Spec : Prop :=
  ∀ n, P18150661146851086471.a n = A184750 (n + 1)

end A184750

/-! ## A184750.P5640867268186164562

`(A000326(n)-3)%Δ[A001095(n)]`
-/

namespace A184750.P5640867268186164562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000326 n - 3) (f1 (n + 1) - f1 n)

end

end A184750.P5640867268186164562

namespace A184750

/-- `(A000326(n)-3)%Δ[A001095(n)]` -/
def P5640867268186164562.Spec : Prop :=
  ∀ n, P5640867268186164562.a n = A184750 (n + 1)

end A184750

/-! ## A184750.P9745550655482799490

`A133151(n+1)*A184751(n+1)`
-/

namespace A184750.P9745550655482799490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133151 (n + 1) * A184751 (n + 1)

end

end A184750.P9745550655482799490

namespace A184750

/-- `A133151(n+1)*A184751(n+1)` -/
def P9745550655482799490.Spec : Prop :=
  ∀ n, P9745550655482799490.a n = A184750 (n + 1)

end A184750

/-! ## A184750.P13651531972606625961

`lcm(3-A000326(n), A133151(n+1))`
-/

namespace A184750.P13651531972606625961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 - A000326 n) (A133151 (n + 1))

end

end A184750.P13651531972606625961

namespace A184750

/-- `lcm(3-A000326(n), A133151(n+1))` -/
def P13651531972606625961.Spec : Prop :=
  ∀ n, (P13651531972606625961.a n : ℤ) = A184750 (n + 1)

end A184750

/-! ## A184750.P16427812138922212035

`lcm(A000326(n)-3, A184751(n+1))`
-/

namespace A184750.P16427812138922212035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000326 n - 3) (A184751 (n + 1))

end

end A184750.P16427812138922212035

namespace A184750

/-- `lcm(A000326(n)-3, A184751(n+1))` -/
def P16427812138922212035.Spec : Prop :=
  ∀ n, (P16427812138922212035.a n : ℤ) = A184750 (n + 1)

end A184750

/-! ## A184750.P759810573057150467

`(A000326(n)-3)%A141583(n)`
-/

namespace A184750.P759810573057150467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000326 n - 3) (A141583 n)

end

end A184750.P759810573057150467

namespace A184750

/-- `(A000326(n)-3)%A141583(n)` -/
def P759810573057150467.Spec : Prop :=
  ∀ n, P759810573057150467.a n = A184750 (n + 1)

end A184750

/-!
# A184751: a(n) = A184750(n)/A133151(n) unless A133151(n) = 0 in which case a(n) = 0.

The programs for A184751, there is no canonical definition to state claims against.
-/

/-! ## A184751.P4169619196140820233

`A184750(n+1)%(1-A133151(n+1))`
-/

namespace A184751.P4169619196140820233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184750 (n + 1)) (1 - A133151 (n + 1))

end

end A184751.P4169619196140820233

/-! ## A184751.P4147779453484901458

`A184750(n+1)/A028310(A133151(n+1))`
-/

namespace A184751.P4147779453484901458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184750 (n + 1) : ℚ) / (A028310 (A133151 (n + 1)).toNat : ℚ)

end

end A184751.P4147779453484901458

/-! ## A184751.P18203112107354152766

`(A000326(n)-3)*A130543(n)/A028310(A133151(n+1))`
-/

namespace A184751.P18203112107354152766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000326 n - 3) * A130543 n : ℚ) / (A028310 (A133151 (n + 1)).toNat : ℚ)

end

end A184751.P18203112107354152766

/-! ## A184751.P10305079951335616816

`(A000326(n)-3)%A141583(n)/A028310(A133151(n+1))`
-/

namespace A184751.P10305079951335616816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000326 n - 3) (A141583 n) : ℚ) / (A028310 (A133151 (n + 1)).toNat : ℚ)

end

end A184751.P10305079951335616816

/-! ## A184751.P6763591965364550051

`(2*A184220(n+1)-A184218(n+1))/A028310(A133151(n+1))`
-/

namespace A184751.P6763591965364550051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A184220 (n + 1) - A184218 (n + 1) : ℚ) / (A028310 (A133151 (n + 1)).toNat : ℚ)

end

end A184751.P6763591965364550051

/-!
# A184752: a(n) = largest k such that A014612(n+1) = A014612(n) + (A014612(n) mod k), or 0 if no such k exists.

The programs for A184752, there is no canonical definition to state claims against.
-/

/-! ## A184752.P18407033894053371157

`lcm(A014612(n+1)-A114403(n+1), A184753(n+1))`
-/

namespace A184752.P18407033894053371157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014612 (n + 1) - A114403 (n + 1)) (A184753 (n + 1))

end

end A184752.P18407033894053371157

/-! ## A184752.P6418147455538729227

`A130650(n+1)*A184753(n+1)`
-/

namespace A184752.P6418147455538729227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130650 (n + 1) * A184753 (n + 1)

end

end A184752.P6418147455538729227

/-! ## A184752.P5601881382885442067

`lcm(A114403(n+1)-A014612(n+1), A130650(n+1))`
-/

namespace A184752.P5601881382885442067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A114403 (n + 1) - A014612 (n + 1)) (A130650 (n + 1))

end

end A184752.P5601881382885442067

/-! ## A184752.P12328036907693493753

`(A014612(n+1)-A114403(n+1)%A000230(n))%A014612(n+1)`
-/

namespace A184752.P12328036907693493753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014612 (n + 1) - Int.tmod (A114403 (n + 1)) (A000230 n)) (A014612 (n + 1))

end

end A184752.P12328036907693493753

/-! ## A184752.P7099229134942388823

`(A014612(n+1)-A114403(n+1))%(A000040(n+1)*A005250(n+1))`
-/

namespace A184752.P7099229134942388823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014612 (n + 1) - A114403 (n + 1)) (A000040 (n + 1) * A005250 (n + 1))

end

end A184752.P7099229134942388823

/-!
# A184753: a(n) = A184752(n)/A130650(n) unless A130650(n) = 0 in which case a(n) = 0.

The programs for A184753, there is no canonical definition to state claims against.
-/

/-! ## A184753.P7916625424939238867

`A184752(n+1)/A028310(A130650(n+1))`
-/

namespace A184753.P7916625424939238867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184752 (n + 1) : ℚ) / (A028310 (A130650 (n + 1)).toNat : ℚ)

end

end A184753.P7916625424939238867

/-!
# A184754: Half the number of n X n binary arrays with no 1 having an adjacent 1 both above and to its left.

The programs for A184754, there is no canonical definition to state claims against.
-/

/-! ## A184754.P3001902561135145700

`A184761(∑[4*n]+1)`
-/

namespace A184754.P3001902561135145700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184754.P3001902561135145700

/-! ## A184754.P14096500959950853641

`record[A184761(n+1)*A203994(n+1)]`
-/

namespace A184754.P14096500959950853641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (n + 1) * A203994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184754.P14096500959950853641

/-! ## A184754.P5837518309146621479

`gcd(A000038(n), A184761(A001844(n)))`
-/

namespace A184754.P5837518309146621479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A184761 (A001844 n).toNat)

end

end A184754.P5837518309146621479

/-! ## A184754.P2684213198209060846

`lcm(A160357(n), A184761(A001844(n)))`
-/

namespace A184754.P2684213198209060846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A160357 n) (A184761 (A001844 n).toNat)

end

end A184754.P2684213198209060846

/-! ## A184754.P2762540974624237350

`or(A000007(n), A184761(A001844(n)))`
-/

namespace A184754.P2762540974624237350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A184761 (A001844 n).toNat)

end

end A184754.P2762540974624237350

/-!
# A184755: Half the number of n X 3 binary arrays with no 1 having an adjacent 1 both above and to its left.

The programs for A184755, the canonical program `A184755.P4344901790347211960` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184755 has offset 1).

The definition of A184755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184755.P5973832793119513354

`ogf((4+5x+2x^2)/(1-5x-9x^2-4x^3))`
-/

namespace A184755.P5973832793119513354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 5, 2] [1, -5, -9, -4] n

end

end A184755.P5973832793119513354

namespace A184755

/-- `ogf((4+5x+2x^2)/(1-5x-9x^2-4x^3))` -/
def P5973832793119513354.Spec : Prop :=
  ∀ n, P5973832793119513354.a n = A184755 (n + 1)

end A184755

/-! ## A184755.P4344901790347211960

`5*a(n-1)+9*a(n-2)+4*a(n-3)` with `a(0)=4, a(1)=25, a(2)=163`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184755

/-- `5*a(n-1)+9*a(n-2)+4*a(n-3)` -/
def P4344901790347211960.Spec : Prop :=
  ∀ n, (P4344901790347211960.a n : ℤ) = A184755 (n + 1)

theorem P4344901790347211960.correct : P4344901790347211960.Spec := by
  intro n
  simp only [A184755, Nat.add_sub_cancel]

end A184755

/-! ## A184755.P17907410144686753843

`A184761(∑[n+2]+4)`
-/

namespace A184755.P17907410144686753843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184755.P17907410144686753843

namespace A184755

/-- `A184761(∑[n+2]+4)` -/
def P17907410144686753843.Spec : Prop :=
  ∀ n, P17907410144686753843.a n = A184755 (n + 1)

end A184755

/-! ## A184755.P6183323715942433809

`lcm(A033999(n), A184761(A167614(n+1)))`
-/

namespace A184755.P6183323715942433809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A184761 (A167614 (n + 1)).toNat)

end

end A184755.P6183323715942433809

namespace A184755

/-- `lcm(A033999(n), A184761(A167614(n+1)))` -/
def P6183323715942433809.Spec : Prop :=
  ∀ n, (P6183323715942433809.a n : ℤ) = A184755 (n + 1)

end A184755

/-! ## A184755.P1769911211947019589

`or(A011655(n), A184761(A167614(n+1)))`
-/

namespace A184755.P1769911211947019589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011655 n) (A184761 (A167614 (n + 1)).toNat)

end

end A184755.P1769911211947019589

namespace A184755

/-- `or(A011655(n), A184761(A167614(n+1)))` -/
def P1769911211947019589.Spec : Prop :=
  ∀ n, P1769911211947019589.a n = A184755 (n + 1)

end A184755

/-!
# A184756: Half the number of n X 4 binary arrays with no 1 having an adjacent 1 both above and to its left.

The programs for A184756, there is no canonical definition to state claims against.
-/

/-! ## A184756.P10464574062272506700

`A184761(A374004(n+1))`
-/

namespace A184756.P10464574062272506700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (A374004 (n + 1)).toNat

end

end A184756.P10464574062272506700

/-! ## A184756.P16797166115678568542

`A184761(A052905(n)+9)`
-/

namespace A184756.P16797166115678568542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (A052905 n + 9).toNat

end

end A184756.P16797166115678568542

/-! ## A184756.P16472523332244426988

`A184761(A055999(n)+10)`
-/

namespace A184756.P16472523332244426988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (A055999 n + 10).toNat

end

end A184756.P16472523332244426988

/-! ## A184756.P4283084609847176977

`A184761(A167614(n+2)+1)`
-/

namespace A184756.P4283084609847176977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (A167614 (n + 2) + 1).toNat

end

end A184756.P4283084609847176977

/-! ## A184756.P6679261447730220477

`A184761(eq[5, A131818(n+1)])`
-/

namespace A184756.P6679261447730220477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184756.P6679261447730220477

/-!
# A184757: Half the number of n X 5 binary arrays with no 1 having an adjacent 1 both above and to its left.

The programs for A184757, there is no canonical definition to state claims against.
-/

/-! ## A184757.P12415478998308764990

`A184761(A374005(n+1))`
-/

namespace A184757.P12415478998308764990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (A374005 (n + 1)).toNat

end

end A184757.P12415478998308764990

/-! ## A184757.P17854490160468982062

`A184761(A056000(n)+15)`
-/

namespace A184757.P17854490160468982062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (A056000 n + 15).toNat

end

end A184757.P17854490160468982062

/-! ## A184757.P3354761380347540222

`A184761(eq[6, A131818(n+1)])`
-/

namespace A184757.P3354761380347540222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184757.P3354761380347540222

/-! ## A184757.P9296926249912683753

`A184761(Δ[A264443(n)])`
-/

namespace A184757.P9296926249912683753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (f1 (n + 1) - f1 n).toNat

end

end A184757.P9296926249912683753

/-! ## A184757.P13556968761551977689

`A184761(Δ[A023545(n+1)])`
-/

namespace A184757.P13556968761551977689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (f1 (n + 1) - f1 n).toNat

end

end A184757.P13556968761551977689

/-!
# A184758: Half the number of n X 6 binary arrays with no 1 having an adjacent 1 both above and to its left.

The programs for A184758, there is no canonical definition to state claims against.
-/

/-! ## A184758.P5536314429939861552

`A184761(A374007(n+1))`
-/

namespace A184758.P5536314429939861552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (A374007 (n + 1)).toNat

end

end A184758.P5536314429939861552

/-! ## A184758.P3883710081099497274

`A184761(eq[7, A131818(n+1)])`
-/

namespace A184758.P3883710081099497274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184758.P3883710081099497274

/-! ## A184758.P13159908319137633000

`A184761(A052905(n+3))`
-/

namespace A184758.P13159908319137633000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (A052905 (n + 3)).toNat

end

end A184758.P13159908319137633000

/-! ## A184758.P2457457075745364748

`A184761(eq[3, A219347(n)])`
-/

namespace A184758.P2457457075745364748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184758.P2457457075745364748

/-! ## A184758.P5494667028680674360

`A184761(eq[5, A193592(n)])`
-/

namespace A184758.P5494667028680674360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184758.P5494667028680674360

/-!
# A184759: Half the number of nX7 binary arrays with no 1 having an adjacent 1 both above and to its left.

The programs for A184759, there is no canonical definition to state claims against.
-/

/-! ## A184759.P10545501759583714283

`A184761(A374008(n+1))`
-/

namespace A184759.P10545501759583714283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (A374008 (n + 1)).toNat

end

end A184759.P10545501759583714283

/-! ## A184759.P3094762715199161710

`A184761(eq[8, A131818(n+1)])`
-/

namespace A184759.P3094762715199161710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184759.P3094762715199161710

/-! ## A184759.P16620175085605113331

`A184761(eq[4, A219347(n)])`
-/

namespace A184759.P16620175085605113331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184759.P16620175085605113331

/-! ## A184759.P753387010779604731

`A184761(eq[6, A193592(n)])`
-/

namespace A184759.P753387010779604731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184759.P753387010779604731

/-! ## A184759.P2590988859574181800

`A184761(eq[10, A185782(n+1)])`
-/

namespace A184759.P2590988859574181800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184759.P2590988859574181800

/-!
# A184760: Half the number of nX8 binary arrays with no 1 having an adjacent 1 both above and to its left.

The programs for A184760, there is no canonical definition to state claims against.
-/

/-! ## A184760.P14954869138286984561

`A184761(A374009(n+1))`
-/

namespace A184760.P14954869138286984561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (A374009 (n + 1)).toNat

end

end A184760.P14954869138286984561

/-! ## A184760.P1460729428181128935

`A184761(eq[13, A066657(n)])`
-/

namespace A184760.P1460729428181128935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184760.P1460729428181128935

/-! ## A184760.P1896588953507100154

`A184761(eq[9, A131818(n+1)])`
-/

namespace A184760.P1896588953507100154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184760.P1896588953507100154

/-! ## A184760.P9628938366738658063

`A184761(eq[5, A219347(n)])`
-/

namespace A184760.P9628938366738658063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184760.P9628938366738658063

/-! ## A184760.P4258700485615493013

`A184761(eq[7, A193592(n)])`
-/

namespace A184760.P4258700485615493013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184760.P4258700485615493013

/-!
# A184761: T(n,k)=Half the number of nXk binary arrays with no 1 having an adjacent 1 both above and to its left.

The programs for A184761, there is no canonical definition to state claims against.
-/

/-! ## A184761.P9799196580505582681

`or(A000122(A022092(n)), A208269(n+1))`
-/

namespace A184761.P9799196580505582681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 (A022092 n).toNat) (A208269 (n + 1))

end

end A184761.P9799196580505582681

/-! ## A184761.P17049036400490955527

`or(A208269(n+1), A328523(A008459(n)))`
-/

namespace A184761.P17049036400490955527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A208269 (n + 1)) (A328523 (A008459 n).toNat)

end

end A184761.P17049036400490955527

/-! ## A184761.P9623313863199731411

`or(A108611(A229142(n)), A208269(n+1))`
-/

namespace A184761.P9623313863199731411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108611 (A229142 n).toNat) (A208269 (n + 1))

end

end A184761.P9623313863199731411

/-! ## A184761.P337832113015210869

`or(A208269(n+1), A341677(A157149(n)))`
-/

namespace A184761.P337832113015210869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A208269 (n + 1)) (A341677 (A157149 n).toNat)

end

end A184761.P337832113015210869

/-! ## A184761.P440198616349811533

`A208269(n+1)+A184945(A001263(n+1))`
-/

namespace A184761.P440198616349811533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208269 (n + 1) + A184945 (A001263 (n + 1)).toNat

end

end A184761.P440198616349811533

/-!
# A184762: The number of numbers k > n such that Sum_{i=n..k} i^2 is a square.

The programs for A184762, there is no canonical definition to state claims against.
-/

/-! ## A184762.P4417065547761985546

`and((n+1)/∏{p}[n+1, #^val(n+1, #²)], A211986(∑[char[1]+n]+1))`
-/

namespace A184762.P4417065547761985546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))) (A211986 (∑ j ∈ Finset.range (n + 1), f2 j + 1))

end

end A184762.P4417065547761985546

/-! ## A184762.P4014102799991696416

`A007814(∑[gcd(3, n)]*A191669(n+2)+1)`
-/

namespace A184762.P4014102799991696416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A191669 (n + 2) + 1).toNat

end

end A184762.P4014102799991696416

/-! ## A184762.P15099522846894912169

`A135416(n+1)+A065040(A000079(n))`
-/

namespace A184762.P15099522846894912169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1) + A065040 (A000079 n).toNat

end

end A184762.P15099522846894912169

/-! ## A184762.P12653972567930422849

`A194550(A246096(2*n+1))%A194550(3*(n+1))`
-/

namespace A184762.P12653972567930422849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194550 (A246096 (2 * n + 1)).toNat) (A194550 (3 * (n + 1)))

end

end A184762.P12653972567930422849

/-! ## A184762.P1533065118079335997

`and(A055561(A005200(n+1)), A128114(n+4))`
-/

namespace A184762.P1533065118079335997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055561 (A005200 (n + 1)).toNat) (A128114 (n + 4))

end

end A184762.P1533065118079335997

/-!
# A184764: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock singular.

The programs for A184764, there is no canonical definition to state claims against.
-/

/-! ## A184764.P11348516619676981648

`A184773((n+1)²+n²)`
-/

namespace A184764.P11348516619676981648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184773 ((n + 1) ^ 2 + n ^ 2)

end

end A184764.P11348516619676981648

/-!
# A184765: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock singular.

The programs for A184765, there is no canonical definition to state claims against.
-/

/-! ## A184765.P3914582941925997142

`A184773(∑[n]+1)`
-/

namespace A184765.P3914582941925997142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184773 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184765.P3914582941925997142

/-! ## A184765.P9700411889850781660

`record[A010054(n)*A184773(n+1)]`
-/

namespace A184765.P9700411889850781660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184765.P9700411889850781660

/-! ## A184765.P12205076598489080857

`record[gcd(A002262(n), A184773(n+1))]`
-/

namespace A184765.P12205076598489080857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A184773 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184765.P12205076598489080857

/-! ## A184765.P15889113966516083573

`record[A184773(n+1)/A192722(n+1)]`
-/

namespace A184765.P15889113966516083573
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184773 (n + 1) : ℚ) / (A192722 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184765.P15889113966516083573

/-! ## A184765.P18257435313101336703

`record[root(A184773(n+1), A211836(n+1))]`
-/

namespace A184765.P18257435313101336703
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184773 (n + 1) : ℝ) ^ (1 / (A211836 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184765.P18257435313101336703

/-!
# A184766: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock singular.

The programs for A184766, there is no canonical definition to state claims against.
-/

/-! ## A184766.P7140698834770091391

`A184773(∑[n+1]+2)`
-/

namespace A184766.P7140698834770091391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184773 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184766.P7140698834770091391

/-! ## A184766.P13982998285196958901

`record[A010054(n)*A184773(n+2)]`
-/

namespace A184766.P13982998285196958901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184773 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184766.P13982998285196958901

/-! ## A184766.P15648831437148632842

`record[A184773(n+3)/A048882(n)]`
-/

namespace A184766.P15648831437148632842
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184773 (n + 3) : ℚ) / (A048882 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184766.P15648831437148632842

/-! ## A184766.P1260515593430610882

`record[gcd(A002262(n), A184773(n+2))]`
-/

namespace A184766.P1260515593430610882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A184773 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184766.P1260515593430610882

/-! ## A184766.P4116720192599383162

`record[root(A184773(n+2), A211836(n+1))]`
-/

namespace A184766.P4116720192599383162
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184773 (n + 2) : ℝ) ^ (1 / (A211836 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184766.P4116720192599383162

/-!
# A184767: Number of (n+1)X4 0..3 arrays with every 2X2 subblock singular.

The programs for A184767, there is no canonical definition to state claims against.
-/

/-! ## A184767.P14780077957657065886

`A184773(∑[n+2]+4)`
-/

namespace A184767.P14780077957657065886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184773 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184767.P14780077957657065886

/-! ## A184767.P2801852801309043636

`lcm(2, A184773(A167614(n+1)))`
-/

namespace A184767.P2801852801309043636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A184773 (A167614 (n + 1)).toNat)

end

end A184767.P2801852801309043636

/-! ## A184767.P9825024921551559506

`A043568(n)*A184773(A167614(n+1))`
-/

namespace A184767.P9825024921551559506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n * A184773 (A167614 (n + 1)).toNat

end

end A184767.P9825024921551559506

/-! ## A184767.P4423686055332305459

`A184773(A167614(n+1))+A180834(n+1)`
-/

namespace A184767.P4423686055332305459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184773 (A167614 (n + 1)).toNat + A180834 (n + 1)

end

end A184767.P4423686055332305459

/-! ## A184767.P4900261836828483695

`A184773(A167614(n+1))%A184661(n+1)`
-/

namespace A184767.P4900261836828483695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184773 (A167614 (n + 1)).toNat) (A184661 (n + 1))

end

end A184767.P4900261836828483695

/-!
# A184768: Number of (n+1)X5 0..3 arrays with every 2X2 subblock singular.

The programs for A184768, there is no canonical definition to state claims against.
-/

/-! ## A184768.P9876780622532636913

`A184773(A052905(n)+9)`
-/

namespace A184768.P9876780622532636913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184773 (A052905 n + 9).toNat

end

end A184768.P9876780622532636913

/-! ## A184768.P485631804871182170

`A184773(A055999(n)+10)`
-/

namespace A184768.P485631804871182170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184773 (A055999 n + 10).toNat

end

end A184768.P485631804871182170

/-! ## A184768.P16028540474272891521

`A184773(A167614(n+2)+1)`
-/

namespace A184768.P16028540474272891521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184773 (A167614 (n + 2) + 1).toNat

end

end A184768.P16028540474272891521

/-! ## A184768.P4364548212272701495

`A184773(Δ[A264443(n)-n²])`
-/

namespace A184768.P4364548212272701495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184773 (f1 (n + 1) - f1 n).toNat

end

end A184768.P4364548212272701495

/-! ## A184768.P14999502351624195217

`A184773(A141214(n+1))`
-/

namespace A184768.P14999502351624195217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184773 (A141214 (n + 1)).toNat

end

end A184768.P14999502351624195217

/-!
# A184769: Number of (n+1)X6 0..3 arrays with every 2X2 subblock singular.

The programs for A184769, there is no canonical definition to state claims against.
-/

/-! ## A184769.P10752309576667844411

`A184773(Δ[A264443(n)])`
-/

namespace A184769.P10752309576667844411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184773 (f1 (n + 1) - f1 n).toNat

end

end A184769.P10752309576667844411

/-! ## A184769.P1727449458912559454

`A184773(A374005(n+1))`
-/

namespace A184769.P1727449458912559454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184773 (A374005 (n + 1)).toNat

end

end A184769.P1727449458912559454

/-! ## A184769.P7328427965645888977

`A184773(A264443(n+1)-A264443(n))`
-/

namespace A184769.P7328427965645888977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184773 (A264443 (n + 1) - A264443 n).toNat

end

end A184769.P7328427965645888977

/-!
# A184770: Number of (n+1)X7 0..3 arrays with every 2X2 subblock singular.

The programs for A184770, there is no canonical definition to state claims against.
-/

/-! ## A184770.P13832544205301662459

`A184773(A167499(n+4)+1)`
-/

namespace A184770.P13832544205301662459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184773 (A167499 (n + 4) + 1).toNat

end

end A184770.P13832544205301662459

/-! ## A184770.P16855960070808394402

`A184773(A374007(n+1))`
-/

namespace A184770.P16855960070808394402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184773 (A374007 (n + 1)).toNat

end

end A184770.P16855960070808394402

/-! ## A184770.P6576210165164837193

`A184773(Δ[Δ[A006504(n+1)]])`
-/

namespace A184770.P6576210165164837193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184773 (f1 (n + 1) - f1 n).toNat

end

end A184770.P6576210165164837193

/-! ## A184770.P13223702929514350633

`A184773(Δ[A264443(n+1)]-1)`
-/

namespace A184770.P13223702929514350633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184773 (f1 (n + 1) - f1 n - 1).toNat

end

end A184770.P13223702929514350633

/-!
# A184774: Primes of the form floor(k*sqrt(2)).

The programs for A184774, the canonical program `A184774.P8415406567029398754` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184774 has offset 1).

The definition of A184774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184774.P8415406567029398754

`p?[floor(n*sqrt(2))]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184774

/-- `p?[floor(n*sqrt(2))]` -/
def P8415406567029398754.Spec : Prop :=
  ∀ n, P8415406567029398754.a n = A184774 (n + 1)

theorem P8415406567029398754.correct : P8415406567029398754.Spec := by
  intro n
  simp only [A184774, Nat.add_sub_cancel]

end A184774

/-! ## A184774.P9966031499039732479

`A000040(A184776(n+1))`
-/

namespace A184774.P9966031499039732479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184776 (n + 1)).toNat

end

end A184774.P9966031499039732479

namespace A184774

/-- `A000040(A184776(n+1))` -/
def P9966031499039732479.Spec : Prop :=
  ∀ n, P9966031499039732479.a n = A184774 (n + 1)

end A184774

/-! ## A184774.P10284431474701224717

`filter[A007069(n+1), A010051(#)]`
-/

namespace A184774.P10284431474701224717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A184774.P10284431474701224717

namespace A184774

/-- `filter[A007069(n+1), A010051(#)]` -/
def P10284431474701224717.Spec : Prop :=
  ∀ n, P10284431474701224717.a n = A184774 (n + 1)

end A184774

/-! ## A184774.P501954332070543692

`∩[A000040(n+1), A007069(n+1)]`
-/

namespace A184774.P501954332070543692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184774.P501954332070543692

namespace A184774

/-- `∩[A000040(n+1), A007069(n+1)]` -/
def P501954332070543692.Spec : Prop :=
  ∀ n, (P501954332070543692.a n : ℤ) = A184774 (n + 1)

end A184774

/-! ## A184774.P15344262077525439701

`∩[A007069(n+1), A045344(n+1)]`
-/

namespace A184774.P15344262077525439701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184774.P15344262077525439701

namespace A184774

/-- `∩[A007069(n+1), A045344(n+1)]` -/
def P15344262077525439701.Spec : Prop :=
  ∀ n, (P15344262077525439701.a n : ℤ) = A184774 (n + 1)

end A184774

/-! ## A184774.P10756210774669398437

`∩[A007069(n+1), A116974(n+1)]`
-/

namespace A184774.P10756210774669398437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184774.P10756210774669398437

namespace A184774

/-- `∩[A007069(n+1), A116974(n+1)]` -/
def P10756210774669398437.Spec : Prop :=
  ∀ n, (P10756210774669398437.a n : ℤ) = A184774 (n + 1)

end A184774

/-! ## A184774.P10967779066341398070

`∩[A007069(n+1), A175787(n+1)]`
-/

namespace A184774.P10967779066341398070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184774.P10967779066341398070

namespace A184774

/-- `∩[A007069(n+1), A175787(n+1)]` -/
def P10967779066341398070.Spec : Prop :=
  ∀ n, (P10967779066341398070.a n : ℤ) = A184774 (n + 1)

end A184774

/-! ## A184774.P762816343792950540

`∩[A007069(n+1), A182986(n+1)]`
-/

namespace A184774.P762816343792950540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184774.P762816343792950540

namespace A184774

/-- `∩[A007069(n+1), A182986(n+1)]` -/
def P762816343792950540.Spec : Prop :=
  ∀ n, (P762816343792950540.a n : ℤ) = A184774 (n + 1)

end A184774

/-! ## A184774.P3151796983242772145

`∩[A007069(n+1), A251595(n+1)]`
-/

namespace A184774.P3151796983242772145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184774.P3151796983242772145

namespace A184774

/-- `∩[A007069(n+1), A251595(n+1)]` -/
def P3151796983242772145.Spec : Prop :=
  ∀ n, (P3151796983242772145.a n : ℤ) = A184774 (n + 1)

end A184774

/-! ## A184774.P11496886227928186655

`A001951(A184775(n+1))`
-/

namespace A184774.P11496886227928186655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A184775 (n + 1)).toNat

end

end A184774.P11496886227928186655

namespace A184774

/-- `A001951(A184775(n+1))` -/
def P11496886227928186655.Spec : Prop :=
  ∀ n, P11496886227928186655.a n = A184774 (n + 1)

end A184774

/-! ## A184774.P9312792387174771824

`filter[A001951(n+1), A010051(#)]`
-/

namespace A184774.P9312792387174771824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A184774.P9312792387174771824

namespace A184774

/-- `filter[A001951(n+1), A010051(#)]` -/
def P9312792387174771824.Spec : Prop :=
  ∀ n, P9312792387174771824.a n = A184774 (n + 1)

end A184774

/-! ## A184774.P3373401628513306174

`∩[A000040(n+1), A001951(n)]`
-/

namespace A184774.P3373401628513306174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184774.P3373401628513306174

namespace A184774

/-- `∩[A000040(n+1), A001951(n)]` -/
def P3373401628513306174.Spec : Prop :=
  ∀ n, (P3373401628513306174.a n : ℤ) = A184774 (n + 1)

end A184774

/-! ## A184774.P10919474180834416491

`∩[A045344(n+1), A001951(n)]`
-/

namespace A184774.P10919474180834416491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184774.P10919474180834416491

namespace A184774

/-- `∩[A045344(n+1), A001951(n)]` -/
def P10919474180834416491.Spec : Prop :=
  ∀ n, (P10919474180834416491.a n : ℤ) = A184774 (n + 1)

end A184774

/-! ## A184774.P1532232449011116100

`∩[A116974(n+1), A001951(n)]`
-/

namespace A184774.P1532232449011116100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184774.P1532232449011116100

namespace A184774

/-- `∩[A116974(n+1), A001951(n)]` -/
def P1532232449011116100.Spec : Prop :=
  ∀ n, (P1532232449011116100.a n : ℤ) = A184774 (n + 1)

end A184774

/-! ## A184774.P6996927075456087157

`filter[A001951(n+2), A080339(#)]`
-/

namespace A184774.P6996927075456087157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A184774.P6996927075456087157

namespace A184774

/-- `filter[A001951(n+2), A080339(#)]` -/
def P6996927075456087157.Spec : Prop :=
  ∀ n, P6996927075456087157.a n = A184774 (n + 1)

end A184774

/-! ## A184774.P8806959826702710752

`filter[A007069(n+2), A080339(#)]`
-/

namespace A184774.P8806959826702710752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A184774.P8806959826702710752

namespace A184774

/-- `filter[A007069(n+2), A080339(#)]` -/
def P8806959826702710752.Spec : Prop :=
  ∀ n, P8806959826702710752.a n = A184774 (n + 1)

end A184774

/-! ## A184774.P15793672213674978839

`eq[A072721(n), A188295(n+1)]`
-/

namespace A184774.P15793672213674978839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184774.P15793672213674978839

namespace A184774

/-- `eq[A072721(n), A188295(n+1)]` -/
def P15793672213674978839.Spec : Prop :=
  ∀ n, (P15793672213674978839.a n : ℤ) = A184774 (n + 1)

end A184774

/-! ## A184774.P202900937360608587

`eq[A188295(n+1), A210442(n)]`
-/

namespace A184774.P202900937360608587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184774.P202900937360608587

namespace A184774

/-- `eq[A188295(n+1), A210442(n)]` -/
def P202900937360608587.Spec : Prop :=
  ∀ n, (P202900937360608587.a n : ℤ) = A184774 (n + 1)

end A184774

/-! ## A184774.P16938965047844359984

`eq[A188295(n+1), A211110(n)]`
-/

namespace A184774.P16938965047844359984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184774.P16938965047844359984

namespace A184774

/-- `eq[A188295(n+1), A211110(n)]` -/
def P16938965047844359984.Spec : Prop :=
  ∀ n, (P16938965047844359984.a n : ℤ) = A184774 (n + 1)

end A184774

/-! ## A184774.P13574242335255986742

`eq[A188295(n+1), A284289(n)]`
-/

namespace A184774.P13574242335255986742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184774.P13574242335255986742

namespace A184774

/-- `eq[A188295(n+1), A284289(n)]` -/
def P13574242335255986742.Spec : Prop :=
  ∀ n, (P13574242335255986742.a n : ℤ) = A184774 (n + 1)

end A184774

/-!
# A184775: Numbers k such that floor(k*sqrt(2)) is prime.

The programs for A184775, the canonical program `A184775.P16636506447541360976` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184775 has offset 1).

The definition of A184775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 866 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184775.P17082527913341842122

`eq[2, A000005(A001951(n+1))]+1`
-/

namespace A184775.P17082527913341842122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001951 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184775.P17082527913341842122

namespace A184775

/-- `eq[2, A000005(A001951(n+1))]+1` -/
def P17082527913341842122.Spec : Prop :=
  ∀ n, (P17082527913341842122.a n : ℤ) = A184775 (n + 1)

end A184775

/-! ## A184775.P4231238195429065432

`A026249(p?[A001951(n)])`
-/

namespace A184775.P4231238195429065432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184775.P4231238195429065432

namespace A184775

/-- `A026249(p?[A001951(n)])` -/
def P4231238195429065432.Spec : Prop :=
  ∀ n, P4231238195429065432.a n = A184775 (n + 1)

end A184775

/-! ## A184775.P16636506447541360976

`A049474(p?[A001951(n)])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A184775

/-- `A049474(p?[A001951(n)])` -/
def P16636506447541360976.Spec : Prop :=
  ∀ n, P16636506447541360976.a n = A184775 (n + 1)

theorem P16636506447541360976.correct : P16636506447541360976.Spec := by
  intro n
  simp only [A184775, Nat.add_sub_cancel]

end A184775

/-! ## A184775.P9075873096049571618

`A343205(p?[A001951(n)])`
-/

namespace A184775.P9075873096049571618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343205 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184775.P9075873096049571618

namespace A184775

/-- `A343205(p?[A001951(n)])` -/
def P9075873096049571618.Spec : Prop :=
  ∀ n, P9075873096049571618.a n = A184775 (n + 1)

end A184775

/-! ## A184775.P17019932899743968881

`A026249(A184774(n+1))`
-/

namespace A184775.P17019932899743968881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A184774 (n + 1)).toNat

end

end A184775.P17019932899743968881

namespace A184775

/-- `A026249(A184774(n+1))` -/
def P17019932899743968881.Spec : Prop :=
  ∀ n, P17019932899743968881.a n = A184775 (n + 1)

end A184775

/-! ## A184775.P2362687367236915614

`record[A026249(A000040(n+1))]`
-/

namespace A184775.P2362687367236915614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184775.P2362687367236915614

namespace A184775

/-- `record[A026249(A000040(n+1))]` -/
def P2362687367236915614.Spec : Prop :=
  ∀ n, P2362687367236915614.a n = A184775 (n + 1)

end A184775

/-! ## A184775.P7849212045779850565

`record[A026249(A006530(n+2))]`
-/

namespace A184775.P7849212045779850565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A006530 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184775.P7849212045779850565

namespace A184775

/-- `record[A026249(A006530(n+2))]` -/
def P7849212045779850565.Spec : Prop :=
  ∀ n, P7849212045779850565.a n = A184775 (n + 1)

end A184775

/-! ## A184775.P3807854689793196234

`record[A026249(A014963(n+2))]`
-/

namespace A184775.P3807854689793196234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A014963 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184775.P3807854689793196234

namespace A184775

/-- `record[A026249(A014963(n+2))]` -/
def P3807854689793196234.Spec : Prop :=
  ∀ n, P3807854689793196234.a n = A184775 (n + 1)

end A184775

/-! ## A184775.P16156802692785760975

`record[A026249(A020639(n+2))]`
-/

namespace A184775.P16156802692785760975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184775.P16156802692785760975

namespace A184775

/-- `record[A026249(A020639(n+2))]` -/
def P16156802692785760975.Spec : Prop :=
  ∀ n, P16156802692785760975.a n = A184775 (n + 1)

end A184775

/-! ## A184775.P4073875217692969558

`A049472(p?[A001951(n)]+1)`
-/

namespace A184775.P4073875217692969558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A184775.P4073875217692969558

namespace A184775

/-- `A049472(p?[A001951(n)]+1)` -/
def P4073875217692969558.Spec : Prop :=
  ∀ n, P4073875217692969558.a n = A184775 (n + 1)

end A184775

/-! ## A184775.P108023186240584435

`record[A026249(p?[A026234(n+1)])]`
-/

namespace A184775.P108023186240584435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184775.P108023186240584435

namespace A184775

/-- `record[A026249(p?[A026234(n+1)])]` -/
def P108023186240584435.Spec : Prop :=
  ∀ n, P108023186240584435.a n = A184775 (n + 1)

end A184775

/-! ## A184775.P15623946557232637730

`record[A026249(p?[A026239(n+1)])]`
-/

namespace A184775.P15623946557232637730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184775.P15623946557232637730

namespace A184775

/-- `record[A026249(p?[A026239(n+1)])]` -/
def P15623946557232637730.Spec : Prop :=
  ∀ n, P15623946557232637730.a n = A184775 (n + 1)

end A184775

/-! ## A184775.P2713345866615317933

`A049474(p?[comp[A001952(n+1)]])`
-/

namespace A184775.P2713345866615317933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A184775.P2713345866615317933

namespace A184775

/-- `A049474(p?[comp[A001952(n+1)]])` -/
def P2713345866615317933.Spec : Prop :=
  ∀ n, P2713345866615317933.a n = A184775 (n + 1)

end A184775

/-! ## A184775.P4802978005708107065

`record[A026251(n+1)/A000005(n+1)]`
-/

namespace A184775.P4802978005708107065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026251 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184775.P4802978005708107065

namespace A184775

/-- `record[A026251(n+1)/A000005(n+1)]` -/
def P4802978005708107065.Spec : Prop :=
  ∀ n, P4802978005708107065.a n = (A184775 (n + 1) : ℚ)

end A184775

/-! ## A184775.P10285178079005886718

`record[A026249(p?[A026233(n+1)])]`
-/

namespace A184775.P10285178079005886718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184775.P10285178079005886718

namespace A184775

/-- `record[A026249(p?[A026233(n+1)])]` -/
def P10285178079005886718.Spec : Prop :=
  ∀ n, P10285178079005886718.a n = A184775 (n + 1)

end A184775

/-! ## A184775.P2487445315005602944

`A049474(p?[A049472(2*n)])`
-/

namespace A184775.P2487445315005602944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184775.P2487445315005602944

namespace A184775

/-- `A049474(p?[A049472(2*n)])` -/
def P2487445315005602944.Spec : Prop :=
  ∀ n, P2487445315005602944.a n = A184775 (n + 1)

end A184775

/-! ## A184775.P16525662139264325027

`record[A026249(p?[A026249(n+1)])]`
-/

namespace A184775.P16525662139264325027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184775.P16525662139264325027

namespace A184775

/-- `record[A026249(p?[A026249(n+1)])]` -/
def P16525662139264325027.Spec : Prop :=
  ∀ n, P16525662139264325027.a n = A184775 (n + 1)

end A184775

/-! ## A184775.P8429752455553055725

`A049472(p?[A049472(2*n)]+1)`
-/

namespace A184775.P8429752455553055725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A184775.P8429752455553055725

namespace A184775

/-- `A049472(p?[A049472(2*n)]+1)` -/
def P8429752455553055725.Spec : Prop :=
  ∀ n, P8429752455553055725.a n = A184775 (n + 1)

end A184775

/-! ## A184775.P16924262360482165571

`A049474(p?[A049474(2*n)-1])`
-/

namespace A184775.P16924262360482165571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184775.P16924262360482165571

namespace A184775

/-- `A049474(p?[A049474(2*n)-1])` -/
def P16924262360482165571.Spec : Prop :=
  ∀ n, P16924262360482165571.a n = A184775 (n + 1)

end A184775

/-!
# A184776: Numbers m such that prime(m) is of the form floor(k*sqrt(2)); complement of A184779.

The programs for A184776, the canonical program `A184776.P6747012226356231733` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184776 has offset 1).

The definition of A184776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6740 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184776.P13705725570854541851

`comp[A184779(n+1)-1]+1`
-/

namespace A184776.P13705725570854541851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184779 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184776.P13705725570854541851

namespace A184776

/-- `comp[A184779(n+1)-1]+1` -/
def P13705725570854541851.Spec : Prop :=
  ∀ n, (P13705725570854541851.a n : ℤ) = A184776 (n + 1)

end A184776

/-! ## A184776.P15979822379426324415

`A000720(p?[floor(n*sqrt(2))])`
-/

namespace A184776.P15979822379426324415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184776.P15979822379426324415

namespace A184776

/-- `A000720(p?[floor(n*sqrt(2))])` -/
def P15979822379426324415.Spec : Prop :=
  ∀ n, P15979822379426324415.a n = A184776 (n + 1)

end A184776

/-! ## A184776.P13701659640353404112

`A000720(A184774(n+1))`
-/

namespace A184776.P13701659640353404112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A184774 (n + 1)).toNat

end

end A184776.P13701659640353404112

namespace A184776

/-- `A000720(A184774(n+1))` -/
def P13701659640353404112.Spec : Prop :=
  ∀ n, P13701659640353404112.a n = A184776 (n + 1)

end A184776

/-! ## A184776.P6747012226356231733

`A061395(A184774(n+1)+A000007(n+4))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A184776

/-- `A061395(A184774(n+1)+A000007(n+4))` -/
def P6747012226356231733.Spec : Prop :=
  ∀ n, P6747012226356231733.a n = A184776 (n + 1)

theorem P6747012226356231733.correct : P6747012226356231733.Spec := by
  intro n
  simp only [A184776, Nat.add_sub_cancel]

end A184776

/-! ## A184776.P2946601109512951564

`A061395(A184774(n+1))%A003355(n+1)`
-/

namespace A184776.P2946601109512951564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A184774 (n + 1)).toNat) (A003355 (n + 1))

end

end A184776.P2946601109512951564

namespace A184776

/-- `A061395(A184774(n+1))%A003355(n+1)` -/
def P2946601109512951564.Spec : Prop :=
  ∀ n, P2946601109512951564.a n = A184776 (n + 1)

end A184776

/-! ## A184776.P15092211586535103465

`A061395(A184774(n+1)%A007546(n+1))`
-/

namespace A184776.P15092211586535103465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A184774 (n + 1)) (A007546 (n + 1))).toNat

end

end A184776.P15092211586535103465

namespace A184776

/-- `A061395(A184774(n+1)%A007546(n+1))` -/
def P15092211586535103465.Spec : Prop :=
  ∀ n, P15092211586535103465.a n = A184776 (n + 1)

end A184776

/-! ## A184776.P6866776144195890155

`A061395(∩[A000040(n+1), A184774(n+1)])`
-/

namespace A184776.P6866776144195890155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184774 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A184776.P6866776144195890155

namespace A184776

/-- `A061395(∩[A000040(n+1), A184774(n+1)])` -/
def P6866776144195890155.Spec : Prop :=
  ∀ n, P6866776144195890155.a n = A184776 (n + 1)

end A184776

/-! ## A184776.P13248201449442209035

`A061395(∩[A000430(n+1), A184774(n+1)])`
-/

namespace A184776.P13248201449442209035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184774 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A184776.P13248201449442209035

namespace A184776

/-- `A061395(∩[A000430(n+1), A184774(n+1)])` -/
def P13248201449442209035.Spec : Prop :=
  ∀ n, P13248201449442209035.a n = A184776 (n + 1)

end A184776

/-! ## A184776.P10340019292449898564

`A061395(2*A184774(n+1))`
-/

namespace A184776.P10340019292449898564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A184774 (n + 1)).toNat

end

end A184776.P10340019292449898564

namespace A184776

/-- `A061395(2*A184774(n+1))` -/
def P10340019292449898564.Spec : Prop :=
  ∀ n, P10340019292449898564.a n = A184776 (n + 1)

end A184776

/-! ## A184776.P17600101692744362458

`∑{d}[p?[A007069(n+1)], A000720(#)]`
-/

namespace A184776.P17600101692744362458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d

end

end A184776.P17600101692744362458

namespace A184776

/-- `∑{d}[p?[A007069(n+1)], A000720(#)]` -/
def P17600101692744362458.Spec : Prop :=
  ∀ n, P17600101692744362458.a n = A184776 (n + 1)

end A184776

/-! ## A184776.P89288250671619234

`A061395(∩[A001651(n+1), A184774(n+1)])`
-/

namespace A184776.P89288250671619234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184774 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A184776.P89288250671619234

namespace A184776

/-- `A061395(∩[A001651(n+1), A184774(n+1)])` -/
def P89288250671619234.Spec : Prop :=
  ∀ n, P89288250671619234.a n = A184776 (n + 1)

end A184776

/-! ## A184776.P4507314246770766528

`A061395(p?[A001951(n)])`
-/

namespace A184776.P4507314246770766528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184776.P4507314246770766528

namespace A184776

/-- `A061395(p?[A001951(n)])` -/
def P4507314246770766528.Spec : Prop :=
  ∀ n, P4507314246770766528.a n = A184776 (n + 1)

end A184776

/-! ## A184776.P13489153337280487017

`record[A061395(A001951(n+2))]`
-/

namespace A184776.P13489153337280487017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A001951 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184776.P13489153337280487017

namespace A184776

/-- `record[A061395(A001951(n+2))]` -/
def P13489153337280487017.Spec : Prop :=
  ∀ n, P13489153337280487017.a n = A184776 (n + 1)

end A184776

/-! ## A184776.P10493795169005196763

`A026233(p?[floor(n*sqrt(2))])`
-/

namespace A184776.P10493795169005196763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184776.P10493795169005196763

namespace A184776

/-- `A026233(p?[floor(n*sqrt(2))])` -/
def P10493795169005196763.Spec : Prop :=
  ∀ n, P10493795169005196763.a n = A184776 (n + 1)

end A184776

/-! ## A184776.P17904708784061649180

`A055396(p?[floor(n*sqrt(2))])`
-/

namespace A184776.P17904708784061649180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184776.P17904708784061649180

namespace A184776

/-- `A055396(p?[floor(n*sqrt(2))])` -/
def P17904708784061649180.Spec : Prop :=
  ∀ n, P17904708784061649180.a n = A184776 (n + 1)

end A184776

/-! ## A184776.P7059759062584162437

`A230980(p?[floor(n*sqrt(2))])`
-/

namespace A184776.P7059759062584162437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184776.P7059759062584162437

namespace A184776

/-- `A230980(p?[floor(n*sqrt(2))])` -/
def P7059759062584162437.Spec : Prop :=
  ∀ n, P7059759062584162437.a n = A184776 (n + 1)

end A184776

/-! ## A184776.P3554544724465361316

`A003963(p?[A001951(n)])`
-/

namespace A184776.P3554544724465361316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184776.P3554544724465361316

namespace A184776

/-- `A003963(p?[A001951(n)])` -/
def P3554544724465361316.Spec : Prop :=
  ∀ n, P3554544724465361316.a n = A184776 (n + 1)

end A184776

/-! ## A184776.P1919372832630199245

`A049084(p?[A001951(n)])`
-/

namespace A184776.P1919372832630199245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184776.P1919372832630199245

namespace A184776

/-- `A049084(p?[A001951(n)])` -/
def P1919372832630199245.Spec : Prop :=
  ∀ n, P1919372832630199245.a n = A184776 (n + 1)

end A184776

/-! ## A184776.P5529149602776066930

`A087712(p?[A001951(n)])`
-/

namespace A184776.P5529149602776066930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184776.P5529149602776066930

namespace A184776

/-- `A087712(p?[A001951(n)])` -/
def P5529149602776066930.Spec : Prop :=
  ∀ n, P5529149602776066930.a n = A184776 (n + 1)

end A184776

/-! ## A184776.P5356180165885533223

`record[A049084(A007069(n+2))]`
-/

namespace A184776.P5356180165885533223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A007069 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184776.P5356180165885533223

namespace A184776

/-- `record[A049084(A007069(n+2))]` -/
def P5356180165885533223.Spec : Prop :=
  ∀ n, P5356180165885533223.a n = A184776 (n + 1)

end A184776

/-!
# A184777: Primes of the form 2k + floor(k*sqrt(2)).

The programs for A184777, the canonical program `A184777.P11433693623943600592` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184777 has offset 1).

The definition of A184777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8601 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184777.P11433693623943600592

`p?[floor((sqrt(2)+2)*(n+1))]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184777

/-- `p?[floor((sqrt(2)+2)*(n+1))]` -/
def P11433693623943600592.Spec : Prop :=
  ∀ n, P11433693623943600592.a n = A184777 (n + 1)

theorem P11433693623943600592.correct : P11433693623943600592.Spec := by
  intro n
  simp only [A184777, Nat.add_sub_cancel]

end A184777

/-! ## A184777.P12200434085484726904

`A000040(A184779(n+1))`
-/

namespace A184777.P12200434085484726904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184779 (n + 1)).toNat

end

end A184777.P12200434085484726904

namespace A184777

/-- `A000040(A184779(n+1))` -/
def P12200434085484726904.Spec : Prop :=
  ∀ n, P12200434085484726904.a n = A184777 (n + 1)

end A184777

/-! ## A184777.P8193626101579777244

`A008578(A184779(n+1)+1)`
-/

namespace A184777.P8193626101579777244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A184779 (n + 1) + 1).toNat

end

end A184777.P8193626101579777244

namespace A184777

/-- `A008578(A184779(n+1)+1)` -/
def P8193626101579777244.Spec : Prop :=
  ∀ n, P8193626101579777244.a n = A184777 (n + 1)

end A184777

/-! ## A184777.P10092559194305446428

`record[A020639(floor((sqrt(2)+2)*(n+1)))]`
-/

namespace A184777.P10092559194305446428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊(Real.sqrt (2 : ℝ) + 2) * (n + 1 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184777.P10092559194305446428

namespace A184777

/-- `record[A020639(floor((sqrt(2)+2)*(n+1)))]` -/
def P10092559194305446428.Spec : Prop :=
  ∀ n, P10092559194305446428.a n = A184777 (n + 1)

end A184777

/-! ## A184777.P1748936398438167656

`record[A006530(A341249(n+1))]`
-/

namespace A184777.P1748936398438167656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A341249 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184777.P1748936398438167656

namespace A184777

/-- `record[A006530(A341249(n+1))]` -/
def P1748936398438167656.Spec : Prop :=
  ∀ n, P1748936398438167656.a n = A184777 (n + 1)

end A184777

/-! ## A184777.P714126496111437403

`∩[A000040(n+1), A341249(n+1)]`
-/

namespace A184777.P714126496111437403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184777.P714126496111437403

namespace A184777

/-- `∩[A000040(n+1), A341249(n+1)]` -/
def P714126496111437403.Spec : Prop :=
  ∀ n, (P714126496111437403.a n : ℤ) = A184777 (n + 1)

end A184777

/-! ## A184777.P11515079314340444351

`∩[A004139(n+1), A341249(n+1)]`
-/

namespace A184777.P11515079314340444351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184777.P11515079314340444351

namespace A184777

/-- `∩[A004139(n+1), A341249(n+1)]` -/
def P11515079314340444351.Spec : Prop :=
  ∀ n, (P11515079314340444351.a n : ℤ) = A184777 (n + 1)

end A184777

/-! ## A184777.P15898593819283352182

`∩[A006005(n+1), A341249(n+1)]`
-/

namespace A184777.P15898593819283352182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184777.P15898593819283352182

namespace A184777

/-- `∩[A006005(n+1), A341249(n+1)]` -/
def P15898593819283352182.Spec : Prop :=
  ∀ n, (P15898593819283352182.a n : ℤ) = A184777 (n + 1)

end A184777

/-! ## A184777.P12111702829806934833

`∩[A008578(n+1), A341249(n+1)]`
-/

namespace A184777.P12111702829806934833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184777.P12111702829806934833

namespace A184777

/-- `∩[A008578(n+1), A341249(n+1)]` -/
def P12111702829806934833.Spec : Prop :=
  ∀ n, (P12111702829806934833.a n : ℤ) = A184777 (n + 1)

end A184777

/-! ## A184777.P10384289224003337466

`∩[A033946(n+1), A341249(n+1)]`
-/

namespace A184777.P10384289224003337466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184777.P10384289224003337466

namespace A184777

/-- `∩[A033946(n+1), A341249(n+1)]` -/
def P10384289224003337466.Spec : Prop :=
  ∀ n, (P10384289224003337466.a n : ℤ) = A184777 (n + 1)

end A184777

/-! ## A184777.P12623208896165785

`∩[A045319(n+1), A341249(n+1)]`
-/

namespace A184777.P12623208896165785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184777.P12623208896165785

namespace A184777

/-- `∩[A045319(n+1), A341249(n+1)]` -/
def P12623208896165785.Spec : Prop :=
  ∀ n, (P12623208896165785.a n : ℤ) = A184777 (n + 1)

end A184777

/-! ## A184777.P16583454759445425280

`∩[A046022(n+1), A341249(n+1)]`
-/

namespace A184777.P16583454759445425280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184777.P16583454759445425280

namespace A184777

/-- `∩[A046022(n+1), A341249(n+1)]` -/
def P16583454759445425280.Spec : Prop :=
  ∀ n, (P16583454759445425280.a n : ℤ) = A184777 (n + 1)

end A184777

/-! ## A184777.P9164371411927433810

`∩[A060634(n+1), A341249(n+1)]`
-/

namespace A184777.P9164371411927433810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184777.P9164371411927433810

namespace A184777

/-- `∩[A060634(n+1), A341249(n+1)]` -/
def P9164371411927433810.Spec : Prop :=
  ∀ n, (P9164371411927433810.a n : ℤ) = A184777 (n + 1)

end A184777

/-! ## A184777.P16172005273958907596

`∩[A062972(n+1), A341249(n+1)]`
-/

namespace A184777.P16172005273958907596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184777.P16172005273958907596

namespace A184777

/-- `∩[A062972(n+1), A341249(n+1)]` -/
def P16172005273958907596.Spec : Prop :=
  ∀ n, (P16172005273958907596.a n : ℤ) = A184777 (n + 1)

end A184777

/-! ## A184777.P4789878418572942368

`∩[A065091(n+1), A341249(n+1)]`
-/

namespace A184777.P4789878418572942368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184777.P4789878418572942368

namespace A184777

/-- `∩[A065091(n+1), A341249(n+1)]` -/
def P4789878418572942368.Spec : Prop :=
  ∀ n, (P4789878418572942368.a n : ℤ) = A184777 (n + 1)

end A184777

/-! ## A184777.P8590281515099247007

`∩[A066050(n+1), A341249(n+1)]`
-/

namespace A184777.P8590281515099247007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184777.P8590281515099247007

namespace A184777

/-- `∩[A066050(n+1), A341249(n+1)]` -/
def P8590281515099247007.Spec : Prop :=
  ∀ n, (P8590281515099247007.a n : ℤ) = A184777 (n + 1)

end A184777

/-! ## A184777.P6450592361825933329

`∩[A067126(n+1), A341249(n+1)]`
-/

namespace A184777.P6450592361825933329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184777.P6450592361825933329

namespace A184777

/-- `∩[A067126(n+1), A341249(n+1)]` -/
def P6450592361825933329.Spec : Prop :=
  ∀ n, (P6450592361825933329.a n : ℤ) = A184777 (n + 1)

end A184777

/-! ## A184777.P3553491018716356290

`∩[A140826(n+1), A341249(n+1)]`
-/

namespace A184777.P3553491018716356290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184777.P3553491018716356290

namespace A184777

/-- `∩[A140826(n+1), A341249(n+1)]` -/
def P3553491018716356290.Spec : Prop :=
  ∀ n, (P3553491018716356290.a n : ℤ) = A184777 (n + 1)

end A184777

/-! ## A184777.P5377565134888748553

`∩[A193339(n+1), A341249(n+1)]`
-/

namespace A184777.P5377565134888748553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184777.P5377565134888748553

namespace A184777

/-- `∩[A193339(n+1), A341249(n+1)]` -/
def P5377565134888748553.Spec : Prop :=
  ∀ n, (P5377565134888748553.a n : ℤ) = A184777 (n + 1)

end A184777

/-! ## A184777.P6301290452811601227

`A001952(A184778(n+1))`
-/

namespace A184777.P6301290452811601227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A184778 (n + 1)).toNat

end

end A184777.P6301290452811601227

namespace A184777

/-- `A001952(A184778(n+1))` -/
def P6301290452811601227.Spec : Prop :=
  ∀ n, P6301290452811601227.a n = A184777 (n + 1)

end A184777

/-!
# A184778: Numbers k such that 2k + floor(k*sqrt(2)) is prime.

The programs for A184778, the canonical program `A184778.P8996054944129193767` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184778 has offset 1).

The definition of A184778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184778.P14142738118937921981

`eq[2, ∏{e}[floor(n*sqrt(2))+2*n, #+1]]`
-/

namespace A184778.P14142738118937921981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + (2 * n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184778.P14142738118937921981

namespace A184778

/-- `eq[2, ∏{e}[floor(n*sqrt(2))+2*n, #+1]]` -/
def P14142738118937921981.Spec : Prop :=
  ∀ n, (P14142738118937921981.a n : ℤ) = A184778 (n + 1)

end A184778

/-! ## A184778.P16223577529165248656

`lt[A001222(A001952(n+1)), 2]+1`
-/

namespace A184778.P16223577529165248656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001952 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A184778.P16223577529165248656

namespace A184778

/-- `lt[A001222(A001952(n+1)), 2]+1` -/
def P16223577529165248656.Spec : Prop :=
  ∀ n, (P16223577529165248656.a n : ℤ) = A184778 (n + 1)

end A184778

/-! ## A184778.P8996054944129193767

`record[(n+1)*A010051(A003151(n+1)+n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A184778

/-- `record[(n+1)*A010051(A003151(n+1)+n+1)]` -/
def P8996054944129193767.Spec : Prop :=
  ∀ n, P8996054944129193767.a n = A184778 (n + 1)

theorem P8996054944129193767.correct : P8996054944129193767.Spec := by
  intro n
  simp only [A184778, Nat.add_sub_cancel]

end A184778

/-! ## A184778.P926338994433681929

`record[A006530(A001952(n+1))-A003151(n+1)]`
-/

namespace A184778.P926338994433681929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001952 (n + 1)).toNat - A003151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184778.P926338994433681929

namespace A184778

/-- `record[A006530(A001952(n+1))-A003151(n+1)]` -/
def P926338994433681929.Spec : Prop :=
  ∀ n, P926338994433681929.a n = A184778 (n + 1)

end A184778

/-! ## A184778.P3105510678799770786

`A026249(A184777(n+1))`
-/

namespace A184778.P3105510678799770786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A184777 (n + 1)).toNat

end

end A184778.P3105510678799770786

namespace A184778

/-- `A026249(A184777(n+1))` -/
def P3105510678799770786.Spec : Prop :=
  ∀ n, P3105510678799770786.a n = A184778 (n + 1)

end A184778

/-! ## A184778.P2830293516364313747

`A026249(p?[A001952(n+1)])`
-/

namespace A184778.P2830293516364313747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184778.P2830293516364313747

namespace A184778

/-- `A026249(p?[A001952(n+1)])` -/
def P2830293516364313747.Spec : Prop :=
  ∀ n, P2830293516364313747.a n = A184778 (n + 1)

end A184778

/-! ## A184778.P17938074486958925300

`A194920(p?[A001952(n+1)])`
-/

namespace A184778.P17938074486958925300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184778.P17938074486958925300

namespace A184778

/-- `A194920(p?[A001952(n+1)])` -/
def P17938074486958925300.Spec : Prop :=
  ∀ n, P17938074486958925300.a n = A184778 (n + 1)

end A184778

/-! ## A184778.P14742417008070398950

`A195119(p?[A001952(n+1)])/2`
-/

namespace A184778.P14742417008070398950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195119 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A184778.P14742417008070398950

namespace A184778

/-- `A195119(p?[A001952(n+1)])/2` -/
def P14742417008070398950.Spec : Prop :=
  ∀ n, P14742417008070398950.a n = (A184778 (n + 1) : ℚ)

end A184778

/-! ## A184778.P12352695676879090369

`record[(n+1)%A014963(A003151(n+1)+n+1)]`
-/

namespace A184778.P12352695676879090369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014963 (A003151 (n + 1) + (n + 1 : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184778.P12352695676879090369

namespace A184778

/-- `record[(n+1)%A014963(A003151(n+1)+n+1)]` -/
def P12352695676879090369.Spec : Prop :=
  ∀ n, P12352695676879090369.a n = A184778 (n + 1)

end A184778

/-! ## A184778.P14673475146763008658

`lt[A005574(n+1), A014963(A001952(n+1))²]+1`
-/

namespace A184778.P14673475146763008658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001952 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A184778.P14673475146763008658

namespace A184778

/-- `lt[A005574(n+1), A014963(A001952(n+1))²]+1` -/
def P14673475146763008658.Spec : Prop :=
  ∀ n, (P14673475146763008658.a n : ℤ) = A184778 (n + 1)

end A184778

/-! ## A184778.P4545591507386548634

`lt[A068902(n+1), A014963(A001952(n+1))²]+1`
-/

namespace A184778.P4545591507386548634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001952 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A184778.P4545591507386548634

namespace A184778

/-- `lt[A068902(n+1), A014963(A001952(n+1))²]+1` -/
def P4545591507386548634.Spec : Prop :=
  ∀ n, (P4545591507386548634.a n : ℤ) = A184778 (n + 1)

end A184778

/-!
# A184779: Numbers m such that prime(m) is of the form 2k + floor(k*sqrt(2)); complement of A184776.

The programs for A184779, the canonical program `A184779.P1472640870444816487` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184779 has offset 1).

The definition of A184779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2852 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184779.P1472640870444816487

`A000720(A184777(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184779

/-- `A000720(A184777(n+1))` -/
def P1472640870444816487.Spec : Prop :=
  ∀ n, P1472640870444816487.a n = A184779 (n + 1)

theorem P1472640870444816487.correct : P1472640870444816487.Spec := by
  intro n
  simp only [A184779, Nat.add_sub_cancel]

end A184779

/-! ## A184779.P17673017408351392406

`A000720(p?[A001952(n+1)])`
-/

namespace A184779.P17673017408351392406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184779.P17673017408351392406

namespace A184779

/-- `A000720(p?[A001952(n+1)])` -/
def P17673017408351392406.Spec : Prop :=
  ∀ n, P17673017408351392406.a n = A184779 (n + 1)

end A184779

/-! ## A184779.P11111624024093854027

`A061395(p?[A001952(n+1)])`
-/

namespace A184779.P11111624024093854027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184779.P11111624024093854027

namespace A184779

/-- `A061395(p?[A001952(n+1)])` -/
def P11111624024093854027.Spec : Prop :=
  ∀ n, P11111624024093854027.a n = A184779 (n + 1)

end A184779

/-! ## A184779.P16424203612931575749

`A000720(p?[A001951(n)+2*n])`
-/

namespace A184779.P16424203612931575749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184779.P16424203612931575749

namespace A184779

/-- `A000720(p?[A001951(n)+2*n])` -/
def P16424203612931575749.Spec : Prop :=
  ∀ n, P16424203612931575749.a n = A184779 (n + 1)

end A184779

/-! ## A184779.P16696449909836735669

`A000720(p?[A007069(n+2)+1])`
-/

namespace A184779.P16696449909836735669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007069 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184779.P16696449909836735669

namespace A184779

/-- `A000720(p?[A007069(n+2)+1])` -/
def P16696449909836735669.Spec : Prop :=
  ∀ n, P16696449909836735669.a n = A184779 (n + 1)

end A184779

/-! ## A184779.P5817029911952898376

`A049084(p?[A001952(n+1)])`
-/

namespace A184779.P5817029911952898376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184779.P5817029911952898376

namespace A184779

/-- `A049084(p?[A001952(n+1)])` -/
def P5817029911952898376.Spec : Prop :=
  ∀ n, P5817029911952898376.a n = A184779 (n + 1)

end A184779

/-! ## A184779.P12910165763845433267

`A252464(p?[A001952(n+1)])`
-/

namespace A184779.P12910165763845433267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184779.P12910165763845433267

namespace A184779

/-- `A252464(p?[A001952(n+1)])` -/
def P12910165763845433267.Spec : Prop :=
  ∀ n, P12910165763845433267.a n = A184779 (n + 1)

end A184779

/-! ## A184779.P17007934812026510331

`eq[1, A171588(A008578(n+1))]`
-/

namespace A184779.P17007934812026510331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A184779.P17007934812026510331

namespace A184779

/-- `eq[1, A171588(A008578(n+1))]` -/
def P17007934812026510331.Spec : Prop :=
  ∀ n, (P17007934812026510331.a n : ℤ) = A184779 (n + 1)

end A184779

/-! ## A184779.P4284811775555707304

`record[A049084(A007069(n+2)+1)]`
-/

namespace A184779.P4284811775555707304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A007069 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184779.P4284811775555707304

namespace A184779

/-- `record[A049084(A007069(n+2)+1)]` -/
def P4284811775555707304.Spec : Prop :=
  ∀ n, P4284811775555707304.a n = A184779 (n + 1)

end A184779

/-! ## A184779.P9913193528207133992

`record[A049084(A003152(2*(n+1)))]`
-/

namespace A184779.P9913193528207133992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A003152 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184779.P9913193528207133992

namespace A184779

/-- `record[A049084(A003152(2*(n+1)))]` -/
def P9913193528207133992.Spec : Prop :=
  ∀ n, P9913193528207133992.a n = A184779 (n + 1)

end A184779

/-! ## A184779.P6884460754133707265

`A049084(p?[A003152(2*(n+1))])`
-/

namespace A184779.P6884460754133707265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184779.P6884460754133707265

namespace A184779

/-- `A049084(p?[A003152(2*(n+1))])` -/
def P6884460754133707265.Spec : Prop :=
  ∀ n, P6884460754133707265.a n = A184779 (n + 1)

end A184779

/-! ## A184779.P3079485073097822133

`lt[A188295(A000040(n+1)+1), 1]+1`
-/

namespace A184779.P3079485073097822133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (A000040 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A184779.P3079485073097822133

namespace A184779

/-- `lt[A188295(A000040(n+1)+1), 1]+1` -/
def P3079485073097822133.Spec : Prop :=
  ∀ n, (P3079485073097822133.a n : ℤ) = A184779 (n + 1)

end A184779

/-! ## A184779.P6922941529018960390

`A000720(p?[gcd(n+1, A286687(n+1)+1)]+1)`
-/

namespace A184779.P6922941529018960390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A286687 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1)

end

end A184779.P6922941529018960390

namespace A184779

/-- `A000720(p?[gcd(n+1, A286687(n+1)+1)]+1)` -/
def P6922941529018960390.Spec : Prop :=
  ∀ n, P6922941529018960390.a n = A184779 (n + 1)

end A184779

/-!
# A184780: Number of (n+2)X3 0..2 arrays with each 3X3 subblock nonsingular.

The programs for A184780, there is no canonical definition to state claims against.
-/

/-! ## A184780.P14685454214842092490

`A184784(∑[n]+1)`
-/

namespace A184780.P14685454214842092490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184784 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184780.P14685454214842092490

/-! ## A184780.P5796481217936383956

`record[root(A184784(n+1), A074909(n))]`
-/

namespace A184780.P5796481217936383956
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184784 (n + 1) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184780.P5796481217936383956

/-! ## A184780.P7701598409651142325

`record[root(A184784(n+1), A085478(n))]`
-/

namespace A184780.P7701598409651142325
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184784 (n + 1) : ℝ) ^ (1 / (A085478 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184780.P7701598409651142325

/-! ## A184780.P18171711113761751154

`record[root(A184784(n+1), A176420(n))]`
-/

namespace A184780.P18171711113761751154
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184784 (n + 1) : ℝ) ^ (1 / (A176420 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184780.P18171711113761751154

/-! ## A184780.P5443931796285778363

`record[gcd(A002262(n), A184784(n+1))]`
-/

namespace A184780.P5443931796285778363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A184784 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184780.P5443931796285778363

/-!
# A184781: Number of (n+2)X4 0..2 arrays with each 3X3 subblock nonsingular.

The programs for A184781, there is no canonical definition to state claims against.
-/

/-! ## A184781.P1999838276987172811

`A184784(∑[n+1]+2)`
-/

namespace A184781.P1999838276987172811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184784 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184781.P1999838276987172811

/-! ## A184781.P9270964188177121599

`record[root(A184784(n+2), A074909(n))]`
-/

namespace A184781.P9270964188177121599
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184784 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184781.P9270964188177121599

/-! ## A184781.P11564836488560513074

`record[root(A184784(n+3), A091965(n))]`
-/

namespace A184781.P11564836488560513074
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184784 (n + 3) : ℝ) ^ (1 / (A091965 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184781.P11564836488560513074

/-! ## A184781.P17434299266926504735

`record[gcd(A002262(n), A184784(n+2))]`
-/

namespace A184781.P17434299266926504735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A184784 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184781.P17434299266926504735

/-!
# A184782: Number of (n+2)X5 0..2 arrays with each 3X3 subblock nonsingular.

The programs for A184782, there is no canonical definition to state claims against.
-/

/-! ## A184782.P9606791099277084929

`A184784(∑[n+3]+1)`
-/

namespace A184782.P9606791099277084929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184784 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184782.P9606791099277084929

/-!
# A184785: Let A(x) satisfy: A(x) = 1 + x*A(x)^phi where phi = (sqrt(5)+1)/2, then this sequence equals the integer part of the coefficients of A(x).

The programs for A184785, there is no canonical definition to state claims against.
-/

/-! ## A184785.P6357857619810639216

`floor(A022144(A127911(n))/A022144(n))`
-/

namespace A184785.P6357857619810639216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022144 (A127911 n).toNat : ℚ) / (A022144 n : ℚ)⌋

end

end A184785.P6357857619810639216

/-! ## A184785.P13648845169936416971

`floor(A028310(A127911(n))/A028310(n))`
-/

namespace A184785.P13648845169936416971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028310 (A127911 n).toNat : ℚ) / (A028310 n : ℚ)⌋

end

end A184785.P13648845169936416971

/-! ## A184785.P7875643021085587509

`A008618(A307683(3*n+4)+A006355(2*(n+1)))`
-/

namespace A184785.P7875643021085587509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A307683 (3 * n + 4) + A006355 (2 * (n + 1))).toNat

end

end A184785.P7875643021085587509

/-! ## A184785.P15799969466124224417

`A026819(or(n, A148429(n)))`
-/

namespace A184785.P15799969466124224417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (Int.lor (n : ℤ) (A148429 n)).toNat

end

end A184785.P15799969466124224417

/-! ## A184785.P15370417357833738418

`A046155(or(n, A148429(n)))`
-/

namespace A184785.P15370417357833738418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (Int.lor (n : ℤ) (A148429 n)).toNat

end

end A184785.P15370417357833738418

/-!
# A184786: Let A(x) satisfy: A(x) = 1 + x*A(x)^(phi^2) where phi = (sqrt(5)+1)/2, then this sequence equals the integer part of the coefficients of A(x).

The programs for A184786, there is no canonical definition to state claims against.
-/

/-! ## A184786.P12710277165362019512

`A059169(A150806(n)+2+n)`
-/

namespace A184786.P12710277165362019512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A150806 n + 2 + (n : ℤ)).toNat

end

end A184786.P12710277165362019512

/-! ## A184786.P2028531284464704897

`A326294(n)+A217657(A326330(n))`
-/

namespace A184786.P2028531284464704897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326294 n + A217657 (A326330 n).toNat

end

end A184786.P2028531284464704897

/-! ## A184786.P12309938048507350544

`A027868(A006139(n))+A000700(n+4)`
-/

namespace A184786.P12309938048507350544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A006139 n).toNat + A000700 (n + 4)

end

end A184786.P12309938048507350544

/-!
# A184787: Number of (n+2)X3 0..2 arrays with each 3X3 subblock singular.

The programs for A184787, there is no canonical definition to state claims against.
-/

/-! ## A184787.P8889110192893508269

`A184791(∑[n]+1)`
-/

namespace A184787.P8889110192893508269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184791 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184787.P8889110192893508269

/-! ## A184787.P9914285522177917460

`lcm(3, A184791(∑[A028310(n)]))`
-/

namespace A184787.P9914285522177917460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A184791 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A184787.P9914285522177917460

/-! ## A184787.P943501916541929729

`record[root(A184791(n+1), A088617(n))]`
-/

namespace A184787.P943501916541929729
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184791 (n + 1) : ℝ) ^ (1 / (A088617 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184787.P943501916541929729

/-! ## A184787.P4792561082093246111

`record[root(A184791(n+1), A090642(n))]`
-/

namespace A184787.P4792561082093246111
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184791 (n + 1) : ℝ) ^ (1 / (A090642 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184787.P4792561082093246111

/-! ## A184787.P14927024139222492043

`record[root(A184791(n+1), A131376(n))]`
-/

namespace A184787.P14927024139222492043
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184791 (n + 1) : ℝ) ^ (1 / (A131376 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184787.P14927024139222492043

/-!
# A184788: Number of (n+2)X4 0..2 arrays with each 3X3 subblock singular.

The programs for A184788, there is no canonical definition to state claims against.
-/

/-! ## A184788.P7132753421025957132

`A184791(∑[n+1]+2)`
-/

namespace A184788.P7132753421025957132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184791 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184788.P7132753421025957132

/-! ## A184788.P15234830277987594791

`record[A184791(A006218(n+2))]`
-/

namespace A184788.P15234830277987594791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184791 (A006218 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184788.P15234830277987594791

/-! ## A184788.P12981349749399819811

`record[A184791(Δ[A003453(n+5)])]`
-/

namespace A184788.P12981349749399819811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184791 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184788.P12981349749399819811

/-!
# A184789: Number of (n+2)X5 0..2 arrays with each 3X3 subblock singular.

The programs for A184789, there is no canonical definition to state claims against.
-/

/-! ## A184789.P11834438408222894844

`A184791(∑[n+2]+4)`
-/

namespace A184789.P11834438408222894844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184791 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184789.P11834438408222894844

/-!
# A184792: Numbers k such that floor(k*r) is prime, where r = golden ratio=(1+sqrt(5))/2.

The programs for A184792, the canonical program `A184792.P18110028919683194408` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184792 has offset 1).

The definition of A184792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184792.P18110028919683194408

`ceil(p?[floor(ϕ*n)]/ϕ)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184792

/-- `ceil(p?[floor(ϕ*n)]/ϕ)` -/
def P18110028919683194408.Spec : Prop :=
  ∀ n, P18110028919683194408.a n = A184792 (n + 1)

theorem P18110028919683194408.correct : P18110028919683194408.Spec := by
  intro n
  simp only [A184792, Nat.add_sub_cancel]

end A184792

/-! ## A184792.P11075264407177971030

`floor((p?[floor(ϕ*n)]+1)/ϕ)`
-/

namespace A184792.P11075264407177971030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℝ) / Real.goldenRatio⌋

end

end A184792.P11075264407177971030

namespace A184792

/-- `floor((p?[floor(ϕ*n)]+1)/ϕ)` -/
def P11075264407177971030.Spec : Prop :=
  ∀ n, P11075264407177971030.a n = A184792 (n + 1)

end A184792

/-! ## A184792.P13746018108764328905

`ceil(∏{p}[p?[ceil((n+1)/ϕ)+n], #]/ϕ)`
-/

namespace A184792.P13746018108764328905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉ + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℝ) / Real.goldenRatio⌉

end

end A184792.P13746018108764328905

namespace A184792

/-- `ceil(∏{p}[p?[ceil((n+1)/ϕ)+n], #]/ϕ)` -/
def P13746018108764328905.Spec : Prop :=
  ∀ n, P13746018108764328905.a n = A184792 (n + 1)

end A184792

/-! ## A184792.P2748565409104996458

`eq[1, A001222(floor(ϕ*(n+1)))]+1`
-/

namespace A184792.P2748565409104996458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184792.P2748565409104996458

namespace A184792

/-- `eq[1, A001222(floor(ϕ*(n+1)))]+1` -/
def P2748565409104996458.Spec : Prop :=
  ∀ n, (P2748565409104996458.a n : ℤ) = A184792 (n + 1)

end A184792

/-! ## A184792.P15971077234037831773

`eq[2, A000005(floor(ϕ*(n+1)))]+1`
-/

namespace A184792.P15971077234037831773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A184792.P15971077234037831773

namespace A184792

/-- `eq[2, A000005(floor(ϕ*(n+1)))]+1` -/
def P15971077234037831773.Spec : Prop :=
  ∀ n, (P15971077234037831773.a n : ℤ) = A184792 (n + 1)

end A184792

/-! ## A184792.P12125608682627551726

`A005206(p?[floor(ϕ*n)])`
-/

namespace A184792.P12125608682627551726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184792.P12125608682627551726

namespace A184792

/-- `A005206(p?[floor(ϕ*n)])` -/
def P12125608682627551726.Spec : Prop :=
  ∀ n, P12125608682627551726.a n = A184792 (n + 1)

end A184792

/-! ## A184792.P5420679900031087363

`A005206(A095280(n+1))`
-/

namespace A184792.P5420679900031087363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A095280 (n + 1)).toNat

end

end A184792.P5420679900031087363

namespace A184792

/-- `A005206(A095280(n+1))` -/
def P5420679900031087363.Spec : Prop :=
  ∀ n, P5420679900031087363.a n = A184792 (n + 1)

end A184792

/-! ## A184792.P1357091332869818992

`A019446(p?[floor(ϕ*n)])`
-/

namespace A184792.P1357091332869818992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184792.P1357091332869818992

namespace A184792

/-- `A019446(p?[floor(ϕ*n)])` -/
def P1357091332869818992.Spec : Prop :=
  ∀ n, P1357091332869818992.a n = A184792 (n + 1)

end A184792

/-! ## A184792.P1587265300690486613

`record[A120873(p?[2*n+1])]`
-/

namespace A184792.P1587265300690486613
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120873 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184792.P1587265300690486613

namespace A184792

/-- `record[A120873(p?[2*n+1])]` -/
def P1587265300690486613.Spec : Prop :=
  ∀ n, P1587265300690486613.a n = A184792 (n + 1)

end A184792

/-! ## A184792.P5081030380959027223

`A005379(p?[A000201(n+1)])`
-/

namespace A184792.P5081030380959027223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184792.P5081030380959027223

namespace A184792

/-- `A005379(p?[A000201(n+1)])` -/
def P5081030380959027223.Spec : Prop :=
  ∀ n, P5081030380959027223.a n = A184792 (n + 1)

end A184792

/-!
# A184793: Numbers m such that prime(m) is of the form floor(k*r), where r=(1+sqrt(5))/2; complement of A180736.

The programs for A184793, the canonical program `A184793.P9825854891666558465` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184793 has offset 1).

The definition of A184793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5973 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184793.P4995902721662168602

`A000720(p?[floor(ϕ*n)])`
-/

namespace A184793.P4995902721662168602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184793.P4995902721662168602

namespace A184793

/-- `A000720(p?[floor(ϕ*n)])` -/
def P4995902721662168602.Spec : Prop :=
  ∀ n, P4995902721662168602.a n = A184793 (n + 1)

end A184793

/-! ## A184793.P9825854891666558465

`A000720(A095280(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184793

/-- `A000720(A095280(n+1))` -/
def P9825854891666558465.Spec : Prop :=
  ∀ n, P9825854891666558465.a n = A184793 (n + 1)

theorem P9825854891666558465.correct : P9825854891666558465.Spec := by
  intro n
  simp only [A184793, Nat.add_sub_cancel]

end A184793

/-! ## A184793.P10572277745312692215

`A263297(p?[floor(ϕ*n)])`
-/

namespace A184793.P10572277745312692215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184793.P10572277745312692215

namespace A184793

/-- `A263297(p?[floor(ϕ*n)])` -/
def P10572277745312692215.Spec : Prop :=
  ∀ n, P10572277745312692215.a n = A184793 (n + 1)

end A184793

/-! ## A184793.P2837209145279293713

`A003963(p?[floor(ϕ*n)])`
-/

namespace A184793.P2837209145279293713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184793.P2837209145279293713

namespace A184793

/-- `A003963(p?[floor(ϕ*n)])` -/
def P2837209145279293713.Spec : Prop :=
  ∀ n, P2837209145279293713.a n = A184793 (n + 1)

end A184793

/-! ## A184793.P14229185767784242083

`A026233(p?[floor(ϕ*n)])`
-/

namespace A184793.P14229185767784242083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184793.P14229185767784242083

namespace A184793

/-- `A026233(p?[floor(ϕ*n)])` -/
def P14229185767784242083.Spec : Prop :=
  ∀ n, P14229185767784242083.a n = A184793 (n + 1)

end A184793

/-! ## A184793.P6377362715014954210

`A026238(p?[floor(ϕ*n)])`
-/

namespace A184793.P6377362715014954210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184793.P6377362715014954210

namespace A184793

/-- `A026238(p?[floor(ϕ*n)])` -/
def P6377362715014954210.Spec : Prop :=
  ∀ n, P6377362715014954210.a n = A184793 (n + 1)

end A184793

/-! ## A184793.P15719921537186090562

`A049084(p?[floor(ϕ*n)])`
-/

namespace A184793.P15719921537186090562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184793.P15719921537186090562

namespace A184793

/-- `A049084(p?[floor(ϕ*n)])` -/
def P15719921537186090562.Spec : Prop :=
  ∀ n, P15719921537186090562.a n = A184793 (n + 1)

end A184793

/-! ## A184793.P12861417625593809753

`A230980(p?[floor(ϕ*n)])`
-/

namespace A184793.P12861417625593809753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184793.P12861417625593809753

namespace A184793

/-- `A230980(p?[floor(ϕ*n)])` -/
def P12861417625593809753.Spec : Prop :=
  ∀ n, P12861417625593809753.a n = A184793 (n + 1)

end A184793

/-! ## A184793.P1786446631545795814

`record[A049084(floor(ϕ*(n+2)))]`
-/

namespace A184793.P1786446631545795814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 ⌊Real.goldenRatio * (n + 2 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184793.P1786446631545795814

namespace A184793

/-- `record[A049084(floor(ϕ*(n+2)))]` -/
def P1786446631545795814.Spec : Prop :=
  ∀ n, P1786446631545795814.a n = A184793 (n + 1)

end A184793

/-! ## A184793.P16422012247995397947

`A036234(p?[floor(ϕ*n)]-1)`
-/

namespace A184793.P16422012247995397947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A184793.P16422012247995397947

namespace A184793

/-- `A036234(p?[floor(ϕ*n)]-1)` -/
def P16422012247995397947.Spec : Prop :=
  ∀ n, P16422012247995397947.a n = A184793 (n + 1)

end A184793

/-!
# A184794: Numbers k such that floor(k*s) is prime, where s = (3 + sqrt(5))/2.

The programs for A184794, the canonical program `A184794.P12386702789131732799` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184794 has offset 1).

The definition of A184794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8735 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184794.P12386702789131732799

`round(p?[floor(n*ϕ²)]/ϕ²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184794

/-- `round(p?[floor(n*ϕ²)]/ϕ²)` -/
def P12386702789131732799.Spec : Prop :=
  ∀ n, P12386702789131732799.a n = A184794 (n + 1)

theorem P12386702789131732799.correct : P12386702789131732799.Spec := by
  intro n
  simp only [A184794, Nat.add_sub_cancel]

end A184794

/-! ## A184794.P13925797044600641162

`record[(n+1)/A001222(floor((n+1)*ϕ²))]`
-/

namespace A184794.P13925797044600641162
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001222 ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋.toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184794.P13925797044600641162

namespace A184794

/-- `record[(n+1)/A001222(floor((n+1)*ϕ²))]` -/
def P13925797044600641162.Spec : Prop :=
  ∀ n, P13925797044600641162.a n = (A184794 (n + 1) : ℚ)

end A184794

/-! ## A184794.P4799870195199201747

`record[2*(n+1)/A000005(floor((n+1)*ϕ²))]`
-/

namespace A184794.P4799870195199201747
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A000005 ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋.toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184794.P4799870195199201747

namespace A184794

/-- `record[2*(n+1)/A000005(floor((n+1)*ϕ²))]` -/
def P4799870195199201747.Spec : Prop :=
  ∀ n, P4799870195199201747.a n = (A184794 (n + 1) : ℚ)

end A184794

/-! ## A184794.P2776722212289982286

`record[A214053(n+1)]`
-/

namespace A184794.P2776722212289982286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184794.P2776722212289982286

namespace A184794

/-- `record[A214053(n+1)]` -/
def P2776722212289982286.Spec : Prop :=
  ∀ n, P2776722212289982286.a n = A184794 (n + 1)

end A184794

/-! ## A184794.P17025623249845609528

`record[A003603(A000040(n+1)-1)]`
-/

namespace A184794.P17025623249845609528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184794.P17025623249845609528

namespace A184794

/-- `record[A003603(A000040(n+1)-1)]` -/
def P17025623249845609528.Spec : Prop :=
  ∀ n, P17025623249845609528.a n = A184794 (n + 1)

end A184794

/-! ## A184794.P5447017481681890756

`record[A003603(A020639(n+2)-1)]`
-/

namespace A184794.P5447017481681890756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A020639 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184794.P5447017481681890756

namespace A184794

/-- `record[A003603(A020639(n+2)-1)]` -/
def P5447017481681890756.Spec : Prop :=
  ∀ n, P5447017481681890756.a n = A184794 (n + 1)

end A184794

/-! ## A184794.P6207323553441117639

`A026242(p?[floor(n*ϕ²)])`
-/

namespace A184794.P6207323553441117639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184794.P6207323553441117639

namespace A184794

/-- `A026242(p?[floor(n*ϕ²)])` -/
def P6207323553441117639.Spec : Prop :=
  ∀ n, P6207323553441117639.a n = A184794 (n + 1)

end A184794

/-! ## A184794.P4898036175597986689

`A050411(p?[floor(n*ϕ²)])`
-/

namespace A184794.P4898036175597986689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050411 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184794.P4898036175597986689

namespace A184794

/-- `A050411(p?[floor(n*ϕ²)])` -/
def P4898036175597986689.Spec : Prop :=
  ∀ n, P4898036175597986689.a n = A184794 (n + 1)

end A184794

/-! ## A184794.P17002253386706872991

`A189663(p?[floor(n*ϕ²)])`
-/

namespace A184794.P17002253386706872991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184794.P17002253386706872991

namespace A184794

/-- `A189663(p?[floor(n*ϕ²)])` -/
def P17002253386706872991.Spec : Prop :=
  ∀ n, P17002253386706872991.a n = A184794 (n + 1)

end A184794

/-! ## A184794.P5706194058433843111

`A026242(A095281(n+1))`
-/

namespace A184794.P5706194058433843111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (A095281 (n + 1)).toNat

end

end A184794.P5706194058433843111

namespace A184794

/-- `A026242(A095281(n+1))` -/
def P5706194058433843111.Spec : Prop :=
  ∀ n, P5706194058433843111.a n = A184794 (n + 1)

end A184794

/-!
# A184795: Numbers m such that prime(m) is of the form floor(k*s), where s=(3+sqrt(5))/2; complement of A184793.

The programs for A184795, the canonical program `A184795.P7757484182494400038` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184795 has offset 1).

The definition of A184795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3619 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184795.P3643869438920726738

`A000720(p?[floor(n*ϕ²)])`
-/

namespace A184795.P3643869438920726738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184795.P3643869438920726738

namespace A184795

/-- `A000720(p?[floor(n*ϕ²)])` -/
def P3643869438920726738.Spec : Prop :=
  ∀ n, P3643869438920726738.a n = A184795 (n + 1)

end A184795

/-! ## A184795.P7757484182494400038

`A061395(p?[floor(n*ϕ²)])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A184795

/-- `A061395(p?[floor(n*ϕ²)])` -/
def P7757484182494400038.Spec : Prop :=
  ∀ n, P7757484182494400038.a n = A184795 (n + 1)

theorem P7757484182494400038.correct : P7757484182494400038.Spec := by
  intro n
  simp only [A184795, Nat.add_sub_cancel]

end A184795

/-! ## A184795.P16696657153839760167

`A000720(A095281(n+1))`
-/

namespace A184795.P16696657153839760167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A095281 (n + 1)).toNat

end

end A184795.P16696657153839760167

namespace A184795

/-- `A000720(A095281(n+1))` -/
def P16696657153839760167.Spec : Prop :=
  ∀ n, P16696657153839760167.a n = A184795 (n + 1)

end A184795

/-! ## A184795.P12916444748525712333

`A058933(p?[floor(n*ϕ²)])`
-/

namespace A184795.P12916444748525712333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184795.P12916444748525712333

namespace A184795

/-- `A058933(p?[floor(n*ϕ²)])` -/
def P12916444748525712333.Spec : Prop :=
  ∀ n, P12916444748525712333.a n = A184795 (n + 1)

end A184795

/-! ## A184795.P18168032305763809080

`A003963(p?[floor(n*ϕ²)])`
-/

namespace A184795.P18168032305763809080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184795.P18168032305763809080

namespace A184795

/-- `A003963(p?[floor(n*ϕ²)])` -/
def P18168032305763809080.Spec : Prop :=
  ∀ n, P18168032305763809080.a n = A184795 (n + 1)

end A184795

/-! ## A184795.P13391403717624908782

`A026233(p?[floor(n*ϕ²)])`
-/

namespace A184795.P13391403717624908782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184795.P13391403717624908782

namespace A184795

/-- `A026233(p?[floor(n*ϕ²)])` -/
def P13391403717624908782.Spec : Prop :=
  ∀ n, P13391403717624908782.a n = A184795 (n + 1)

end A184795

/-! ## A184795.P5720596844808016661

`A026238(p?[floor(n*ϕ²)])`
-/

namespace A184795.P5720596844808016661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184795.P5720596844808016661

namespace A184795

/-- `A026238(p?[floor(n*ϕ²)])` -/
def P5720596844808016661.Spec : Prop :=
  ∀ n, P5720596844808016661.a n = A184795 (n + 1)

end A184795

/-! ## A184795.P3972063335964099490

`A049084(p?[floor(n*ϕ²)])`
-/

namespace A184795.P3972063335964099490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184795.P3972063335964099490

namespace A184795

/-- `A049084(p?[floor(n*ϕ²)])` -/
def P3972063335964099490.Spec : Prop :=
  ∀ n, P3972063335964099490.a n = A184795 (n + 1)

end A184795

/-! ## A184795.P8312613423450846234

`A055396(p?[floor(n*ϕ²)])`
-/

namespace A184795.P8312613423450846234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184795.P8312613423450846234

namespace A184795

/-- `A055396(p?[floor(n*ϕ²)])` -/
def P8312613423450846234.Spec : Prop :=
  ∀ n, P8312613423450846234.a n = A184795 (n + 1)

end A184795

/-! ## A184795.P5611850341289098953

`record[A055396(floor((n+1)*ϕ²))]`
-/

namespace A184795.P5611850341289098953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184795.P5611850341289098953

namespace A184795

/-- `record[A055396(floor((n+1)*ϕ²))]` -/
def P5611850341289098953.Spec : Prop :=
  ∀ n, P5611850341289098953.a n = A184795 (n + 1)

end A184795

/-!
# A184796: Primes of the form floor(k*sqrt(3)).

The programs for A184796, the canonical program `A184796.P2702098598413263816` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184796 has offset 1).

The definition of A184796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9064 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184796.P2702098598413263816

`p?[floor(n*sqrt(3))]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184796

/-- `p?[floor(n*sqrt(3))]` -/
def P2702098598413263816.Spec : Prop :=
  ∀ n, P2702098598413263816.a n = A184796 (n + 1)

theorem P2702098598413263816.correct : P2702098598413263816.Spec := by
  intro n
  simp only [A184796, Nat.add_sub_cancel]

end A184796

/-! ## A184796.P13553927506810897649

`or(1, p?[floor(n*root(3, 2))])`
-/

namespace A184796.P13553927506810897649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A184796.P13553927506810897649

namespace A184796

/-- `or(1, p?[floor(n*root(3, 2))])` -/
def P13553927506810897649.Spec : Prop :=
  ∀ n, P13553927506810897649.a n = A184796 (n + 1)

end A184796

/-! ## A184796.P5862064406107797096

`∏{d}[p?[floor(n*root(3, 2))], #]`
-/

namespace A184796.P5862064406107797096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A184796.P5862064406107797096

namespace A184796

/-- `∏{d}[p?[floor(n*root(3, 2))], #]` -/
def P5862064406107797096.Spec : Prop :=
  ∀ n, (P5862064406107797096.a n : ℤ) = A184796 (n + 1)

end A184796

/-! ## A184796.P8509713636922393701

`∑{p}[p?[floor(n*root(3, 2))], #]`
-/

namespace A184796.P8509713636922393701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A184796.P8509713636922393701

namespace A184796

/-- `∑{p}[p?[floor(n*root(3, 2))], #]` -/
def P8509713636922393701.Spec : Prop :=
  ∀ n, (P8509713636922393701.a n : ℤ) = A184796 (n + 1)

end A184796

/-! ## A184796.P12924047961617691221

`∏{p}[p?[floor(n*root(3, 2))], #]`
-/

namespace A184796.P12924047961617691221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A184796.P12924047961617691221

namespace A184796

/-- `∏{p}[p?[floor(n*root(3, 2))], #]` -/
def P12924047961617691221.Spec : Prop :=
  ∀ n, (P12924047961617691221.a n : ℤ) = A184796 (n + 1)

end A184796

/-! ## A184796.P689723375155330511

`root(p?[floor(n*root(3, 2))], 2)²`
-/

namespace A184796.P689723375155330511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A184796.P689723375155330511

namespace A184796

/-- `root(p?[floor(n*root(3, 2))], 2)²` -/
def P689723375155330511.Spec : Prop :=
  ∀ n, P689723375155330511.a n = (A184796 (n + 1) : ℝ)

end A184796

/-! ## A184796.P13165721022709010950

`xor(1, p?[floor(n*root(3, 2))])+1`
-/

namespace A184796.P13165721022709010950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) + 1

end

end A184796.P13165721022709010950

namespace A184796

/-- `xor(1, p?[floor(n*root(3, 2))])+1` -/
def P13165721022709010950.Spec : Prop :=
  ∀ n, P13165721022709010950.a n = A184796 (n + 1)

end A184796

/-! ## A184796.P1608928381459541433

`A000040(A184798(n+1))`
-/

namespace A184796.P1608928381459541433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184798 (n + 1)).toNat

end

end A184796.P1608928381459541433

namespace A184796

/-- `A000040(A184798(n+1))` -/
def P1608928381459541433.Spec : Prop :=
  ∀ n, P1608928381459541433.a n = A184796 (n + 1)

end A184796

/-! ## A184796.P15342019981529865596

`record[A006530(floor((n+2)*sqrt(3)))]`
-/

namespace A184796.P15342019981529865596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊(n + 2 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184796.P15342019981529865596

namespace A184796

/-- `record[A006530(floor((n+2)*sqrt(3)))]` -/
def P15342019981529865596.Spec : Prop :=
  ∀ n, P15342019981529865596.a n = A184796 (n + 1)

end A184796

/-! ## A184796.P1271920139755989004

`record[A020639(floor((n+2)*sqrt(3)))]`
-/

namespace A184796.P1271920139755989004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊(n + 2 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184796.P1271920139755989004

namespace A184796

/-- `record[A020639(floor((n+2)*sqrt(3)))]` -/
def P1271920139755989004.Spec : Prop :=
  ∀ n, P1271920139755989004.a n = A184796 (n + 1)

end A184796

/-! ## A184796.P8079167111861090825

`A006530(2*p?[floor(n*root(3, 2))])`
-/

namespace A184796.P8079167111861090825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184796.P8079167111861090825

namespace A184796

/-- `A006530(2*p?[floor(n*root(3, 2))])` -/
def P8079167111861090825.Spec : Prop :=
  ∀ n, P8079167111861090825.a n = A184796 (n + 1)

end A184796

/-! ## A184796.P13162956490356520211

`A022838(A184797(n+1))`
-/

namespace A184796.P13162956490356520211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (A184797 (n + 1)).toNat

end

end A184796.P13162956490356520211

namespace A184796

/-- `A022838(A184797(n+1))` -/
def P13162956490356520211.Spec : Prop :=
  ∀ n, P13162956490356520211.a n = A184796 (n + 1)

end A184796

/-! ## A184796.P2854752004333089630

`filter[A022838(n+1), A010051(#)]`
-/

namespace A184796.P2854752004333089630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A184796.P2854752004333089630

namespace A184796

/-- `filter[A022838(n+1), A010051(#)]` -/
def P2854752004333089630.Spec : Prop :=
  ∀ n, P2854752004333089630.a n = A184796 (n + 1)

end A184796

/-! ## A184796.P3353886992746184363

`∩[A000040(n+1), A022838(n+1)]`
-/

namespace A184796.P3353886992746184363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184796.P3353886992746184363

namespace A184796

/-- `∩[A000040(n+1), A022838(n+1)]` -/
def P3353886992746184363.Spec : Prop :=
  ∀ n, (P3353886992746184363.a n : ℤ) = A184796 (n + 1)

end A184796

/-! ## A184796.P13405383625194602827

`∩[A022838(n+1), A065091(n+1)]`
-/

namespace A184796.P13405383625194602827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184796.P13405383625194602827

namespace A184796

/-- `∩[A022838(n+1), A065091(n+1)]` -/
def P13405383625194602827.Spec : Prop :=
  ∀ n, (P13405383625194602827.a n : ℤ) = A184796 (n + 1)

end A184796

/-! ## A184796.P9702283044381708575

`∩[A022838(n+1), A175787(n+1)]`
-/

namespace A184796.P9702283044381708575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184796.P9702283044381708575

namespace A184796

/-- `∩[A022838(n+1), A175787(n+1)]` -/
def P9702283044381708575.Spec : Prop :=
  ∀ n, (P9702283044381708575.a n : ℤ) = A184796 (n + 1)

end A184796

/-! ## A184796.P18246678622838174055

`∩[A022838(n+1), A182986(n+1)]`
-/

namespace A184796.P18246678622838174055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184796.P18246678622838174055

namespace A184796

/-- `∩[A022838(n+1), A182986(n+1)]` -/
def P18246678622838174055.Spec : Prop :=
  ∀ n, (P18246678622838174055.a n : ℤ) = A184796 (n + 1)

end A184796

/-! ## A184796.P15139182408807136687

`filter[A022838(n+2), A080339(#)]`
-/

namespace A184796.P15139182408807136687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A184796.P15139182408807136687

namespace A184796

/-- `filter[A022838(n+2), A080339(#)]` -/
def P15139182408807136687.Spec : Prop :=
  ∀ n, P15139182408807136687.a n = A184796 (n + 1)

end A184796

/-! ## A184796.P2023499537945816626

`filter[A022838(n+2), A080545(#)]`
-/

namespace A184796.P2023499537945816626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A184796.P2023499537945816626

namespace A184796

/-- `filter[A022838(n+2), A080545(#)]` -/
def P2023499537945816626.Spec : Prop :=
  ∀ n, P2023499537945816626.a n = A184796 (n + 1)

end A184796

/-! ## A184796.P7231661470684943036

`filter[A171970(2*(n+1)), A010051(#)]`
-/

namespace A184796.P7231661470684943036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A184796.P7231661470684943036

namespace A184796

/-- `filter[A171970(2*(n+1)), A010051(#)]` -/
def P7231661470684943036.Spec : Prop :=
  ∀ n, P7231661470684943036.a n = A184796 (n + 1)

end A184796

/-!
# A184797: Numbers k such that floor(k*sqrt(3)) is prime.

The programs for A184797, the canonical program `A184797.P11283952732230749772` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184797 has offset 1).

The definition of A184797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184797.P10497458369029090331

`eq[1, ∑{e}[floor(n*sqrt(3)), #]]`
-/

namespace A184797.P10497458369029090331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184797.P10497458369029090331

namespace A184797

/-- `eq[1, ∑{e}[floor(n*sqrt(3)), #]]` -/
def P10497458369029090331.Spec : Prop :=
  ∀ n, (P10497458369029090331.a n : ℤ) = A184797 (n + 1)

end A184797

/-! ## A184797.P11283952732230749772

`lt[n+1, A006530(A022838(n+1))]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A184797

/-- `lt[n+1, A006530(A022838(n+1))]+1` -/
def P11283952732230749772.Spec : Prop :=
  ∀ n, (P11283952732230749772.a n : ℤ) = A184797 (n + 1)

theorem P11283952732230749772.correct : P11283952732230749772.Spec := by
  intro n
  simp only [A184797, Nat.add_sub_cancel]

end A184797

/-! ## A184797.P6459324256116355227

`A194979(p?[floor(n*sqrt(3))])`
-/

namespace A184797.P6459324256116355227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184797.P6459324256116355227

namespace A184797

/-- `A194979(p?[floor(n*sqrt(3))])` -/
def P6459324256116355227.Spec : Prop :=
  ∀ n, P6459324256116355227.a n = A184797 (n + 1)

end A184797

/-! ## A184797.P1146283161743709208

`lt[n+1, A014963(floor((n+1)*sqrt(3)))]+1`
-/

namespace A184797.P1146283161743709208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A184797.P1146283161743709208

namespace A184797

/-- `lt[n+1, A014963(floor((n+1)*sqrt(3)))]+1` -/
def P1146283161743709208.Spec : Prop :=
  ∀ n, (P1146283161743709208.a n : ℤ) = A184797 (n + 1)

end A184797

/-! ## A184797.P8755735670047715712

`A026254(A184796(n+1))`
-/

namespace A184797.P8755735670047715712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026254 (A184796 (n + 1)).toNat

end

end A184797.P8755735670047715712

namespace A184797

/-- `A026254(A184796(n+1))` -/
def P8755735670047715712.Spec : Prop :=
  ∀ n, P8755735670047715712.a n = A184797 (n + 1)

end A184797

/-! ## A184797.P6009267155723534151

`A026254(p?[A022838(n+1)])`
-/

namespace A184797.P6009267155723534151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026254 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184797.P6009267155723534151

namespace A184797

/-- `A026254(p?[A022838(n+1)])` -/
def P6009267155723534151.Spec : Prop :=
  ∀ n, P6009267155723534151.a n = A184797 (n + 1)

end A184797

/-! ## A184797.P17147518760942976068

`A097337(A184796(n+1)+1)`
-/

namespace A184797.P17147518760942976068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A184796 (n + 1) + 1).toNat

end

end A184797.P17147518760942976068

namespace A184797

/-- `A097337(A184796(n+1)+1)` -/
def P17147518760942976068.Spec : Prop :=
  ∀ n, P17147518760942976068.a n = A184797 (n + 1)

end A184797

/-! ## A184797.P16621663739621493743

`floor(A022838(p?[A022838(n+1)]+1)/3)`
-/

namespace A184797.P16621663739621493743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022838 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat : ℚ) / 3⌋

end

end A184797.P16621663739621493743

namespace A184797

/-- `floor(A022838(p?[A022838(n+1)]+1)/3)` -/
def P16621663739621493743.Spec : Prop :=
  ∀ n, P16621663739621493743.a n = A184797 (n + 1)

end A184797

/-! ## A184797.P7466949502912201861

`round(A022838(p?[A022838(n+2)]+1)/3)`
-/

namespace A184797.P7466949502912201861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A022838 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat : ℚ) / 3)

end

end A184797.P7466949502912201861

namespace A184797

/-- `round(A022838(p?[A022838(n+2)]+1)/3)` -/
def P7466949502912201861.Spec : Prop :=
  ∀ n, P7466949502912201861.a n = A184797 (n + 1)

end A184797

/-! ## A184797.P6704288527672590883

`A097337(p?[A097337(3*(n+1))]+1)`
-/

namespace A184797.P6704288527672590883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A184797.P6704288527672590883

namespace A184797

/-- `A097337(p?[A097337(3*(n+1))]+1)` -/
def P6704288527672590883.Spec : Prop :=
  ∀ n, P6704288527672590883.a n = A184797 (n + 1)

end A184797

/-!
# A184798: Numbers m such that prime(m) is of the form floor(k*sqrt(3)); complement of A184801.

The programs for A184798, the canonical program `A184798.P13188937388461352414` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184798 has offset 1).

The definition of A184798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184798.P10435623093949481906

`A000720(p?[floor(n*sqrt(3))])`
-/

namespace A184798.P10435623093949481906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184798.P10435623093949481906

namespace A184798

/-- `A000720(p?[floor(n*sqrt(3))])` -/
def P10435623093949481906.Spec : Prop :=
  ∀ n, P10435623093949481906.a n = A184798 (n + 1)

end A184798

/-! ## A184798.P13976126144964328088

`A000720(p?[floor(n*root(3, 2))]+1)`
-/

namespace A184798.P13976126144964328088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A184798.P13976126144964328088

namespace A184798

/-- `A000720(p?[floor(n*root(3, 2))]+1)` -/
def P13976126144964328088.Spec : Prop :=
  ∀ n, P13976126144964328088.a n = A184798 (n + 1)

end A184798

/-! ## A184798.P13188937388461352414

`A000720(A184796(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184798

/-- `A000720(A184796(n+1))` -/
def P13188937388461352414.Spec : Prop :=
  ∀ n, P13188937388461352414.a n = A184798 (n + 1)

theorem P13188937388461352414.correct : P13188937388461352414.Spec := by
  intro n
  simp only [A184798, Nat.add_sub_cancel]

end A184798

/-! ## A184798.P12619979316452944706

`A058933(p?[floor(n*root(3, 2))])`
-/

namespace A184798.P12619979316452944706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184798.P12619979316452944706

namespace A184798

/-- `A058933(p?[floor(n*root(3, 2))])` -/
def P12619979316452944706.Spec : Prop :=
  ∀ n, P12619979316452944706.a n = A184798 (n + 1)

end A184798

/-! ## A184798.P4245709292091432410

`A003963(p?[floor(n*sqrt(3))])`
-/

namespace A184798.P4245709292091432410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184798.P4245709292091432410

namespace A184798

/-- `A003963(p?[floor(n*sqrt(3))])` -/
def P4245709292091432410.Spec : Prop :=
  ∀ n, P4245709292091432410.a n = A184798 (n + 1)

end A184798

/-! ## A184798.P1550451236273577184

`A026233(p?[floor(n*sqrt(3))])`
-/

namespace A184798.P1550451236273577184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184798.P1550451236273577184

namespace A184798

/-- `A026233(p?[floor(n*sqrt(3))])` -/
def P1550451236273577184.Spec : Prop :=
  ∀ n, P1550451236273577184.a n = A184798 (n + 1)

end A184798

/-! ## A184798.P9290338784249144596

`A026238(p?[floor(n*sqrt(3))])`
-/

namespace A184798.P9290338784249144596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184798.P9290338784249144596

namespace A184798

/-- `A026238(p?[floor(n*sqrt(3))])` -/
def P9290338784249144596.Spec : Prop :=
  ∀ n, P9290338784249144596.a n = A184798 (n + 1)

end A184798

/-! ## A184798.P7032532601806825029

`A049084(p?[floor(n*sqrt(3))])`
-/

namespace A184798.P7032532601806825029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184798.P7032532601806825029

namespace A184798

/-- `A049084(p?[floor(n*sqrt(3))])` -/
def P7032532601806825029.Spec : Prop :=
  ∀ n, P7032532601806825029.a n = A184798 (n + 1)

end A184798

/-! ## A184798.P1412680946694873266

`A055396(p?[floor(n*sqrt(3))])`
-/

namespace A184798.P1412680946694873266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184798.P1412680946694873266

namespace A184798

/-- `A055396(p?[floor(n*sqrt(3))])` -/
def P1412680946694873266.Spec : Prop :=
  ∀ n, P1412680946694873266.a n = A184798 (n + 1)

end A184798

/-! ## A184798.P7024736196878853876

`A230980(p?[floor(n*sqrt(3))])`
-/

namespace A184798.P7024736196878853876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184798.P7024736196878853876

namespace A184798

/-- `A230980(p?[floor(n*sqrt(3))])` -/
def P7024736196878853876.Spec : Prop :=
  ∀ n, P7024736196878853876.a n = A184798 (n + 1)

end A184798

/-! ## A184798.P3588730605291628001

`A033270(p?[floor(n*root(3, 2))])+1`
-/

namespace A184798.P3588730605291628001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (3 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A184798.P3588730605291628001

namespace A184798

/-- `A033270(p?[floor(n*root(3, 2))])+1` -/
def P3588730605291628001.Spec : Prop :=
  ∀ n, P3588730605291628001.a n = A184798 (n + 1)

end A184798

/-!
# A184799: Primes of the form floor(k*s), where s=(3+sqrt(3))/2.

The programs for A184799, there is no canonical definition to state claims against.
-/

/-! ## A184799.P15977858584555355652

`A000040(A184801(n+1))`
-/

namespace A184799.P15977858584555355652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184801 (n + 1)).toNat

end

end A184799.P15977858584555355652

/-! ## A184799.P13829448231467436365

`p?[comp[floor(n*sqrt(3))]]`
-/

namespace A184799.P13829448231467436365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A184799.P13829448231467436365

/-! ## A184799.P4602729332670022200

`A054406(A184800(n+1))`
-/

namespace A184799.P4602729332670022200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (A184800 (n + 1)).toNat

end

end A184799.P4602729332670022200

/-! ## A184799.P5016278035801692656

`record[A006530(A054406(n+1))]`
-/

namespace A184799.P5016278035801692656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A054406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184799.P5016278035801692656

/-! ## A184799.P13539289091500109321

`A000027(p?[A054406(n+1)])`
-/

namespace A184799.P13539289091500109321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A184799.P13539289091500109321

/-! ## A184799.P1714642024963299760

`filter[A054406(n+1), A010051(#)]`
-/

namespace A184799.P1714642024963299760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A184799.P1714642024963299760

/-! ## A184799.P15648261933098809783

`or(p?[A054406(n+1)], A096268(n))`
-/

namespace A184799.P15648261933098809783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A096268 n)

end

end A184799.P15648261933098809783

/-! ## A184799.P11967917334593025790

`or(p?[A054406(n+1)], A166486(n))`
-/

namespace A184799.P11967917334593025790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A166486 n)

end

end A184799.P11967917334593025790

/-! ## A184799.P10778157334720812980

`∩[A000040(n+1), A054406(n+1)]`
-/

namespace A184799.P10778157334720812980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184799.P10778157334720812980

/-! ## A184799.P9154288043990496385

`∩[A008578(n+1), A054406(n+1)]`
-/

namespace A184799.P9154288043990496385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184799.P9154288043990496385

/-! ## A184799.P709919187606020976

`∩[A045319(n+1), A054406(n+1)]`
-/

namespace A184799.P709919187606020976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184799.P709919187606020976

/-! ## A184799.P1693901646091012488

`∩[A045344(n+1), A054406(n+1)]`
-/

namespace A184799.P1693901646091012488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184799.P1693901646091012488

/-! ## A184799.P14838995038509352909

`∩[A054406(n+1), A116974(n+1)]`
-/

namespace A184799.P14838995038509352909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184799.P14838995038509352909

/-! ## A184799.P8131450842249006708

`∩[A054406(n+1), A158611(n+1)]`
-/

namespace A184799.P8131450842249006708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184799.P8131450842249006708

/-! ## A184799.P15513960693719725811

`∩[A054406(n+1), A182986(n+1)]`
-/

namespace A184799.P15513960693719725811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184799.P15513960693719725811

/-! ## A184799.P6358915646510489694

`∩[A054406(n+1), A348440(n+1)]`
-/

namespace A184799.P6358915646510489694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184799.P6358915646510489694

/-! ## A184799.P18242814928552736125

`p?[A054406(n+1)]%A054402(n+1)`
-/

namespace A184799.P18242814928552736125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A054402 (n + 1))

end

end A184799.P18242814928552736125

/-! ## A184799.P3682742689083335411

`or(p?[A054406(n+1)], A188068(n+1))`
-/

namespace A184799.P3682742689083335411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A188068 (n + 1))

end

end A184799.P3682742689083335411

/-! ## A184799.P13256194139294997780

`or(A007538(n+1)-2, p?[A054406(n+1)])`
-/

namespace A184799.P13256194139294997780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007538 (n + 1) - 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A184799.P13256194139294997780

/-! ## A184799.P4275183858711458194

`or(A007814(n+1)%2, p?[A054406(n+1)])`
-/

namespace A184799.P4275183858711458194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A007814 (n + 1)) 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A184799.P4275183858711458194

