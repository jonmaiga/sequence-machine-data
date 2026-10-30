import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A315901: Coordination sequence Gal.6.175.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315901, there is no canonical definition to state claims against.
-/

/-! ## A315901.P11910592834717297383

`A301299(n)+A109909(A221073(n))`
-/

namespace A315901.P11910592834717297383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A109909 (A221073 n).toNat

end

end A315901.P11910592834717297383

/-! ## A315901.P5022808627314847994

`A315902(n)-A068385(A048578(n))`
-/

namespace A315901.P5022808627314847994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315902 n - A068385 (A048578 n).toNat

end

end A315901.P5022808627314847994

/-! ## A315901.P3956280531085273470

`or(A073610(A062938(n)), A312333(n))`
-/

namespace A315901.P3956280531085273470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073610 (A062938 n).toNat) (A312333 n)

end

end A315901.P3956280531085273470

/-!
# A315902: Coordination sequence Gal.6.282.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315902, the canonical program `A315902.P17877727522618064985` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315902 has offset 0).

The definition of A315902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315902.P17877727522618064985

`ogf((1+6x+8x^2+14x^3+17x^4+20x^5+18x^6+20x^7+17x^8+18x^9+8x^10+10x^11+x^12-4x^14)/(1-x^4-x^8+x^12))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A315902

/-- `ogf((1+6x+8x^2+14x^3+17x^4+20x^5+18x^6+20x^7+17x^8+18x^9+8x^10+10x^11+x^12-4x^14)/(1-x^4-x^8+x^12))` -/
def P17877727522618064985.Spec : Prop :=
  ∀ n, P17877727522618064985.a n = A315902 n

theorem P17877727522618064985.correct : P17877727522618064985.Spec := by
  intro n
  simp only [A315902]

end A315902

/-! ## A315902.P13092102563857296002

`A315898(n)+A315916(n)-A315915(n)`
-/

namespace A315902.P13092102563857296002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315898 n + (A315916 n - A315915 n)

end

end A315902.P13092102563857296002

namespace A315902

/-- `A315898(n)+A315916(n)-A315915(n)` -/
def P13092102563857296002.Spec : Prop :=
  ∀ n, P13092102563857296002.a n = A315902 n

end A315902

/-! ## A315902.P2367357662274614217

`A315898(n)+2*n+A004396(A315796(n))-A315915(n)`
-/

namespace A315902.P2367357662274614217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315898 n + ((2 * n : ℤ) + A004396 (A315796 n).toNat) - A315915 n

end

end A315902.P2367357662274614217

namespace A315902

/-- `A315898(n)+2*n+A004396(A315796(n))-A315915(n)` -/
def P2367357662274614217.Spec : Prop :=
  ∀ n, P2367357662274614217.a n = A315902 n

end A315902

/-! ## A315902.P17114044958950627255

`A314446(n)+A056594(A017402(n))`
-/

namespace A315902.P17114044958950627255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314446 n + A056594 (A017402 n).toNat

end

end A315902.P17114044958950627255

namespace A315902

/-- `A314446(n)+A056594(A017402(n))` -/
def P17114044958950627255.Spec : Prop :=
  ∀ n, P17114044958950627255.a n = A315902 n

end A315902

/-! ## A315902.P11563078714573183739

`A315901(n)+A068385(A048578(n))`
-/

namespace A315902.P11563078714573183739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315901 n + A068385 (A048578 n).toNat

end

end A315902.P11563078714573183739

namespace A315902

/-- `A315901(n)+A068385(A048578(n))` -/
def P11563078714573183739.Spec : Prop :=
  ∀ n, P11563078714573183739.a n = A315902 n

end A315902

/-!
# A315903: Coordination sequence Gal.5.169.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315903, there is no canonical definition to state claims against.
-/

/-! ## A315903.P111645801780904512

`A315902(lt[A313945(n), A315000(n+1)])`
-/

namespace A315903.P111645801780904512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315902 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315903.P111645801780904512

/-! ## A315903.P16301234619661755789

`A315902(lt[A313945(n), A314628(n+2)])`
-/

namespace A315903.P16301234619661755789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314628 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315902 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315903.P16301234619661755789

/-! ## A315903.P11379861974102991419

`A315902(lt[A315902(3*n), A250120(n)+79])`
-/

namespace A315903.P11379861974102991419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315902 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + 79

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315902 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315903.P11379861974102991419

/-! ## A315903.P10771685070915263536

`A315902(lt[A315902(3*n), A310821(n)+79])`
-/

namespace A315903.P10771685070915263536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315902 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310821 n + 79

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315902 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315903.P10771685070915263536

/-! ## A315903.P3953315312535184649

`A315902(lt[A315902(3*n), A311142(n)+79])`
-/

namespace A315903.P3953315312535184649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315902 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311142 n + 79

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315902 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315903.P3953315312535184649

/-!
# A315904: Coordination sequence Gal.4.96.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315904, there is no canonical definition to state claims against.
-/

/-! ## A315904.P11412253691553861722

`∑[A105853(∑[A084819(n+1)])]`
-/

namespace A315904.P11412253691553861722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084819 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105853 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315904.P11412253691553861722

/-! ## A315904.P13688463070917818669

`A020639(A000079(n)²)*∑[A061395(n+2)]`
-/

namespace A315904.P13688463070917818669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000079 n ^ 2).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315904.P13688463070917818669

/-! ## A315904.P2810720272869396915

`A020639(A000079(2*n))*∑[A061395(n+2)]`
-/

namespace A315904.P2810720272869396915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000079 (2 * n)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315904.P2810720272869396915

/-!
# A315906: Coordination sequence Gal.6.539.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315906, there is no canonical definition to state claims against.
-/

/-! ## A315906.P11162540497479026122

`(A315935(n)+A315864(n))/2`
-/

namespace A315906.P11162540497479026122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315935 n + A315864 n : ℚ) / 2

end

end A315906.P11162540497479026122

/-! ## A315906.P3903879250555919660

`A001281(A315935(n)+A315864(n))`
-/

namespace A315906.P3903879250555919660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315935 n + A315864 n).toNat

end

end A315906.P3903879250555919660

/-! ## A315906.P13318455824612539204

`A004525(A315935(n)+A315864(n))`
-/

namespace A315906.P13318455824612539204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315935 n + A315864 n).toNat

end

end A315906.P13318455824612539204

/-! ## A315906.P17474048874618715212

`A004526(A315935(n)+A315864(n))`
-/

namespace A315906.P17474048874618715212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315935 n + A315864 n).toNat

end

end A315906.P17474048874618715212

/-! ## A315906.P10799927393337527571

`A026741(A315935(n)+A315864(n))`
-/

namespace A315906.P10799927393337527571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A315935 n + A315864 n).toNat

end

end A315906.P10799927393337527571

/-! ## A315906.P5138262456436324202

`A029578(A315935(n)+A315864(n))`
-/

namespace A315906.P5138262456436324202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A315935 n + A315864 n).toNat

end

end A315906.P5138262456436324202

/-! ## A315906.P10004421951382333610

`A032742(A315935(n)+A315864(n))`
-/

namespace A315906.P10004421951382333610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A315935 n + A315864 n).toNat

end

end A315906.P10004421951382333610

/-! ## A315906.P7359595758428070353

`A123108(A315935(n)+A315864(n))`
-/

namespace A315906.P7359595758428070353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A315935 n + A315864 n).toNat

end

end A315906.P7359595758428070353

/-! ## A315906.P7747925157688909104

`-A001057(A315935(n)+A315864(n))`
-/

namespace A315906.P7747925157688909104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001057 (A315935 n + A315864 n).toNat

end

end A315906.P7747925157688909104

/-! ## A315906.P3317454490455205326

`A001057(A315864(n)+A315935(n)-1)`
-/

namespace A315906.P3317454490455205326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A315864 n + (A315935 n - 1)).toNat

end

end A315906.P3317454490455205326

/-! ## A315906.P3271672509575858215

`A001057(A315864(n)-(1-A315935(n)))`
-/

namespace A315906.P3271672509575858215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A315864 n - (1 - A315935 n)).toNat

end

end A315906.P3271672509575858215

/-! ## A315906.P18411763246966370257

`A315935(n)-A004526(A315935(n)-A315864(n))`
-/

namespace A315906.P18411763246966370257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315935 n - A004526 (A315935 n - A315864 n).toNat

end

end A315906.P18411763246966370257

/-!
# A315907: Coordination sequence Gal.3.40.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315907, the canonical program `A315907.P7188892732051387127` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315907 has offset 0).

The definition of A315907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315907.P7188892732051387127

`a(n-3)+14` with `a(0)=1, a(1)=6, a(2)=8, a(3)=14`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A315907

/-- `a(n-3)+14` -/
def P7188892732051387127.Spec : Prop :=
  ∀ n, (P7188892732051387127.a n : ℤ) = A315907 n

theorem P7188892732051387127.correct : P7188892732051387127.Spec := by
  intro n
  simp only [A315907]

end A315907

/-! ## A315907.P13399736465993027035

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=5, a(2)=2, a(3)=6, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A315907.P13399736465993027035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 2, 6, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315907.P13399736465993027035

namespace A315907

/-- `∑[floor(a(n-3))]` -/
def P13399736465993027035.Spec : Prop :=
  ∀ n, (P13399736465993027035.a n : ℤ) = A315907 n

end A315907

/-! ## A315907.P2799640564399162514

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=5, a(2)=2, a(3)=6, a(4)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A315907.P2799640564399162514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 2, 6, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315907.P2799640564399162514

namespace A315907

/-- `∑[ceil(a(n-3))]` -/
def P2799640564399162514.Spec : Prop :=
  ∀ n, (P2799640564399162514.a n : ℤ) = A315907 n

end A315907

/-! ## A315907.P12999737008662438735

`∑[gcd(6, a(n-3))]` with `a(0)=1, a(1)=5, a(2)=2, a(3)=6, a(4)=6`
-/

namespace A315907.P12999737008662438735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 2, 6, 6] fun n f1 =>
  Nat.gcd 6 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315907.P12999737008662438735

namespace A315907

/-- `∑[gcd(6, a(n-3))]` -/
def P12999737008662438735.Spec : Prop :=
  ∀ n, (P12999737008662438735.a n : ℤ) = A315907 n

end A315907

/-! ## A315907.P2844234956949280407

`∑[a(n-3)%7]` with `a(0)=1, a(1)=5, a(2)=2, a(3)=6, a(4)=6`
-/

namespace A315907.P2844234956949280407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 2, 6, 6] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315907.P2844234956949280407

namespace A315907

/-- `∑[a(n-3)%7]` -/
def P2844234956949280407.Spec : Prop :=
  ∀ n, (P2844234956949280407.a n : ℤ) = A315907 n

end A315907

/-! ## A315907.P1242568205652912647

`∑[a((n+1)²%3)+1]` with `a(0)=1, a(1)=5`
-/

namespace A315907.P1242568205652912647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 ((n + 1) ^ 2 % 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315907.P1242568205652912647

namespace A315907

/-- `∑[a((n+1)²%3)+1]` -/
def P1242568205652912647.Spec : Prop :=
  ∀ n, (P1242568205652912647.a n : ℤ) = A315907 n

end A315907

/-! ## A315907.P7818536305883667815

`ogf((1+5x+2x^2+5x^3+x^4)/(1-x-x^3+x^4))`
-/

namespace A315907.P7818536305883667815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 2, 5, 1] [1, -1, 0, -1, 1] n

end

end A315907.P7818536305883667815

namespace A315907

/-- `ogf((1+5x+2x^2+5x^3+x^4)/(1-x-x^3+x^4))` -/
def P7818536305883667815.Spec : Prop :=
  ∀ n, P7818536305883667815.a n = A315907 n

end A315907

/-! ## A315907.P2484923098595807365

`∑[A079909(n)%12]`
-/

namespace A315907.P2484923098595807365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079909 n) 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315907.P2484923098595807365

namespace A315907

/-- `∑[A079909(n)%12]` -/
def P2484923098595807365.Spec : Prop :=
  ∀ n, P2484923098595807365.a n = A315907 n

end A315907

/-! ## A315907.P6666394063963629436

`A316316(2*n)-2*n`
-/

namespace A315907.P6666394063963629436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316316 (2 * n) - (2 * n : ℤ)

end

end A315907.P6666394063963629436

namespace A315907

/-- `A316316(2*n)-2*n` -/
def P6666394063963629436.Spec : Prop :=
  ∀ n, P6666394063963629436.a n = A315907 n

end A315907

/-! ## A315907.P15435694328953269568

`round(sqrt(4*A047342(n+1)²+1))`
-/

namespace A315907.P15435694328953269568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (4 * A047342 (n + 1) ^ 2 + 1 : ℝ))

end

end A315907.P15435694328953269568

namespace A315907

/-- `round(sqrt(4*A047342(n+1)²+1))` -/
def P15435694328953269568.Spec : Prop :=
  ∀ n, P15435694328953269568.a n = A315907 n

end A315907

/-! ## A315907.P5167056600185111617

`A047275((abs(1-4*n)+1)/2+1)`
-/

namespace A315907.P5167056600185111617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047275 (SequenceMachineLib.roundAway ((|1 - (4 * n : ℤ)| + 1 : ℚ) / 2 + 1)).toNat

end

end A315907.P5167056600185111617

namespace A315907

/-- `A047275((abs(1-4*n)+1)/2+1)` -/
def P5167056600185111617.Spec : Prop :=
  ∀ n, P5167056600185111617.a n = A315907 n

end A315907

/-! ## A315907.P10643363698326081087

`A004277(comp[4*n]-(2*n+1)²%3+n)`
-/

namespace A315907.P10643363698326081087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (((2 * n + 1) ^ 2 % 3 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A315907.P10643363698326081087

namespace A315907

/-- `A004277(comp[4*n]-(2*n+1)²%3+n)` -/
def P10643363698326081087.Spec : Prop :=
  ∀ n, P10643363698326081087.a n = A315907 n

end A315907

/-! ## A315907.P11359808916318116380

`A004277(A047342(n+1))`
-/

namespace A315907.P11359808916318116380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047342 (n + 1)).toNat

end

end A315907.P11359808916318116380

namespace A315907

/-- `A004277(A047342(n+1))` -/
def P11359808916318116380.Spec : Prop :=
  ∀ n, P11359808916318116380.a n = A315907 n

end A315907

/-! ## A315907.P13934090575861177394

`A004275(A047376(n+1))`
-/

namespace A315907.P13934090575861177394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047376 (n + 1)).toNat

end

end A315907.P13934090575861177394

namespace A315907

/-- `A004275(A047376(n+1))` -/
def P13934090575861177394.Spec : Prop :=
  ∀ n, P13934090575861177394.a n = A315907 n

end A315907

/-! ## A315907.P15510557621912536378

`A058992(A047323(n+1))`
-/

namespace A315907.P15510557621912536378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (A047323 (n + 1)).toNat

end

end A315907.P15510557621912536378

namespace A315907

/-- `A058992(A047323(n+1))` -/
def P15510557621912536378.Spec : Prop :=
  ∀ n, P15510557621912536378.a n = A315907 n

end A315907

/-! ## A315907.P2808564252987438264

`A298788(n)+A074305(n)`
-/

namespace A315907.P2808564252987438264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298788 n + A074305 n

end

end A315907.P2808564252987438264

namespace A315907

/-- `A298788(n)+A074305(n)` -/
def P2808564252987438264.Spec : Prop :=
  ∀ n, P2808564252987438264.a n = A315907 n

end A315907

/-! ## A315907.P4195281416401420996

`A301298(n)+A102283(n)`
-/

namespace A315907.P4195281416401420996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A102283 n

end

end A315907.P4195281416401420996

namespace A315907

/-- `A301298(n)+A102283(n)` -/
def P4195281416401420996.Spec : Prop :=
  ∀ n, P4195281416401420996.a n = A315907 n

end A315907

/-! ## A315907.P10868998228418991862

`A301686(n)+A102899(n)`
-/

namespace A315907.P10868998228418991862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301686 n + A102899 n

end

end A315907.P10868998228418991862

namespace A315907

/-- `A301686(n)+A102899(n)` -/
def P10868998228418991862.Spec : Prop :=
  ∀ n, P10868998228418991862.a n = A315907 n

end A315907

/-! ## A315907.P12047949596724349077

`A063089(n+1)-A261557(n)`
-/

namespace A315907.P12047949596724349077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063089 (n + 1) - A261557 n

end

end A315907.P12047949596724349077

namespace A315907

/-- `A063089(n+1)-A261557(n)` -/
def P12047949596724349077.Spec : Prop :=
  ∀ n, P12047949596724349077.a n = A315907 n

end A315907

/-! ## A315907.P15199225726764089353

`A004277(2*A004396(n)+n)`
-/

namespace A315907.P15199225726764089353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * A004396 n + (n : ℤ)).toNat

end

end A315907.P15199225726764089353

namespace A315907

/-- `A004277(2*A004396(n)+n)` -/
def P15199225726764089353.Spec : Prop :=
  ∀ n, P15199225726764089353.a n = A315907 n

end A315907

/-!
# A315908: Coordination sequence Gal.6.510.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315908, there is no canonical definition to state claims against.
-/

/-! ## A315908.P14354125834548936244

`xor(A185284(A312908(n)), A315907(n))`
-/

namespace A315908.P14354125834548936244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A312908 n).toNat) (A315907 n)

end

end A315908.P14354125834548936244

/-! ## A315908.P3368024010801554052

`A315205(n)-A055668(A083379(n+1))`
-/

namespace A315908.P3368024010801554052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315205 n - A055668 (A083379 (n + 1)).toNat

end

end A315908.P3368024010801554052

/-! ## A315908.P10435904065949712791

`A315345(n)-floor(n/2)*A076839(A034472(n))`
-/

namespace A315908.P10435904065949712791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315345 n - ⌊(n : ℚ) / 2⌋ * A076839 (A034472 n).toNat

end

end A315908.P10435904065949712791

/-! ## A315908.P4919211877667020243

`lt[A001248(A026350(3*(n+1))), A272539(3*n+1)]`
-/

namespace A315908.P4919211877667020243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A026350 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272539 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A315908.P4919211877667020243

/-!
# A315909: Coordination sequence Gal.6.568.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315909, there is no canonical definition to state claims against.
-/

/-! ## A315909.P8410129854666040206

`record[A255195(3*n+1)*A255232(3*n+1)]`
-/

namespace A315909.P8410129854666040206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255195 (3 * n + 1) * A255232 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315909.P8410129854666040206

/-! ## A315909.P5808627652274610527

`A315911(n)-A083894(A149337(n))`
-/

namespace A315909.P5808627652274610527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315911 n - A083894 (A149337 n).toNat

end

end A315909.P5808627652274610527

/-! ## A315909.P4423421215401160738

`A312638(n)+A081120(A342564(n+1))`
-/

namespace A315909.P4423421215401160738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312638 n + A081120 (A342564 (n + 1)).toNat

end

end A315909.P4423421215401160738

/-!
# A315911: Coordination sequence Gal.6.543.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315911, there is no canonical definition to state claims against.
-/

/-! ## A315911.P12730195716642706334

`A072491(A263303(n+1))+A072473(n+1)`
-/

namespace A315911.P12730195716642706334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A263303 (n + 1)).toNat + A072473 (n + 1)

end

end A315911.P12730195716642706334

/-! ## A315911.P14576310326407251032

`A312557(n)+A010673(A094688(n))`
-/

namespace A315911.P14576310326407251032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312557 n + A010673 (A094688 n).toNat

end

end A315911.P14576310326407251032

/-! ## A315911.P152108160205309249

`A316043(n)-A001221(A020133(n))`
-/

namespace A315911.P152108160205309249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316043 n - A001221 (A020133 n).toNat

end

end A315911.P152108160205309249

/-! ## A315911.P17972524431385347458

`A063093(n+1)+A020985(A003397(n+1))`
-/

namespace A315911.P17972524431385347458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063093 (n + 1) + A020985 (A003397 (n + 1)).toNat

end

end A315911.P17972524431385347458

/-! ## A315911.P2182947644371952194

`A167595(3*n+2)+A033999(A000108(n+1))`
-/

namespace A315911.P2182947644371952194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167595 (3 * n + 2) + A033999 (A000108 (n + 1)).toNat

end

end A315911.P2182947644371952194

/-!
# A315912: Coordination sequence Gal.6.541.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315912, there is no canonical definition to state claims against.
-/

/-! ## A315912.P9638332556683278623

`∑{d}[A180101(A104272(n+1)), #]`
-/

namespace A315912.P9638332556683278623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A104272 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A315912.P9638332556683278623

/-! ## A315912.P4155229831904860960

`A180101(A104272(n+1)-2)+1`
-/

namespace A315912.P4155229831904860960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A104272 (n + 1) - 2).toNat + 1

end

end A315912.P4155229831904860960

/-! ## A315912.P10393420146743687658

`(A333242(n+1)+1)%A224828(n+1)`
-/

namespace A315912.P10393420146743687658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333242 (n + 1) + 1) (A224828 (n + 1))

end

end A315912.P10393420146743687658

/-! ## A315912.P17372963345910387288

`A250120(n)+A080891(A002593(n))`
-/

namespace A315912.P17372963345910387288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A080891 (A002593 n).toNat

end

end A315912.P17372963345910387288

/-!
# A315913: Coordination sequence Gal.6.599.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315913, the canonical program `A315913.P8598840641450282793` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315913 has offset 0).

The definition of A315913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315913.P8598840641450282793

`ogf((1+6x+7x^2+8x^3+12x^4+12x^5+12x^6+12x^7+3x^8+10x^9+5x^10-2x^12-2x^14)/(1-x^2-x^8+x^10))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A315913

/-- `ogf((1+6x+7x^2+8x^3+12x^4+12x^5+12x^6+12x^7+3x^8+10x^9+5x^10-2x^12-2x^14)/(1-x^2-x^8+x^10))` -/
def P8598840641450282793.Spec : Prop :=
  ∀ n, P8598840641450282793.a n = A315913 n

theorem P8598840641450282793.correct : P8598840641450282793.Spec := by
  intro n
  simp only [A315913]

end A315913

/-!
# A315915: Coordination sequence Gal.6.604.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315915, there is no canonical definition to state claims against.
-/

/-! ## A315915.P7569129553814817508

`A315898(n)+A315916(n)-A315902(n)`
-/

namespace A315915.P7569129553814817508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315898 n + (A315916 n - A315902 n)

end

end A315915.P7569129553814817508

/-! ## A315915.P5028793779632206069

`A315898(n)+2*n+A004396(A315796(n))-A315902(n)`
-/

namespace A315915.P5028793779632206069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315898 n + ((2 * n : ℤ) + A004396 (A315796 n).toNat) - A315902 n

end

end A315915.P5028793779632206069

/-!
# A315916: Coordination sequence Gal.4.128.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315916, there is no canonical definition to state claims against.
-/

/-! ## A315916.P17521472027631342754

`2*A315348(n)-A008458(n)`
-/

namespace A315916.P17521472027631342754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315348 n - A008458 n

end

end A315916.P17521472027631342754

/-! ## A315916.P10323572878575840429

`A103517(A315348(n)-A016777(n))`
-/

namespace A315916.P10323572878575840429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A315348 n - A016777 n).toNat

end

end A315916.P10323572878575840429

/-! ## A315916.P12294980920015760158

`2*A315348(n)-A008486(A005843(n))`
-/

namespace A315916.P12294980920015760158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315348 n - A008486 (A005843 n).toNat

end

end A315916.P12294980920015760158

/-! ## A315916.P9172547427068002513

`A008458(n)-A005843(A008458(n)-A315348(n))`
-/

namespace A315916.P9172547427068002513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315348 n).toNat

end

end A315916.P9172547427068002513

/-! ## A315916.P14278987204804469057

`2*n+A004396(A315796(n))`
-/

namespace A315916.P14278987204804469057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315796 n).toNat

end

end A315916.P14278987204804469057

/-! ## A315916.P4692689329047861292

`A322042(A315796(n))+A004277(n)`
-/

namespace A315916.P4692689329047861292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322042 (A315796 n).toNat + A004277 n

end

end A315916.P4692689329047861292

/-! ## A315916.P13971701433790548881

`A005843(A315348(n))-A008458(n)`
-/

namespace A315916.P13971701433790548881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315348 n).toNat - A008458 n

end

end A315916.P13971701433790548881

/-! ## A315916.P10443899145022388693

`A008486(n)+A004523(A315796(n))-n`
-/

namespace A315916.P10443899145022388693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A004523 (A315796 n).toNat - (n : ℤ))

end

end A315916.P10443899145022388693

/-! ## A315916.P16190069053048359230

`A008585(n)-(n-A004396(A315796(n)))`
-/

namespace A315916.P16190069053048359230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A315796 n).toNat)

end

end A315916.P16190069053048359230

/-! ## A315916.P7695064854505327280

`A005843(A315348(n))-A008486(A005843(n))`
-/

namespace A315916.P7695064854505327280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315348 n).toNat - A008486 (A005843 n).toNat

end

end A315916.P7695064854505327280

/-! ## A315916.P824087780599959253

`A004396(A315796(n)+A008486(n))`
-/

namespace A315916.P824087780599959253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315796 n + A008486 n).toNat

end

end A315916.P824087780599959253

/-! ## A315916.P15775040681902286441

`A004396(A315796(n)+A008585(n))`
-/

namespace A315916.P15775040681902286441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315796 n + A008585 n).toNat

end

end A315916.P15775040681902286441

/-! ## A315916.P9108251668621481051

`A004523(A315796(n)+A008486(n))`
-/

namespace A315916.P9108251668621481051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A315796 n + A008486 n).toNat

end

end A315916.P9108251668621481051

/-! ## A315916.P4777499926376725313

`A005131(A315796(n)+A016777(n))`
-/

namespace A315916.P4777499926376725313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (A315796 n + A016777 n).toNat

end

end A315916.P4777499926376725313

/-!
# A315920: Coordination sequence Gal.6.55.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315920, there is no canonical definition to state claims against.
-/

/-! ## A315920.P12246856929484206416

`A035251(2*(n+1))-A275216(A053500(n))`
-/

namespace A315920.P12246856929484206416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035251 (2 * (n + 1)) - A275216 (A053500 n).toNat

end

end A315920.P12246856929484206416

/-!
# A315921: Coordination sequence Gal.6.73.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315921, there is no canonical definition to state claims against.
-/

/-! ## A315921.P16538042735968057181

`A029905(2*n)+A011594(A148422(n))`
-/

namespace A315921.P16538042735968057181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029905 (2 * n) + A011594 (A148422 n).toNat

end

end A315921.P16538042735968057181

/-!
# A315925: Coordination sequence Gal.5.234.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315925, there is no canonical definition to state claims against.
-/

/-! ## A315925.P6918327288455197078

`A315071(n)+A130717(n)`
-/

namespace A315925.P6918327288455197078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315071 n + A130717 n

end

end A315925.P6918327288455197078

/-! ## A315925.P4978117729224063316

`A315071(n)+Δ[A130507(n)]`
-/

namespace A315925.P4978117729224063316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315071 n + (f1 (n + 1) - f1 n)

end

end A315925.P4978117729224063316

/-! ## A315925.P11532063919797824609

`A315071(n)+Δ[Δ[A130845(n)]]`
-/

namespace A315925.P11532063919797824609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315071 n + (f1 (n + 1) - f1 n)

end

end A315925.P11532063919797824609

/-! ## A315925.P8590190385602618540

`A315071(n)+Δ[A131358(A057353(n))]`
-/

namespace A315925.P8590190385602618540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 (A057353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315071 n + (f1 (n + 1) - f1 n)

end

end A315925.P8590190385602618540

/-! ## A315925.P18217676065529934818

`A315071(n)+Δ[A131358(A131742(n))]`
-/

namespace A315925.P18217676065529934818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131358 (A131742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315071 n + (f1 (n + 1) - f1 n)

end

end A315925.P18217676065529934818

/-! ## A315925.P3035968397760653557

`A315071(n)+Δ[A131730(n*A021913(n))]`
-/

namespace A315925.P3035968397760653557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 ((n : ℤ) * A021913 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315071 n + (f1 (n + 1) - f1 n)

end

end A315925.P3035968397760653557

/-! ## A315925.P5131507164883475829

`A315071(n)+A315346(n)-A314154(n)`
-/

namespace A315925.P5131507164883475829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315071 n + (A315346 n - A314154 n)

end

end A315925.P5131507164883475829

/-! ## A315925.P8982729587537719979

`A315071(n)+Δ[A307012(A296805(n+1))]`
-/

namespace A315925.P8982729587537719979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307012 (A296805 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315071 n + (f1 (n + 1) - f1 n)

end

end A315925.P8982729587537719979

/-!
# A315926: Coordination sequence Gal.5.237.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315926, there is no canonical definition to state claims against.
-/

/-! ## A315926.P18204428593271375276

`A315925(n)+A204547(A053497(n))`
-/

namespace A315926.P18204428593271375276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315925 n + A204547 (A053497 n).toNat

end

end A315926.P18204428593271375276

/-! ## A315926.P2724454594169383257

`A334740(A205999(n))+A315925(n)`
-/

namespace A315926.P2724454594169383257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334740 (A205999 n).toNat + A315925 n

end

end A315926.P2724454594169383257

/-!
# A315927: Coordination sequence Gal.5.11.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315927, there is no canonical definition to state claims against.
-/

/-! ## A315927.P12682513636986812394

`2*A315843(n)-A315812(n)`
-/

namespace A315927.P12682513636986812394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315843 n - A315812 n

end

end A315927.P12682513636986812394

/-! ## A315927.P17960980900690527502

`A004277(A315843(n))-A315812(n)`
-/

namespace A315927.P17960980900690527502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A315843 n).toNat - A315812 n

end

end A315927.P17960980900690527502

/-!
# A315929: Coordination sequence Gal.6.388.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315929, there is no canonical definition to state claims against.
-/

/-! ## A315929.P11676590763185271712

`A314531(n)+A164056(A032559(n+1))`
-/

namespace A315929.P11676590763185271712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314531 n + A164056 (A032559 (n + 1)).toNat

end

end A315929.P11676590763185271712

/-! ## A315929.P8242312090637931990

`A314531(n)+A164056(A078213(n+1))`
-/

namespace A315929.P8242312090637931990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314531 n + A164056 (A078213 (n + 1)).toNat

end

end A315929.P8242312090637931990

/-! ## A315929.P11553796687553408486

`A314531(n)+A164056(A276142(n+1))`
-/

namespace A315929.P11553796687553408486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314531 n + A164056 (A276142 (n + 1)).toNat

end

end A315929.P11553796687553408486

/-!
# A315930: Coordination sequence Gal.5.199.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315930, there is no canonical definition to state claims against.
-/

/-! ## A315930.P14546423060134389153

`A002202(lt[A117269(n+4), A117268(2*(n+2))])`
-/

namespace A315930.P14546423060134389153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117269 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117268 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315930.P14546423060134389153

/-! ## A315930.P2762678622680140046

`record[A000010(A174530(n+14)+1)]`
-/

namespace A315930.P2762678622680140046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A174530 (n + 14) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315930.P2762678622680140046

/-! ## A315930.P10110106591360082717

`A002174(lt[0, A113290(3*n+4)])`
-/

namespace A315930.P10110106591360082717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113290 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002174 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A315930.P10110106591360082717

/-! ## A315930.P14373785297940093110

`∑[A181819(record[A291750(3*n+1)])]`
-/

namespace A315930.P14373785297940093110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291750 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315930.P14373785297940093110

/-! ## A315930.P9461266105138898216

`A000010(p?[3*n+1]%A333927(n+1)+1)`
-/

namespace A315930.P9461266105138898216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A333927 (n + 1)) + 1).toNat

end

end A315930.P9461266105138898216

/-!
# A315932: Coordination sequence Gal.4.110.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315932, there is no canonical definition to state claims against.
-/

/-! ## A315932.P3492696030669824955

`A280814(A022144(n))+round(sqrt(2*(n+1)))²-(2*n+1)`
-/

namespace A315932.P3492696030669824955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280814 (A022144 n).toNat + (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ))

end

end A315932.P3492696030669824955

/-! ## A315932.P15893165250838653069

`A301720(n)-A001221(A177483(n))`
-/

namespace A315932.P15893165250838653069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301720 n - A001221 (A177483 n).toNat

end

end A315932.P15893165250838653069

/-!
# A315933: Coordination sequence Gal.6.565.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315933, there is no canonical definition to state claims against.
-/

/-! ## A315933.P12297317508199618870

`A316068(n)-A353849(A000803(n))`
-/

namespace A315933.P12297317508199618870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316068 n - A353849 (A000803 n).toNat

end

end A315933.P12297317508199618870

/-! ## A315933.P3741320013465243352

`A330025(A287350(n+1))+A250120(n)`
-/

namespace A315933.P3741320013465243352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A287350 (n + 1)).toNat + A250120 n

end

end A315933.P3741320013465243352

/-! ## A315933.P3370662667214216082

`A250120(n)-A008683(A004821(n+3))`
-/

namespace A315933.P3370662667214216082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A008683 (A004821 (n + 3)).toNat

end

end A315933.P3370662667214216082

/-!
# A315934: Coordination sequence Gal.6.564.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315934, there is no canonical definition to state claims against.
-/

/-! ## A315934.P17233131695341674437

`A269941(A246106(2*n+3))+A250120(n)`
-/

namespace A315934.P17233131695341674437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269941 (A246106 (2 * n + 3)).toNat + A250120 n

end

end A315934.P17233131695341674437

/-! ## A315934.P17227515662879747331

`∑[A184168(A008586(3*n+2))]+n`
-/

namespace A315934.P17227515662879747331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184168 (A008586 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A315934.P17227515662879747331

/-! ## A315934.P14462270628282726524

`A314922(n)-Δ[A101455(A000990(2*n+1))]`
-/

namespace A315934.P14462270628282726524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A000990 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314922 n - (f1 (n + 1) - f1 n)

end

end A315934.P14462270628282726524

/-!
# A315935: Coordination sequence Gal.3.61.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315935, there is no canonical definition to state claims against.
-/

/-! ## A315935.P9964969366102448988

`2*A315906(n)-A315864(n)`
-/

namespace A315935.P9964969366102448988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315906 n - A315864 n

end

end A315935.P9964969366102448988

/-! ## A315935.P14252467538449501951

`A004277(A315906(n))-A315864(n)`
-/

namespace A315935.P14252467538449501951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A315906 n).toNat - A315864 n

end

end A315935.P14252467538449501951

/-! ## A315935.P4558580788275185943

`A315864(n)+A005843(A315906(n)-A315864(n))`
-/

namespace A315935.P4558580788275185943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315864 n + A005843 (A315906 n - A315864 n).toNat

end

end A315935.P4558580788275185943

/-!
# A315936: Coordination sequence Gal.5.259.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315936, there is no canonical definition to state claims against.
-/

/-! ## A315936.P3668921823179052059

`record[and(n+3, A141715(n))]`
-/

namespace A315936.P3668921823179052059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 3 : ℤ) (A141715 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315936.P3668921823179052059

/-! ## A315936.P2475250350588663048

`record[and(A026362(n+1), A255914(n))]`
-/

namespace A315936.P2475250350588663048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026362 (n + 1)) (A255914 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315936.P2475250350588663048

/-! ## A315936.P12860987091692706904

`record[and(A276444(n+1), A291978(n))]`
-/

namespace A315936.P12860987091692706904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A276444 (n + 1)) (A291978 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315936.P12860987091692706904

/-! ## A315936.P4002737064507424894

`record[and(A334192(n), A349371(n+1))]`
-/

namespace A315936.P4002737064507424894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A334192 n) (A349371 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315936.P4002737064507424894

/-! ## A315936.P14225745321874141557

`lt[A140853(A061423(n+1)), A178195(n+1)]`
-/

namespace A315936.P14225745321874141557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140853 (A061423 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A315936.P14225745321874141557

/-!
# A315942: Coordination sequence Gal.6.507.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315942, the canonical program `A315942.P3639150033563000790` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315942 has offset 0).

The definition of A315942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315942.P3639150033563000790

`ogf((1+6x+8x^2+18x^3+18x^4+22x^5+34x^6+22x^7+18x^8+18x^9+8x^10+6x^11+x^12)/(1-2x^6+x^12))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A315942

/-- `ogf((1+6x+8x^2+18x^3+18x^4+22x^5+34x^6+22x^7+18x^8+18x^9+8x^10+6x^11+x^12)/(1-2x^6+x^12))` -/
def P3639150033563000790.Spec : Prop :=
  ∀ n, P3639150033563000790.a n = A315942 n

theorem P3639150033563000790.correct : P3639150033563000790.Spec := by
  intro n
  simp only [A315942]

end A315942

/-! ## A315942.P16520448442024445906

`2*A315360(n)-A008458(n)`
-/

namespace A315942.P16520448442024445906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315360 n - A008458 n

end

end A315942.P16520448442024445906

namespace A315942

/-- `2*A315360(n)-A008458(n)` -/
def P16520448442024445906.Spec : Prop :=
  ∀ n, P16520448442024445906.a n = A315942 n

end A315942

/-! ## A315942.P13003469717498938470

`2*A315360(n)-A008486(A005843(n))`
-/

namespace A315942.P13003469717498938470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315360 n - A008486 (A005843 n).toNat

end

end A315942.P13003469717498938470

namespace A315942

/-- `2*A315360(n)-A008486(A005843(n))` -/
def P13003469717498938470.Spec : Prop :=
  ∀ n, P13003469717498938470.a n = A315942 n

end A315942

/-! ## A315942.P17885530833636307907

`A008458(n)-A005843(A008458(n)-A315360(n))`
-/

namespace A315942.P17885530833636307907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A315360 n).toNat

end

end A315942.P17885530833636307907

namespace A315942

/-- `A008458(n)-A005843(A008458(n)-A315360(n))` -/
def P17885530833636307907.Spec : Prop :=
  ∀ n, P17885530833636307907.a n = A315942 n

end A315942

/-! ## A315942.P3983828134947921706

`2*A301720(n)-A315365(n)`
-/

namespace A315942.P3983828134947921706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301720 n - A315365 n

end

end A315942.P3983828134947921706

namespace A315942

/-- `2*A301720(n)-A315365(n)` -/
def P3983828134947921706.Spec : Prop :=
  ∀ n, P3983828134947921706.a n = A315942 n

end A315942

/-! ## A315942.P1749555925470189158

`A315365(n)-A005843(A315365(n)-A301720(n))`
-/

namespace A315942.P1749555925470189158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315365 n - A005843 (A315365 n - A301720 n).toNat

end

end A315942.P1749555925470189158

namespace A315942

/-- `A315365(n)-A005843(A315365(n)-A301720(n))` -/
def P1749555925470189158.Spec : Prop :=
  ∀ n, P1749555925470189158.a n = A315942 n

end A315942

/-! ## A315942.P12302256105851509705

`A005843(A315360(n))-A008458(n)`
-/

namespace A315942.P12302256105851509705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315360 n).toNat - A008458 n

end

end A315942.P12302256105851509705

namespace A315942

/-- `A005843(A315360(n))-A008458(n)` -/
def P12302256105851509705.Spec : Prop :=
  ∀ n, P12302256105851509705.a n = A315942 n

end A315942

/-! ## A315942.P17887678315444096527

`A005843(A301720(n))-A315365(n)`
-/

namespace A315942.P17887678315444096527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A301720 n).toNat - A315365 n

end

end A315942.P17887678315444096527

namespace A315942

/-- `A005843(A301720(n))-A315365(n)` -/
def P17887678315444096527.Spec : Prop :=
  ∀ n, P17887678315444096527.a n = A315942 n

end A315942

/-! ## A315942.P2343996057982406928

`A004275(A315360(n))-A004275(3*n)`
-/

namespace A315942.P2343996057982406928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A315360 n).toNat - A004275 (3 * n)

end

end A315942.P2343996057982406928

namespace A315942

/-- `A004275(A315360(n))-A004275(3*n)` -/
def P2343996057982406928.Spec : Prop :=
  ∀ n, P2343996057982406928.a n = A315942 n

end A315942

/-! ## A315942.P8699487307416341586

`A005843(A315360(n))-A008486(A005843(n))`
-/

namespace A315942.P8699487307416341586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315360 n).toNat - A008486 (A005843 n).toNat

end

end A315942.P8699487307416341586

namespace A315942

/-- `A005843(A315360(n))-A008486(A005843(n))` -/
def P8699487307416341586.Spec : Prop :=
  ∀ n, P8699487307416341586.a n = A315942 n

end A315942

/-!
# A315943: Coordination sequence Gal.5.229.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315943, the canonical program `A315943.P3704534385650621552` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315943 has offset 0).

The definition of A315943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315943.P3704534385650621552

`A315847(n)+A087509(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315943

/-- `A315847(n)+A087509(n)` -/
def P3704534385650621552.Spec : Prop :=
  ∀ n, P3704534385650621552.a n = A315943 n

theorem P3704534385650621552.correct : P3704534385650621552.Spec := by
  intro n
  simp only [A315943]

end A315943

/-! ## A315943.P5193421302555521488

`A315847(n)+Δ[A008133(n)]`
-/

namespace A315943.P5193421302555521488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315847 n + (f1 (n + 1) - f1 n)

end

end A315943.P5193421302555521488

namespace A315943

/-- `A315847(n)+Δ[A008133(n)]` -/
def P5193421302555521488.Spec : Prop :=
  ∀ n, P5193421302555521488.a n = A315943 n

end A315943

/-! ## A315943.P1669165624291815175

`A301682(n)+2*A087509(n)`
-/

namespace A315943.P1669165624291815175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301682 n + 2 * A087509 n

end

end A315943.P1669165624291815175

namespace A315943

/-- `A301682(n)+2*A087509(n)` -/
def P1669165624291815175.Spec : Prop :=
  ∀ n, P1669165624291815175.a n = A315943 n

theorem P1669165624291815175.correct : P1669165624291815175.Spec := by
  intro n
  simp only [A315943, Nat.add_sub_cancel, A315943.P1669165624291815175.a, A315943.P3704534385650621552.a, A087509, A087509.P15221340614789788857.a, A301682, A301682.P7092180004668091410.a, A315847, A315847.P3242230208927172562.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315943

/-! ## A315943.P5447667572076537352

`A008458(n)-4*A087509(n)`
-/

namespace A315943.P5447667572076537352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - 4 * A087509 n

end

end A315943.P5447667572076537352

namespace A315943

/-- `A008458(n)-4*A087509(n)` -/
def P5447667572076537352.Spec : Prop :=
  ∀ n, P5447667572076537352.a n = A315943 n

end A315943

/-! ## A315943.P2006495086696196293

`A301682(n)+Δ[2*A008133(n)]`
-/

namespace A315943.P2006495086696196293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301682 n + (f1 (n + 1) - f1 n)

end

end A315943.P2006495086696196293

namespace A315943

/-- `A301682(n)+Δ[2*A008133(n)]` -/
def P2006495086696196293.Spec : Prop :=
  ∀ n, P2006495086696196293.a n = A315943 n

end A315943

/-! ## A315943.P18175619284516218216

`2*n+A301686(n)-A006369(n)`
-/

namespace A315943.P18175619284516218216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A301686 n - A006369 n)

end

end A315943.P18175619284516218216

namespace A315943

/-- `2*n+A301686(n)-A006369(n)` -/
def P18175619284516218216.Spec : Prop :=
  ∀ n, P18175619284516218216.a n = A315943 n

end A315943

/-! ## A315943.P11099301644226455252

`A008458(n)-A008586(A087509(n))`
-/

namespace A315943.P11099301644226455252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A008586 (A087509 n).toNat

end

end A315943.P11099301644226455252

namespace A315943

/-- `A008458(n)-A008586(A087509(n))` -/
def P11099301644226455252.Spec : Prop :=
  ∀ n, P11099301644226455252.a n = A315943 n

end A315943

/-! ## A315943.P6049637263181584316

`A298784(n)+2*A022998(A004396(n))`
-/

namespace A315943.P6049637263181584316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n + 2 * A022998 (A004396 n).toNat

end

end A315943.P6049637263181584316

namespace A315943

/-- `A298784(n)+2*A022998(A004396(n))` -/
def P6049637263181584316.Spec : Prop :=
  ∀ n, P6049637263181584316.a n = A315943 n

end A315943

/-! ## A315943.P863492149740428373

`A301720(n)-A087509(n)`
-/

namespace A315943.P863492149740428373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301720 n - A087509 n

end

end A315943.P863492149740428373

namespace A315943

/-- `A301720(n)-A087509(n)` -/
def P863492149740428373.Spec : Prop :=
  ∀ n, P863492149740428373.a n = A315943 n

end A315943

/-! ## A315943.P12545847914450107132

`A301720(n)-Δ[A008133(n)]`
-/

namespace A315943.P12545847914450107132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301720 n - (f1 (n + 1) - f1 n)

end

end A315943.P12545847914450107132

namespace A315943

/-- `A301720(n)-Δ[A008133(n)]` -/
def P12545847914450107132.Spec : Prop :=
  ∀ n, P12545847914450107132.a n = A315943 n

end A315943

/-! ## A315943.P11957478986638941251

`A004523(A301682(n))+A004277(n)`
-/

namespace A315943.P11957478986638941251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A301682 n).toNat + A004277 n

end

end A315943.P11957478986638941251

namespace A315943

/-- `A004523(A301682(n))+A004277(n)` -/
def P11957478986638941251.Spec : Prop :=
  ∀ n, P11957478986638941251.a n = A315943 n

end A315943

/-!
# A315950: Coordination sequence Gal.3.47.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315950, the canonical program `A315950.P11641991504795100174` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315950 has offset 0).

The definition of A315950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2674 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315950.P11641991504795100174

`ogf((1+3x-4x^2+8x^3-4x^4+8x^5-4x^6+3x^7+x^8)/(1-3x+5x^2-6x^3+6x^4-6x^5+5x^6-3x^7+x^8))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A315950

/-- `ogf((1+3x-4x^2+8x^3-4x^4+8x^5-4x^6+3x^7+x^8)/(1-3x+5x^2-6x^3+6x^4-6x^5+5x^6-3x^7+x^8))` -/
def P11641991504795100174.Spec : Prop :=
  ∀ n, P11641991504795100174.a n = A315950 n

theorem P11641991504795100174.correct : P11641991504795100174.Spec := by
  intro n
  simp only [A315950]

end A315950

/-! ## A315950.P6743311666497804507

`A277551(n+1)-A368414(A232896(n+1))`
-/

namespace A315950.P6743311666497804507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277551 (n + 1) - A368414 (A232896 (n + 1)).toNat

end

end A315950.P6743311666497804507

namespace A315950

/-- `A277551(n+1)-A368414(A232896(n+1))` -/
def P6743311666497804507.Spec : Prop :=
  ∀ n, P6743311666497804507.a n = A315950 n

end A315950

/-!
# A315952: Coordination sequence Gal.6.12.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315952, there is no canonical definition to state claims against.
-/

/-! ## A315952.P3376866766637124526

`A032742(A022342(3*n+5)+A007496(n+1))`
-/

namespace A315952.P3376866766637124526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A022342 (3 * n + 5) + A007496 (n + 1)).toNat

end

end A315952.P3376866766637124526

/-! ## A315952.P8764572192981182960

`2*A267116(∏[n%2+2]-1)+3*n+1`
-/

namespace A315952.P8764572192981182960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267116 (∏ j ∈ Finset.range (n + 1), f1 j - 1) + (3 * n + 1 : ℤ)

end

end A315952.P8764572192981182960

/-! ## A315952.P840458156148686297

`A349294(A014407(n+1))`
-/

namespace A315952.P840458156148686297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (A014407 (n + 1)).toNat

end

end A315952.P840458156148686297

/-! ## A315952.P8917165165475581944

`∑[A351566(A061802(n)²)]`
-/

namespace A315952.P8917165165475581944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351566 (A061802 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315952.P8917165165475581944

/-! ## A315952.P7103529974329349374

`∑[A220129(Δ[A058534(n)])]`
-/

namespace A315952.P7103529974329349374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058534 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220129 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315952.P7103529974329349374

/-!
# A315953: Coordination sequence Gal.5.21.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315953, there is no canonical definition to state claims against.
-/

/-! ## A315953.P16246007158972580096

`A083354(n)+3%A125957(n+1)`
-/

namespace A315953.P16246007158972580096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083354 n + Int.tmod 3 (A125957 (n + 1))

end

end A315953.P16246007158972580096

/-! ## A315953.P6129226246296572140

`A059759(n+1)*A274009(A110287(n))`
-/

namespace A315953.P6129226246296572140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059759 (n + 1) * A274009 (A110287 n).toNat

end

end A315953.P6129226246296572140

/-! ## A315953.P17094108448680498036

`record[A335454(A335469(n+1))]*A335465(n)`
-/

namespace A315953.P17094108448680498036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335454 (A335469 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A335465 n

end

end A315953.P17094108448680498036

/-! ## A315953.P16098954796348744315

`A059759(n+1)*A358479(A164368(n+4))`
-/

namespace A315953.P16098954796348744315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059759 (n + 1) * A358479 (A164368 (n + 4)).toNat

end

end A315953.P16098954796348744315

/-! ## A315953.P16859887270559951021

`lt[A088627(n+1), A194285(A001597(3*n+5))]`
-/

namespace A315953.P16859887270559951021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (A001597 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A315953.P16859887270559951021

/-!
# A315954: Coordination sequence Gal.4.13.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315954, the canonical program `A315954.P16459826788736901357` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315954 has offset 0).

The definition of A315954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315954.P16459826788736901357

`A314617(n)+A134667(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315954

/-- `A314617(n)+A134667(n)` -/
def P16459826788736901357.Spec : Prop :=
  ∀ n, P16459826788736901357.a n = A315954 n

theorem P16459826788736901357.correct : P16459826788736901357.Spec := by
  intro n
  simp only [A315954]

end A315954

/-! ## A315954.P4336115714072455134

`A314617(n)-A163811(n+6)`
-/

namespace A315954.P4336115714072455134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314617 n - A163811 (n + 6)

end

end A315954.P4336115714072455134

namespace A315954

/-- `A314617(n)-A163811(n+6)` -/
def P4336115714072455134.Spec : Prop :=
  ∀ n, P4336115714072455134.a n = A315954 n

end A315954

/-! ## A315954.P18284954302273642016

`A314617(n)-xor(A000007(n), A163811(n))`
-/

namespace A315954.P18284954302273642016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314617 n - Int.xor (A000007 n) (A163811 n)

end

end A315954.P18284954302273642016

namespace A315954

/-- `A314617(n)-xor(A000007(n), A163811(n))` -/
def P18284954302273642016.Spec : Prop :=
  ∀ n, P18284954302273642016.a n = A315954 n

end A315954

/-! ## A315954.P18327432084499977096

`A314617(n)-A027656(A027656(n))*A163811(n)`
-/

namespace A315954.P18327432084499977096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314617 n - A027656 (A027656 n).toNat * A163811 n

end

end A315954.P18327432084499977096

namespace A315954

/-- `A314617(n)-A027656(A027656(n))*A163811(n)` -/
def P18327432084499977096.Spec : Prop :=
  ∀ n, P18327432084499977096.a n = A315954 n

end A315954

/-! ## A315954.P14302443518851983413

`A134667(n)+2*A313524(n)-A219529(n)`
-/

namespace A315954.P14302443518851983413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n + (2 * A313524 n - A219529 n)

end

end A315954.P14302443518851983413

namespace A315954

/-- `A134667(n)+2*A313524(n)-A219529(n)` -/
def P14302443518851983413.Spec : Prop :=
  ∀ n, P14302443518851983413.a n = A315954 n

theorem P14302443518851983413.correct : P14302443518851983413.Spec := by
  intro n
  simp only [A315954, Nat.add_sub_cancel, A315954.P14302443518851983413.a, A315954.P16459826788736901357.a, A134667, A134667.P10520602456180763309.a, A219529, A219529.P17213401734047467764.a, A313524, A313524.P713313108680525685.a, A314617, A314617.P7181764497835191465.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315954

/-! ## A315954.P2886041836438977323

`A314617(n)+A102283(A314617(3*n+4))`
-/

namespace A315954.P2886041836438977323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314617 n + A102283 (A314617 (3 * n + 4)).toNat

end

end A315954.P2886041836438977323

namespace A315954

/-- `A314617(n)+A102283(A314617(3*n+4))` -/
def P2886041836438977323.Spec : Prop :=
  ∀ n, P2886041836438977323.a n = A315954 n

end A315954

/-!
# A315955: Coordination sequence Gal.5.11.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315955, there is no canonical definition to state claims against.
-/

/-! ## A315955.P17658595087552549819

`A109015(A000244(n))*A361858(n+1)`
-/

namespace A315955.P17658595087552549819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109015 (A000244 n).toNat * A361858 (n + 1)

end

end A315955.P17658595087552549819

/-!
# A315957: Coordination sequence Gal.6.29.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315957, there is no canonical definition to state claims against.
-/

/-! ## A315957.P10945440365658079085

`A014963(A000244(n))*A339509(n)`
-/

namespace A315957.P10945440365658079085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000244 n).toNat * A339509 n

end

end A315957.P10945440365658079085

/-!
# A315958: Coordination sequence Gal.6.507.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315958, there is no canonical definition to state claims against.
-/

/-! ## A315958.P509730604163308198

`∏{e}[∑[n*a(n-1)], #+1]` with `a(0)=0, a(1)=12`
-/

namespace A315958.P509730604163308198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A315958.P509730604163308198

/-! ## A315958.P570297289190908044

`A000005(A008458(n)*A110590(n+1))`
-/

namespace A315958.P570297289190908044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008458 n * A110590 (n + 1)).toNat

end

end A315958.P570297289190908044

/-! ## A315958.P10516661711995792886

`A301690(lt[A001156(n), A134599(n+2)])`
-/

namespace A315958.P10516661711995792886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134599 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301690 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315958.P10516661711995792886

/-! ## A315958.P1241486176991102854

`A301690(lt[A025161(n+3), A134599(n+2)])`
-/

namespace A315958.P1241486176991102854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025161 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134599 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301690 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315958.P1241486176991102854

/-!
# A315959: Coordination sequence Gal.5.146.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315959, the canonical program `A315959.P3345584257071925561` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315959 has offset 0).

The definition of A315959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315959.P3345584257071925561

`3*n+A004525(A315828(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A315959

/-- `3*n+A004525(A315828(n))` -/
def P3345584257071925561.Spec : Prop :=
  ∀ n, P3345584257071925561.a n = A315959 n

theorem P3345584257071925561.correct : P3345584257071925561.Spec := by
  intro n
  simp only [A315959]

end A315959

/-! ## A315959.P1755173452077513719

`(A315828(n)+A008458(n))/2`
-/

namespace A315959.P1755173452077513719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315828 n + A008458 n : ℚ) / 2

end

end A315959.P1755173452077513719

namespace A315959

/-- `(A315828(n)+A008458(n))/2` -/
def P1755173452077513719.Spec : Prop :=
  ∀ n, P1755173452077513719.a n = (A315959 n : ℚ)

end A315959

/-! ## A315959.P6678704100706336796

`A008486(n)+A004526(A315828(n))`
-/

namespace A315959.P6678704100706336796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315828 n).toNat

end

end A315959.P6678704100706336796

namespace A315959

/-- `A008486(n)+A004526(A315828(n))` -/
def P6678704100706336796.Spec : Prop :=
  ∀ n, P6678704100706336796.a n = A315959 n

end A315959

/-! ## A315959.P15600493092868414437

`A004525(A315828(n))+A008588(n)/2`
-/

namespace A315959.P15600493092868414437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (A315828 n).toNat : ℚ) + (A008588 n : ℚ) / 2

end

end A315959.P15600493092868414437

namespace A315959

/-- `A004525(A315828(n))+A008588(n)/2` -/
def P15600493092868414437.Spec : Prop :=
  ∀ n, P15600493092868414437.a n = (A315959 n : ℚ)

theorem P15600493092868414437.correct : P15600493092868414437.Spec := by
  intro n
  simp only [A315959, Nat.add_sub_cancel, A315959.P15600493092868414437.a, A315959.P3345584257071925561.a, A004525, A004525.P4158271949796742323.a, A008588, A008588.P12386450284809463491.a, A315828, A315828.P14903365613760459994.a, A008486, A008486.P11623131867527198563.a, A250120, A250120.P17005803601232239086.a, A310252, A310252.P16435605649831598924.a, A008574, A008574.P1300280032690682112.a, A022144, A022144.P3637304218834470582.a, A047486, A047486.P6506762595393263252.a, A244895, A244895.P3287071687313047282.a, A313568, A313568.P10572576497162449502.f1, A313568.P10572576497162449502.a, A315373, A315373.P10372235657626568569.a, A313660, A313660.P5112024612694540974.f1, A313660.P5112024612694540974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A315959

/-! ## A315959.P8673632637912807671

`A315828(n)+A001281(A008458(n)-A315828(n))`
-/

namespace A315959.P8673632637912807671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315828 n + A001281 (A008458 n - A315828 n).toNat

end

end A315959.P8673632637912807671

namespace A315959

/-- `A315828(n)+A001281(A008458(n)-A315828(n))` -/
def P8673632637912807671.Spec : Prop :=
  ∀ n, P8673632637912807671.a n = A315959 n

end A315959

/-! ## A315959.P8869388574108486547

`A315828(n)+A004525(A008458(n)-A315828(n))`
-/

namespace A315959.P8869388574108486547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315828 n + A004525 (A008458 n - A315828 n).toNat

end

end A315959.P8869388574108486547

namespace A315959

/-- `A315828(n)+A004525(A008458(n)-A315828(n))` -/
def P8869388574108486547.Spec : Prop :=
  ∀ n, P8869388574108486547.a n = A315959 n

end A315959

/-! ## A315959.P13595090703727740922

`A008458(n)-A004526(A008458(n)-A315828(n))`
-/

namespace A315959.P13595090703727740922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315828 n).toNat

end

end A315959.P13595090703727740922

namespace A315959

/-- `A008458(n)-A004526(A008458(n)-A315828(n))` -/
def P13595090703727740922.Spec : Prop :=
  ∀ n, P13595090703727740922.a n = A315959 n

end A315959

/-! ## A315959.P8513393819478339564

`A006368(A315213(n)-2*n)`
-/

namespace A315959.P8513393819478339564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315213 n - (2 * n : ℤ)).toNat

end

end A315959.P8513393819478339564

namespace A315959

/-- `A006368(A315213(n)-2*n)` -/
def P8513393819478339564.Spec : Prop :=
  ∀ n, P8513393819478339564.a n = A315959 n

end A315959

/-! ## A315959.P8840999684626291332

`A032766(A315213(n)-2*n)`
-/

namespace A315959.P8840999684626291332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A315213 n - (2 * n : ℤ)).toNat

end

end A315959.P8840999684626291332

namespace A315959

/-- `A032766(A315213(n)-2*n)` -/
def P8840999684626291332.Spec : Prop :=
  ∀ n, P8840999684626291332.a n = A315959 n

end A315959

/-! ## A315959.P17514126110476469687

`A064455(A315213(n)-2*n)`
-/

namespace A315959.P17514126110476469687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (A315213 n - (2 * n : ℤ)).toNat

end

end A315959.P17514126110476469687

namespace A315959

/-- `A064455(A315213(n)-2*n)` -/
def P17514126110476469687.Spec : Prop :=
  ∀ n, P17514126110476469687.a n = A315959 n

end A315959

/-! ## A315959.P6031393423878802284

`A006368(A315213(n)-n-n)`
-/

namespace A315959.P6031393423878802284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A315213 n - (n : ℤ) - (n : ℤ)).toNat

end

end A315959.P6031393423878802284

namespace A315959

/-- `A006368(A315213(n)-n-n)` -/
def P6031393423878802284.Spec : Prop :=
  ∀ n, P6031393423878802284.a n = A315959 n

end A315959

/-! ## A315959.P18337177673954425680

`A032766(A315213(n)-n-n)`
-/

namespace A315959.P18337177673954425680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A315213 n - (n : ℤ) - (n : ℤ)).toNat

end

end A315959.P18337177673954425680

namespace A315959

/-- `A032766(A315213(n)-n-n)` -/
def P18337177673954425680.Spec : Prop :=
  ∀ n, P18337177673954425680.a n = A315959 n

end A315959

/-! ## A315959.P12746938511885436514

`A064455(A315213(n)-n-n)`
-/

namespace A315959.P12746938511885436514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (A315213 n - (n : ℤ) - (n : ℤ)).toNat

end

end A315959.P12746938511885436514

namespace A315959

/-- `A064455(A315213(n)-n-n)` -/
def P12746938511885436514.Spec : Prop :=
  ∀ n, P12746938511885436514.a n = A315959 n

end A315959

/-! ## A315959.P4611767396125011671

`A001281(A315828(n)+A008458(n))`
-/

namespace A315959.P4611767396125011671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315828 n + A008458 n).toNat

end

end A315959.P4611767396125011671

namespace A315959

/-- `A001281(A315828(n)+A008458(n))` -/
def P4611767396125011671.Spec : Prop :=
  ∀ n, P4611767396125011671.a n = A315959 n

end A315959

/-! ## A315959.P6353241592090219827

`A004525(A315828(n)+A008458(n))`
-/

namespace A315959.P6353241592090219827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315828 n + A008458 n).toNat

end

end A315959.P6353241592090219827

namespace A315959

/-- `A004525(A315828(n)+A008458(n))` -/
def P6353241592090219827.Spec : Prop :=
  ∀ n, P6353241592090219827.a n = A315959 n

end A315959

/-! ## A315959.P3790093885724274955

`A004526(A315828(n)+A008458(n))`
-/

namespace A315959.P3790093885724274955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315828 n + A008458 n).toNat

end

end A315959.P3790093885724274955

namespace A315959

/-- `A004526(A315828(n)+A008458(n))` -/
def P3790093885724274955.Spec : Prop :=
  ∀ n, P3790093885724274955.a n = A315959 n

end A315959

/-! ## A315959.P8286616025509819745

`A004525(A315828(n)+A008588(n))`
-/

namespace A315959.P8286616025509819745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315828 n + A008588 n).toNat

end

end A315959.P8286616025509819745

namespace A315959

/-- `A004525(A315828(n)+A008588(n))` -/
def P8286616025509819745.Spec : Prop :=
  ∀ n, P8286616025509819745.a n = A315959 n

end A315959

/-! ## A315959.P10551765985354582731

`-A001057(A315828(n)+A008458(n))`
-/

namespace A315959.P10551765985354582731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001057 (A315828 n + A008458 n).toNat

end

end A315959.P10551765985354582731

namespace A315959

/-- `-A001057(A315828(n)+A008458(n))` -/
def P10551765985354582731.Spec : Prop :=
  ∀ n, P10551765985354582731.a n = A315959 n

end A315959

/-! ## A315959.P7263195634275865799

`A001057(A008458(n)+A315828(n)-1)`
-/

namespace A315959.P7263195634275865799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008458 n + (A315828 n - 1)).toNat

end

end A315959.P7263195634275865799

namespace A315959

/-- `A001057(A008458(n)+A315828(n)-1)` -/
def P7263195634275865799.Spec : Prop :=
  ∀ n, P7263195634275865799.a n = A315959 n

end A315959

/-! ## A315959.P15483438610212652661

`A001057(A008458(n)-(1-A315828(n)))`
-/

namespace A315959.P15483438610212652661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008458 n - (1 - A315828 n)).toNat

end

end A315959.P15483438610212652661

namespace A315959

/-- `A001057(A008458(n)-(1-A315828(n)))` -/
def P15483438610212652661.Spec : Prop :=
  ∀ n, P15483438610212652661.a n = A315959 n

end A315959

/-!
# A315960: Coordination sequence Gal.6.670.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315960, the canonical program `A315960.P2055946760376609042` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315960 has offset 0).

The definition of A315960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315960.P2055946760376609042

`A008486(A315501(n)-A008574(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A315960

/-- `A008486(A315501(n)-A008574(n))` -/
def P2055946760376609042.Spec : Prop :=
  ∀ n, P2055946760376609042.a n = A315960 n

theorem P2055946760376609042.correct : P2055946760376609042.Spec := by
  intro n
  simp only [A315960]

end A315960

/-! ## A315960.P7536569617396278936

`A008486(A315501(n)%A008574(n))`
-/

namespace A315960.P7536569617396278936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A315501 n) (A008574 n)).toNat

end

end A315960.P7536569617396278936

namespace A315960

/-- `A008486(A315501(n)%A008574(n))` -/
def P7536569617396278936.Spec : Prop :=
  ∀ n, P7536569617396278936.a n = A315960 n

end A315960

/-! ## A315960.P7451813508084159745

`A008486(A315501(n)-(A008486(n)+n))`
-/

namespace A315960.P7451813508084159745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315501 n - (A008486 n + (n : ℤ))).toNat

end

end A315960.P7451813508084159745

namespace A315960

/-- `A008486(A315501(n)-(A008486(n)+n))` -/
def P7451813508084159745.Spec : Prop :=
  ∀ n, P7451813508084159745.a n = A315960 n

end A315960

/-! ## A315960.P10638327175143028000

`A008486(A315501(n)-n-A008486(n))`
-/

namespace A315960.P10638327175143028000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315501 n - (n : ℤ) - A008486 n).toNat

end

end A315960.P10638327175143028000

namespace A315960

/-- `A008486(A315501(n)-n-A008486(n))` -/
def P10638327175143028000.Spec : Prop :=
  ∀ n, P10638327175143028000.a n = A315960 n

end A315960

/-! ## A315960.P15343481272190201758

`A315501(n)-A005843(A008458(n)-A315501(n))`
-/

namespace A315960.P15343481272190201758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315501 n - A005843 (A008458 n - A315501 n).toNat

end

end A315960.P15343481272190201758

namespace A315960

/-- `A315501(n)-A005843(A008458(n)-A315501(n))` -/
def P15343481272190201758.Spec : Prop :=
  ∀ n, P15343481272190201758.a n = A315960 n

end A315960

/-! ## A315960.P10616457723384088462

`A008486(A315501(n))-A005843(A008458(n))`
-/

namespace A315960.P10616457723384088462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315501 n).toNat - A005843 (A008458 n).toNat

end

end A315960.P10616457723384088462

namespace A315960

/-- `A008486(A315501(n))-A005843(A008458(n))` -/
def P10616457723384088462.Spec : Prop :=
  ∀ n, P10616457723384088462.a n = A315960 n

end A315960

/-!
# A315964: Coordination sequence Gal.6.528.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315964, there is no canonical definition to state claims against.
-/

/-! ## A315964.P7427456107899868831

`A139100(A274174(2*n))+4*n`
-/

namespace A315964.P7427456107899868831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139100 (A274174 (2 * n)).toNat + (4 * n : ℤ)

end

end A315964.P7427456107899868831

/-! ## A315964.P17142624681938951502

`A306211(A025169(n))+4*n`
-/

namespace A315964.P17142624681938951502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (A025169 n).toNat + (4 * n : ℤ)

end

end A315964.P17142624681938951502

/-! ## A315964.P13804811433134357875

`A291154(2*n+1)+Δ[A035187(n+2)]`
-/

namespace A315964.P13804811433134357875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291154 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A315964.P13804811433134357875

/-! ## A315964.P677087960571315977

`or(A000005(A164908(n)), A133087(n))`
-/

namespace A315964.P677087960571315977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A164908 n).toNat) (A133087 n)

end

end A315964.P677087960571315977

/-!
# A315965: Coordination sequence Gal.5.254.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315965, there is no canonical definition to state claims against.
-/

/-! ## A315965.P12616306276367894037

`4*n+A003557(A270890(3*n+2))`
-/

namespace A315965.P12616306276367894037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + A003557 (A270890 (3 * n + 2)).toNat

end

end A315965.P12616306276367894037

/-! ## A315965.P4252752348010602008

`A315195(n)-A001222(A051296(n))`
-/

namespace A315965.P4252752348010602008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315195 n - A001222 (A051296 n).toNat

end

end A315965.P4252752348010602008

/-! ## A315965.P15396398522357588593

`A315195(n)-A106490(A001835(n))`
-/

namespace A315965.P15396398522357588593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315195 n - A106490 (A001835 n).toNat

end

end A315965.P15396398522357588593

/-! ## A315965.P17000979749131572960

`A328167(A104272(n+1))+A057732(n+1)`
-/

namespace A315965.P17000979749131572960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328167 (A104272 (n + 1)).toNat + A057732 (n + 1)

end

end A315965.P17000979749131572960

/-! ## A315965.P17203619194503020502

`A261034(2*(n+1))-A251092(A291554(3*n+5))`
-/

namespace A315965.P17203619194503020502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261034 (2 * (n + 1)) - A251092 (A291554 (3 * n + 5)).toNat

end

end A315965.P17203619194503020502

/-!
# A315966: Coordination sequence Gal.6.453.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315966, there is no canonical definition to state claims against.
-/

/-! ## A315966.P2491423798585972834

`record[A356940(2*n+3)%A031443(A108852(n))]`
-/

namespace A315966.P2491423798585972834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356940 (2 * n + 3)) (A031443 (A108852 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315966.P2491423798585972834

/-! ## A315966.P7624307384720019905

`A311796(A291154(n+1))-A291154(2*(n+1))`
-/

namespace A315966.P7624307384720019905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311796 (A291154 (n + 1)).toNat - A291154 (2 * (n + 1))

end

end A315966.P7624307384720019905

/-!
# A315967: Coordination sequence Gal.5.265.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315967, there is no canonical definition to state claims against.
-/

/-! ## A315967.P15076765734783926026

`A315285(n)-A058063(A000110(n))`
-/

namespace A315967.P15076765734783926026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315285 n - A058063 (A000110 n).toNat

end

end A315967.P15076765734783926026

/-!
# A315969: Coordination sequence Gal.6.472.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315969, there is no canonical definition to state claims against.
-/

/-! ## A315969.P785867285401356854

`A315342(n)-A262303(A123930(n))`
-/

namespace A315969.P785867285401356854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315342 n - A262303 (A123930 n).toNat

end

end A315969.P785867285401356854

/-! ## A315969.P18420935886486471061

`A162535(3*(n+1))-A309858(A241462(n+1))`
-/

namespace A315969.P18420935886486471061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162535 (3 * (n + 1)) - A309858 (A241462 (n + 1)).toNat

end

end A315969.P18420935886486471061

/-! ## A315969.P12368231224190268537

`A188294(n+1)+A313569(n)-A188294(A084938(3*n+2))`
-/

namespace A315969.P12368231224190268537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188294 (n + 1) + (A313569 n - A188294 (A084938 (3 * n + 2)).toNat)

end

end A315969.P12368231224190268537

/-!
# A315970: Coordination sequence Gal.6.568.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315970, there is no canonical definition to state claims against.
-/

/-! ## A315970.P8153666304900577743

`A005098(2*n+1)+A000122(A050191(n+8))`
-/

namespace A315970.P8153666304900577743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (2 * n + 1) + A000122 (A050191 (n + 8)).toNat

end

end A315970.P8153666304900577743

/-!
# A315971: Coordination sequence Gal.6.467.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315971, there is no canonical definition to state claims against.
-/

/-! ## A315971.P11742499579444077440

`A171086(3*(n+1))-A101264(A176763(n+1))`
-/

namespace A315971.P11742499579444077440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171086 (3 * (n + 1)) - A101264 (A176763 (n + 1)).toNat

end

end A315971.P11742499579444077440

/-! ## A315971.P1684646743902624726

`A346129(A310697(n))+A115720(A177226(n+1))`
-/

namespace A315971.P1684646743902624726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346129 (A310697 n).toNat + A115720 (A177226 (n + 1)).toNat

end

end A315971.P1684646743902624726

/-!
# A315972: Coordination sequence Gal.3.41.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315972, the canonical program `A315972.P13546847080952124926` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315972 has offset 0).

The definition of A315972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315972.P12265182698074975866

`A314941(n)+A101455(n)`
-/

namespace A315972.P12265182698074975866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314941 n + A101455 n

end

end A315972.P12265182698074975866

namespace A315972

/-- `A314941(n)+A101455(n)` -/
def P12265182698074975866.Spec : Prop :=
  ∀ n, P12265182698074975866.a n = A315972 n

end A315972

/-! ## A315972.P13546847080952124926

`A314941(n)-A056594(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A315972

/-- `A314941(n)-A056594(n+1)` -/
def P13546847080952124926.Spec : Prop :=
  ∀ n, P13546847080952124926.a n = A315972 n

theorem P13546847080952124926.correct : P13546847080952124926.Spec := by
  intro n
  simp only [A315972]

end A315972

/-! ## A315972.P13768765716304981146

`A314776(n)+A028242(A057979(n))`
-/

namespace A315972.P13768765716304981146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314776 n + A028242 (A057979 n).toNat

end

end A315972.P13768765716304981146

namespace A315972

/-- `A314776(n)+A028242(A057979(n))` -/
def P13768765716304981146.Spec : Prop :=
  ∀ n, P13768765716304981146.a n = A315972 n

end A315972

/-! ## A315972.P6268236150185443166

`A315211(n)-A077814(n)`
-/

namespace A315972.P6268236150185443166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315211 n - A077814 n

end

end A315972.P6268236150185443166

namespace A315972

/-- `A315211(n)-A077814(n)` -/
def P6268236150185443166.Spec : Prop :=
  ∀ n, P6268236150185443166.a n = A315972 n

end A315972

/-! ## A315972.P9402900055318972430

`A315616(2*n)/A040000(n)`
-/

namespace A315972.P9402900055318972430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315616 (2 * n) : ℚ) / (A040000 n : ℚ)

end

end A315972.P9402900055318972430

namespace A315972

/-- `A315616(2*n)/A040000(n)` -/
def P9402900055318972430.Spec : Prop :=
  ∀ n, P9402900055318972430.a n = (A315972 n : ℚ)

end A315972

/-!
# A315973: Coordination sequence Gal.6.573.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315973, there is no canonical definition to state claims against.
-/

/-! ## A315973.P6062257718157091954

`A329548(A095320(2*n+3))-A161555(2*(n+2))`
-/

namespace A315973.P6062257718157091954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329548 (A095320 (2 * n + 3)).toNat - A161555 (2 * (n + 2))

end

end A315973.P6062257718157091954

/-!
# A315975: Coordination sequence Gal.4.130.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315975, there is no canonical definition to state claims against.
-/

/-! ## A315975.P17207933226006426755

`A026601(n+1)+A022307(A189912(n))`
-/

namespace A315975.P17207933226006426755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026601 (n + 1) + A022307 (A189912 n).toNat

end

end A315975.P17207933226006426755

/-! ## A315975.P17811537400658675302

`A349294(A008574(n))+A063574(n+1)`
-/

namespace A315975.P17811537400658675302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (A008574 n).toNat + A063574 (n + 1)

end

end A315975.P17811537400658675302

/-! ## A315975.P13152945580097580442

`A315165(n)-A107078(A107126(n+1))`
-/

namespace A315975.P13152945580097580442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315165 n - A107078 (A107126 (n + 1)).toNat

end

end A315975.P13152945580097580442

/-! ## A315975.P8181574828865214464

`A349294(A004277(2*n))+A063574(n+1)`
-/

namespace A315975.P8181574828865214464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (A004277 (2 * n)).toNat + A063574 (n + 1)

end

end A315975.P8181574828865214464

/-! ## A315975.P180932258669150295

`A154487(n+1)-A015435(A023644(n+5))`
-/

namespace A315975.P180932258669150295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154487 (n + 1) - A015435 (A023644 (n + 5)).toNat

end

end A315975.P180932258669150295

/-!
# A315978: Coordination sequence Gal.6.517.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315978, there is no canonical definition to state claims against.
-/

/-! ## A315978.P1244856056393923333

`A047452(∑[A184944(n)!])`
-/

namespace A315978.P1244856056393923333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A184944 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315978.P1244856056393923333

/-! ## A315978.P1655745007970613664

`lt[A035463(n+1), A035445(n+4)]`
-/

namespace A315978.P1655745007970613664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035445 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A315978.P1655745007970613664

/-! ## A315978.P11139224863750128286

`A047452(lt[sqrt(A008720(n)+2), 3]+1)`
-/

namespace A315978.P11139224863750128286
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008720 n + 2 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1)

end

end A315978.P11139224863750128286

/-! ## A315978.P17836487521356907572

`A047452(A179052(n)^A174544(n))`
-/

namespace A315978.P17836487521356907572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (SequenceMachineLib.roundAway ((A179052 n : ℚ) ^ (A174544 n : ℤ))).toNat

end

end A315978.P17836487521356907572

/-! ## A315978.P18219761305565963360

`A047452(lt[A362923(n), A099255(n)])`
-/

namespace A315978.P18219761305565963360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362923 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315978.P18219761305565963360

/-!
# A315979: Coordination sequence Gal.5.245.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315979, there is no canonical definition to state claims against.
-/

/-! ## A315979.P13838473846227116170

`eq[2, A235872(∑[9*n]+1)]`
-/

namespace A315979.P13838473846227116170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235872 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A315979.P13838473846227116170

/-! ## A315979.P12037968066412289571

`eq[11, A351449(A001504(n))]`
-/

namespace A315979.P12037968066412289571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351449 (A001504 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A315979.P12037968066412289571

/-! ## A315979.P17956080110649289331

`A047452(record[A254761(n+1)])`
-/

namespace A315979.P17956080110649289331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A315979.P17956080110649289331

/-! ## A315979.P11852911193899081289

`A047452(∑[A184944(n+2)!])`
-/

namespace A315979.P11852911193899081289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A184944 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315979.P11852911193899081289

/-!
# A315980: Coordination sequence Gal.6.535.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315980, there is no canonical definition to state claims against.
-/

/-! ## A315980.P10544043307936618377

`A345428(n+1)+A006792(A006792(n))`
-/

namespace A315980.P10544043307936618377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345428 (n + 1) + A006792 ((A006792 (n + 10)).toNat + 10)

end

end A315980.P10544043307936618377

/-! ## A315980.P5083097884368418154

`gcd(A019565(n), A169954(3*(n+1)))+4*n`
-/

namespace A315980.P5083097884368418154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019565 n) (A169954 (3 * (n + 1))) + 4 * n

end

end A315980.P5083097884368418154

/-! ## A315980.P11909615122227165150

`or(A020639(A266302(n)), A311232(n))`
-/

namespace A315980.P11909615122227165150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A266302 n).toNat) (A311232 n)

end

end A315980.P11909615122227165150

/-! ## A315980.P1791880556646708084

`A269340(A269342(n+2))+A008574(n)`
-/

namespace A315980.P1791880556646708084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269340 (A269342 (n + 2)).toNat + A008574 n

end

end A315980.P1791880556646708084

/-! ## A315980.P15957316413823324971

`A287676(n+1)+A255201(A131385(n+1))`
-/

namespace A315980.P15957316413823324971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287676 (n + 1) + A255201 (A131385 (n + 1)).toNat

end

end A315980.P15957316413823324971

/-!
# A315981: Coordination sequence Gal.6.421.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315981, there is no canonical definition to state claims against.
-/

/-! ## A315981.P1524655474710827201

`p?[A106502(n+1)]-A225660(n)`
-/

namespace A315981.P1524655474710827201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A225660 n

end

end A315981.P1524655474710827201

/-! ## A315981.P1642890846485740654

`A342515(A315855(n)+A315845(n))`
-/

namespace A315981.P1642890846485740654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (A315855 n + A315845 n).toNat

end

end A315981.P1642890846485740654

/-! ## A315981.P4813972643097744817

`A047615(n+1)+A001055(A102226(n))`
-/

namespace A315981.P4813972643097744817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (n + 1) + A001055 (A102226 n).toNat

end

end A315981.P4813972643097744817

/-! ## A315981.P13612230415488263729

`A063205(n+1)-A053610(A107591(n))`
-/

namespace A315981.P13612230415488263729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063205 (n + 1) - A053610 (A107591 n).toNat

end

end A315981.P13612230415488263729

/-! ## A315981.P15710918665935562181

`A231010(or(A068997(n+1), A287377(n)))`
-/

namespace A315981.P15710918665935562181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231010 (Int.lor (A068997 (n + 1)) (A287377 n)).toNat

end

end A315981.P15710918665935562181

/-!
# A315982: Coordination sequence Gal.6.404.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315982, there is no canonical definition to state claims against.
-/

/-! ## A315982.P9294592013871719236

`char[1]+∑[A281367(A003261(n+1))]`
-/

namespace A315982.P9294592013871719236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281367 (A003261 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A315982.P9294592013871719236

/-! ## A315982.P13616924248267390534

`A314812(n)+A010051(ceil(4^n/2))`
-/

namespace A315982.P13616924248267390534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314812 n + A010051 ⌈(4 ^ n : ℚ) / 2⌉.toNat

end

end A315982.P13616924248267390534

/-! ## A315982.P3442889478836917211

`A356225(A211422(n))+A301301(n)`
-/

namespace A315982.P3442889478836917211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356225 (A211422 n).toNat + A301301 n

end

end A315982.P3442889478836917211

/-! ## A315982.P5724672474660333165

`char[1]+A311304(n)+A001221(A151113(n))`
-/

namespace A315982.P5724672474660333165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A311304 n + A001221 (A151113 n).toNat)

end

end A315982.P5724672474660333165

/-! ## A315982.P20503408498201576

`char[1]+A315414(n)-A001221(A064613(n))`
-/

namespace A315982.P20503408498201576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A315414 n - A001221 (A064613 n).toNat)

end

end A315982.P20503408498201576

/-!
# A315983: Coordination sequence Gal.4.115.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315983, there is no canonical definition to state claims against.
-/

/-! ## A315983.P6512556192662033193

`A313006(n)+A109925(A213292(n))`
-/

namespace A315983.P6512556192662033193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313006 n + A109925 (A213292 n).toNat

end

end A315983.P6512556192662033193

/-!
# A315984: Coordination sequence Gal.6.56.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315984, there is no canonical definition to state claims against.
-/

/-! ## A315984.P10608165446841181760

`A316059(n)-A325273(A076174(n+1))`
-/

namespace A315984.P10608165446841181760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316059 n - A325273 (A076174 (n + 1)).toNat

end

end A315984.P10608165446841181760

/-!
# A315985: Coordination sequence Gal.5.286.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315985, there is no canonical definition to state claims against.
-/

/-! ## A315985.P16572333690461248999

`A038548(A279553(n))+n%2+4*n`
-/

namespace A315985.P16572333690461248999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A279553 n).toNat + ((n % 2 + 4 * n : ℕ) : ℤ)

end

end A315985.P16572333690461248999

/-!
# A315987: Coordination sequence Gal.6.609.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315987, there is no canonical definition to state claims against.
-/

/-! ## A315987.P11046206196575485078

`A314390(n)+A004525(A047273(n+1))`
-/

namespace A315987.P11046206196575485078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314390 n + A004525 (A047273 (n + 1)).toNat

end

end A315987.P11046206196575485078

/-! ## A315987.P8215299581665779907

`A314390(n)+A004525(A004525(3*n))`
-/

namespace A315987.P8215299581665779907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314390 n + A004525 (A004525 (3 * n)).toNat

end

end A315987.P8215299581665779907

/-! ## A315987.P16638814992341812249

`A189031(A274078(n+1))+A140490(n+1)`
-/

namespace A315987.P16638814992341812249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189031 (A274078 (n + 1)).toNat + A140490 (n + 1)

end

end A315987.P16638814992341812249

/-! ## A315987.P9697741282107109393

`A201010(3*n+2)+A008683(A200977(n+1))`
-/

namespace A315987.P9697741282107109393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201010 (3 * n + 2) + A008683 (A200977 (n + 1)).toNat

end

end A315987.P9697741282107109393

/-! ## A315987.P12844231882860772511

`A201010(3*n+2)+A010815(A236856(n+1))`
-/

namespace A315987.P12844231882860772511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201010 (3 * n + 2) + A010815 (A236856 (n + 1)).toNat

end

end A315987.P12844231882860772511

/-!
# A315988: Coordination sequence Gal.6.521.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315988, there is no canonical definition to state claims against.
-/

/-! ## A315988.P16205146424426730885

`A079066(A154149(n+1))+A008574(n)`
-/

namespace A315988.P16205146424426730885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (A154149 (n + 1)).toNat + A008574 n

end

end A315988.P16205146424426730885

/-! ## A315988.P2868201192240695758

`A190459(n+1)-A343785(A043491(n+1))`
-/

namespace A315988.P2868201192240695758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190459 (n + 1) - A343785 (A043491 (n + 1)).toNat

end

end A315988.P2868201192240695758

/-! ## A315988.P18048086846184149977

`A047481(2*(n+1))-A076479(A330459(2*n))`
-/

namespace A315988.P18048086846184149977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047481 (2 * (n + 1)) - A076479 (A330459 (2 * n)).toNat

end

end A315988.P18048086846184149977

/-!
# A315989: Coordination sequence Gal.6.574.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315989, there is no canonical definition to state claims against.
-/

/-! ## A315989.P13111729148483122021

`3*n+n+1-A100198(A034008(n))`
-/

namespace A315989.P13111729148483122021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + ((n + 1 : ℤ) - A100198 (A034008 n).toNat)

end

end A315989.P13111729148483122021

/-! ## A315989.P9879225427380196224

`A016813(n)-A100198(A034008(n))`
-/

namespace A315989.P9879225427380196224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A100198 (A034008 n).toNat

end

end A315989.P9879225427380196224

/-! ## A315989.P18127887363803139616

`A331208(A001318(n))+A069813(n+3)`
-/

namespace A315989.P18127887363803139616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331208 (A001318 n).toNat + A069813 (n + 3)

end

end A315989.P18127887363803139616

/-! ## A315989.P14774543894328765426

`A301730(n)-A171533(A171246(2*n))`
-/

namespace A315989.P14774543894328765426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301730 n - A171533 (A171246 (2 * n)).toNat

end

end A315989.P14774543894328765426

/-! ## A315989.P4390481492761291529

`A202113(2*(n+2))-A000122(A000244(n))`
-/

namespace A315989.P4390481492761291529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202113 (2 * (n + 2)) - A000122 (A000244 n).toNat

end

end A315989.P4390481492761291529

/-!
# A315990: Coordination sequence Gal.5.272.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315990, there is no canonical definition to state claims against.
-/

/-! ## A315990.P3825786023777918572

`A314730(n)+A007814(A057563(n+1))`
-/

namespace A315990.P3825786023777918572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314730 n + A007814 (A057563 (n + 1)).toNat

end

end A315990.P3825786023777918572

/-! ## A315990.P10559274280906190961

`A079978(n+2)+A314856(n)-A178798(A049558(n+1))`
-/

namespace A315990.P10559274280906190961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (n + 2) + (A314856 n - A178798 (A049558 (n + 1)).toNat)

end

end A315990.P10559274280906190961

/-! ## A315990.P8660573823216568429

`A079978(n+2)+A315452(n)-A077267(A223599(n+1))`
-/

namespace A315990.P8660573823216568429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (n + 2) + (A315452 n - A077267 (A223599 (n + 1)).toNat)

end

end A315990.P8660573823216568429

/-! ## A315990.P1656061506308081050

`A315203(n)+and(4, A102669(A001835(n)))-A330025(A342243(2*(n+1)))`
-/

namespace A315990.P1656061506308081050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315203 n + Int.land 4 (A102669 (A001835 n).toNat) - A330025 (A342243 (2 * (n + 1))).toNat

end

end A315990.P1656061506308081050

/-!
# A315991: Coordination sequence Gal.6.424.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315991, there is no canonical definition to state claims against.
-/

/-! ## A315991.P923055376632917994

`A315992(n)-A166301(A005246(n))`
-/

namespace A315991.P923055376632917994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315992 n - A166301 (A005246 n).toNat

end

end A315991.P923055376632917994

/-!
# A315992: Coordination sequence Gal.6.407.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315992, there is no canonical definition to state claims against.
-/

/-! ## A315992.P1759302361406169138

`A359043((n+1)*(n%2+n))+∑[∏{e}[n, #+1]]+n`
-/

namespace A315992.P1759302361406169138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359043 ((n + 1) * (n % 2 + n)) + ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A315992.P1759302361406169138

/-! ## A315992.P16645725979032587534

`A315991(n)+A166301(A005246(n))`
-/

namespace A315992.P16645725979032587534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315991 n + A166301 (A005246 n).toNat

end

end A315992.P16645725979032587534

/-! ## A315992.P2628961840354260297

`A257991(A099132(2*n+1))+A134859(n+1)`
-/

namespace A315992.P2628961840354260297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A099132 (2 * n + 1)).toNat + A134859 (n + 1)

end

end A315992.P2628961840354260297

/-!
# A315993: Coordination sequence Gal.5.198.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315993, there is no canonical definition to state claims against.
-/

/-! ## A315993.P9977245954600321809

`A315246(n)-A117814(A008592(n))`
-/

namespace A315993.P9977245954600321809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315246 n - A117814 (A008592 n).toNat

end

end A315993.P9977245954600321809

/-! ## A315993.P256193303654970099

`or(A086072(A166118(n+1)), A312561(n))`
-/

namespace A315993.P256193303654970099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A086072 (A166118 (n + 1)).toNat) (A312561 n)

end

end A315993.P256193303654970099

/-! ## A315993.P12982654733690672646

`A309095(2*n+1)-A000120(A000070(3*n+1))`
-/

namespace A315993.P12982654733690672646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309095 (2 * n + 1) - A000120 (A000070 (3 * n + 1)).toNat

end

end A315993.P12982654733690672646

/-!
# A315996: Coordination sequence Gal.6.211.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315996, there is no canonical definition to state claims against.
-/

/-! ## A315996.P6876900303379725356

`∑[A139465(∑[A122111(n+4)])]`
-/

namespace A315996.P6876900303379725356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139465 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315996.P6876900303379725356

/-! ## A315996.P17418542611264326566

`eq[A125047(n+1), A220104(n+3)]+n-char[7]`
-/

namespace A315996.P17418542611264326566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A315996.P17418542611264326566

/-! ## A315996.P4404705967789223956

`A314848(n)+A139352(A249131(n))`
-/

namespace A315996.P4404705967789223956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n + A139352 (A249131 n).toNat

end

end A315996.P4404705967789223956

/-! ## A315996.P8863123416961996895

`A315997(n)-A165766(A061551(n))`
-/

namespace A315996.P8863123416961996895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315997 n - A165766 (A061551 n).toNat

end

end A315996.P8863123416961996895

/-! ## A315996.P9965317438841763767

`A315997(n)-A025469(A316109(n))`
-/

namespace A315996.P9965317438841763767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315997 n - A025469 (A316109 n).toNat

end

end A315996.P9965317438841763767

/-!
# A315997: Coordination sequence Gal.6.212.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315997, there is no canonical definition to state claims against.
-/

/-! ## A315997.P1757363984931984776

`eq[A125047(n+1), A220104(n+3)]+n`
-/

namespace A315997.P1757363984931984776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + n

end

end A315997.P1757363984931984776

/-! ## A315997.P17735732390465907687

`A315996(n)+A165766(A061551(n))`
-/

namespace A315997.P17735732390465907687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315996 n + A165766 (A061551 n).toNat

end

end A315997.P17735732390465907687

/-! ## A315997.P10931611326557787864

`A315996(n)+A025469(A316109(n))`
-/

namespace A315997.P10931611326557787864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315996 n + A025469 (A316109 n).toNat

end

end A315997.P10931611326557787864

/-! ## A315997.P8700537932607690616

`or(A022003(A041783(n)), A315996(n))`
-/

namespace A315997.P8700537932607690616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022003 (A041783 n).toNat) (A315996 n)

end

end A315997.P8700537932607690616

/-! ## A315997.P5878343235408622167

`or(A057945(A025192(n)), A311625(n))`
-/

namespace A315997.P5878343235408622167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057945 (A025192 n).toNat) (A311625 n)

end

end A315997.P5878343235408622167

/-!
# A315998: Coordination sequence Gal.6.437.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315998, there is no canonical definition to state claims against.
-/

/-! ## A315998.P16030466548725469164

`A291810(2*n+1)+Δ[A328596(n+1)]`
-/

namespace A315998.P16030466548725469164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291810 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A315998.P16030466548725469164

