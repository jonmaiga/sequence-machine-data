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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A239500: Number of partitions p of n such that if h = (number of parts of p), then h is an (h,1)-separator of p; see Comments.

The programs for A239500, there is no canonical definition to state claims against.
-/

/-! ## A239500.P13740525017438049566

`A239518(n+1)-(A239513(n+1)+A239499(n+1))`
-/

namespace A239500.P13740525017438049566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239518 (n + 1) - (A239513 (n + 1) + A239499 (n + 1))

end

end A239500.P13740525017438049566

/-! ## A239500.P9048421782508265122

`A008615(lt[A292804(3*n+1), A255246(2*n+1)])`
-/

namespace A239500.P9048421782508265122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292804 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255246 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239500.P9048421782508265122

/-! ## A239500.P8736101018980647316

`A008615(lt[A007318(3*n+1), A242453(2*n+3)])`
-/

namespace A239500.P8736101018980647316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242453 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239500.P8736101018980647316

/-! ## A239500.P16572565011627586949

`A008615(lt[A214269(3*n+1), A179414(3*n+4)])`
-/

namespace A239500.P16572565011627586949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214269 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179414 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239500.P16572565011627586949

/-! ## A239500.P17384539247883719256

`A008615(lt[A002264(n), A331145(3*n+4)])`
-/

namespace A239500.P17384539247883719256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331145 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239500.P17384539247883719256

/-!
# A239501: Number of partitions p of n such that if h = max(p) - min(p), then h is an (h,1)-separator of p; see Comments.

The programs for A239501, there is no canonical definition to state claims against.
-/

/-! ## A239501.P7886521294770922503

`A014498(n+1)%A085576(A250742(n+1))`
-/

namespace A239501.P7886521294770922503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014498 (n + 1)) (A085576 (A250742 (n + 1)).toNat)

end

end A239501.P7886521294770922503

/-! ## A239501.P13760145356697885499

`A353493(A333105(n)-A004247(n))`
-/

namespace A239501.P13760145356697885499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (A333105 n - A004247 n).toNat

end

end A239501.P13760145356697885499

/-! ## A239501.P15724924000647429095

`A353493(xor(A004247(n), A333105(n)))`
-/

namespace A239501.P15724924000647429095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (Int.xor (A004247 n) (A333105 n)).toNat

end

end A239501.P15724924000647429095

/-! ## A239501.P2820459388763136214

`A037800(A340804(n+1)+A222906(2*(n+2)))`
-/

namespace A239501.P2820459388763136214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A340804 (n + 1) + A222906 (2 * (n + 2))).toNat

end

end A239501.P2820459388763136214

/-! ## A239501.P13000962197751075543

`and(A080664(n+1), A089049(2*n))`
-/

namespace A239501.P13000962197751075543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080664 (n + 1)) (A089049 (2 * n))

end

end A239501.P13000962197751075543

/-!
# A239502: (Round(q^prime(n)) - 1)/prime(n), where q is the tribonacci constant (A058265).

The programs for A239502, there is no canonical definition to state claims against.
-/

/-! ## A239502.P15440648187506207793

`A093305(p?[2*n+5])-1`
-/

namespace A239502.P15440648187506207793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093305 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - 1

end

end A239502.P15440648187506207793

/-! ## A239502.P6480434804323659189

`A060168(A066047(n+1))`
-/

namespace A239502.P6480434804323659189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060168 (A066047 (n + 1)).toNat

end

end A239502.P6480434804323659189

/-! ## A239502.P7423071194741906445

`A060168(A115232(n+1))`
-/

namespace A239502.P7423071194741906445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060168 (A115232 (n + 1)).toNat

end

end A239502.P7423071194741906445

/-! ## A239502.P11714120535868376104

`A060168(A215848(n+1))`
-/

namespace A239502.P11714120535868376104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060168 (A215848 (n + 1)).toNat

end

end A239502.P11714120535868376104

/-! ## A239502.P13847061614420934745

`A060168(A240710(n+1))`
-/

namespace A239502.P13847061614420934745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060168 (A240710 (n + 1)).toNat

end

end A239502.P13847061614420934745

/-!
# A239503: Numbers n such that n^8+8 and n^8-8 are prime.

The programs for A239503, there is no canonical definition to state claims against.
-/

/-! ## A239503.P9317040499069605216

`∩[A239345(n+1), A239416(n+1)]`
-/

namespace A239503.P9317040499069605216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239503.P9317040499069605216

/-!
# A239504: Number of digits in the decimal expansion of n^10 (A008454).

The programs for A239504, the canonical program `A239504.P16697227297432891706` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239504 has offset 0).

The definition of A239504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239504.P16933089934628292122

`∑{digits}[n^10, A063435(#)]`
-/

namespace A239504.P16933089934628292122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A063435 x).sum

end

end A239504.P16933089934628292122

namespace A239504

/-- `∑{digits}[n^10, A063435(#)]` -/
def P16933089934628292122.Spec : Prop :=
  ∀ n, P16933089934628292122.a n = A239504 n

end A239504

/-! ## A239504.P13819355462107587182

`A004219(floor(acot(n)+n))+1`
-/

namespace A239504.P13819355462107587182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1

end

end A239504.P13819355462107587182

namespace A239504

/-- `A004219(floor(acot(n)+n))+1` -/
def P13819355462107587182.Spec : Prop :=
  ∀ n, P13819355462107587182.a n = A239504 n

end A239504

/-! ## A239504.P7240227654138632695

`A004219(round(sqrt(n²+1)))+1`
-/

namespace A239504.P7240227654138632695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004219 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

end

end A239504.P7240227654138632695

namespace A239504

/-- `A004219(round(sqrt(n²+1)))+1` -/
def P7240227654138632695.Spec : Prop :=
  ∀ n, P7240227654138632695.a n = A239504 n

end A239504

/-! ## A239504.P415906047092218784

`A226233(A194129(n))`
-/

namespace A239504.P415906047092218784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226233 (A194129 n).toNat

end

end A239504.P415906047092218784

namespace A239504

/-- `A226233(A194129(n))` -/
def P415906047092218784.Spec : Prop :=
  ∀ n, P415906047092218784.a n = A239504 n

end A239504

/-! ## A239504.P6258524521734185691

`∑{digits}[A008454(n), A152845(#)]`
-/

namespace A239504.P6258524521734185691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A152845 x).sum

end

end A239504.P6258524521734185691

namespace A239504

/-- `∑{digits}[A008454(n), A152845(#)]` -/
def P6258524521734185691.Spec : Prop :=
  ∀ n, P6258524521734185691.a n = A239504 n

end A239504

/-! ## A239504.P16697227297432891706

`∑{digits}[n^10, A007318(A007318(#))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A239504

/-- `∑{digits}[n^10, A007318(A007318(#))]` -/
def P16697227297432891706.Spec : Prop :=
  ∀ n, P16697227297432891706.a n = A239504 n

theorem P16697227297432891706.correct : P16697227297432891706.Spec := by
  intro n
  simp only [A239504]

end A239504

/-! ## A239504.P2971132142354399112

`A239683(n²)`
-/

namespace A239504.P2971132142354399112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239683 (n ^ 2)

end

end A239504.P2971132142354399112

namespace A239504

/-- `A239683(n²)` -/
def P2971132142354399112.Spec : Prop :=
  ∀ n, P2971132142354399112.a n = A239504 n

end A239504

/-!
# A239505: Numbers n such that n^9+9 and n^9-9 are prime.

The programs for A239505, there is no canonical definition to state claims against.
-/

/-! ## A239505.P6391753170912581799

`∩[A239346(n+1), A239417(n+1)]`
-/

namespace A239505.P6391753170912581799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239505.P6391753170912581799

/-!
# A239507: The Lambda word generated by E-1 (A091131).

The programs for A239507, there is no canonical definition to state claims against.
-/

/-! ## A239507.P1308183178298936650

`A216448(n)-A059841(A199523(n+1))`
-/

namespace A239507.P1308183178298936650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216448 n - A059841 (A199523 (n + 1)).toNat

end

end A239507.P1308183178298936650

/-! ## A239507.P11722938789872388725

`A216763(n)-A059841(A199523(n+1))`
-/

namespace A239507.P11722938789872388725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216763 n - A059841 (A199523 (n + 1)).toNat

end

end A239507.P11722938789872388725

/-! ## A239507.P11156839201473395034

`A216448(n)-A000035(A035042(n))`
-/

namespace A239507.P11156839201473395034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216448 n - A000035 (A035042 n).toNat

end

end A239507.P11156839201473395034

/-! ## A239507.P5969046256758220917

`A037831(A117453(n+1))`
-/

namespace A239507.P5969046256758220917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (A117453 (n + 1)).toNat

end

end A239507.P5969046256758220917

/-! ## A239507.P6966633387168246785

`A001221(A130351(n)+A087803(n+1))`
-/

namespace A239507.P6966633387168246785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A130351 n + A087803 (n + 1)).toNat

end

end A239507.P6966633387168246785

/-!
# A239508: Number of partitions of n into nonprime squarefree numbers, cf. A000469.

The programs for A239508, there is no canonical definition to state claims against.
-/

/-! ## A239508.P10263775211900012482

`A048766(or(A017912(n), A094587(n)))`
-/

namespace A239508.P10263775211900012482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lor (A017912 n) (A094587 n)).toNat

end

end A239508.P10263775211900012482

/-! ## A239508.P670586572983798912

`A260999(∑[A321665(n)]²)`
-/

namespace A239508.P670586572983798912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A239508.P670586572983798912

/-! ## A239508.P7930696494681852587

`A160755(A043320(∑[A321665(n)]))`
-/

namespace A239508.P7930696494681852587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A043320 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A239508.P7930696494681852587

/-! ## A239508.P15480399110363531552

`∑[A321665(n)/A321649(A321625(n))]`
-/

namespace A239508.P15480399110363531552
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321665 n : ℚ) / (A321649 (A321625 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239508.P15480399110363531552

/-! ## A239508.P3940414124659216999

`A097992(eq[A007922(n+1), A195099(n+1)])`
-/

namespace A239508.P3940414124659216999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A239508.P3940414124659216999

/-!
# A239509: Number of partitions of n into distinct nonprime squarefree numbers, cf. A000469.

The programs for A239509, there is no canonical definition to state claims against.
-/

/-! ## A239509.P13672818732960517928

`and(A026794(n+1), A089309(A018146(n)))`
-/

namespace A239509.P13672818732960517928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026794 (n + 1)) (A089309 (A018146 n).toNat)

end

end A239509.P13672818732960517928

/-! ## A239509.P15093935713953914203

`and(A318280(n+1), A336137(A247935(n)))`
-/

namespace A239509.P15093935713953914203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A318280 (n + 1)) (A336137 (A247935 n).toNat)

end

end A239509.P15093935713953914203

/-! ## A239509.P3932408276813358969

`A052344(p?[A098552(A131923(n))])`
-/

namespace A239509.P3932408276813358969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098552 (A131923 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A239509.P3932408276813358969

/-! ## A239509.P6305972182228580357

`A268643(or(A000720(n+1), A154779(n+1)))`
-/

namespace A239509.P6305972182228580357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (Int.lor (A000720 (n + 1)) (A154779 (n + 1))).toNat

end

end A239509.P6305972182228580357

/-!
# A239510: Number of partitions p of n such that if h = min(p), then h is an (h,0)-separator of p; see Comments.

The programs for A239510, there is no canonical definition to state claims against.
-/

/-! ## A239510.P11339944503469764633

`A026811(A187829(n+1))+A025431(n)`
-/

namespace A239510.P11339944503469764633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 (A187829 (n + 1)).toNat + A025431 n

end

end A239510.P11339944503469764633

/-! ## A239510.P1405136270492054411

`A088434(2*n+1)+A026811(A187829(n+1))`
-/

namespace A239510.P1405136270492054411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (2 * n + 1) + A026811 (A187829 (n + 1)).toNat

end

end A239510.P1405136270492054411

/-! ## A239510.P17143329966233814231

`∑[A219199(2*n+3)%A128944(n+1)]`
-/

namespace A239510.P17143329966233814231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219199 (2 * n + 3 + 28)) (A128944 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239510.P17143329966233814231

/-!
# A239511: Number of partitions p of n such that if h = 2*min(p), then h is an (h,0)-separator of p; see Comments.

The programs for A239511, there is no canonical definition to state claims against.
-/

/-! ## A239511.P10073675538686430389

`A161358(A237834(n+1)+A133083(n+1))`
-/

namespace A239511.P10073675538686430389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161358 (A237834 (n + 1) + A133083 (n + 1)).toNat

end

end A239511.P10073675538686430389

/-! ## A239511.P7780651959814363228

`A319759(A147987(n+1))+A000607(n)`
-/

namespace A239511.P7780651959814363228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319759 (A147987 (n + 1)).toNat + A000607 n

end

end A239511.P7780651959814363228

/-! ## A239511.P12833321400155370262

`A358024(lt[A130305(2*(n+1)), A360599(3*n+5)])`
-/

namespace A239511.P12833321400155370262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130305 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360599 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358024 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239511.P12833321400155370262

/-!
# A239512: Irregular triangular array read by rows: row n gives a list of the partitions of the Lucas numbers.

The programs for A239512, there is no canonical definition to state claims against.
-/

/-! ## A239512.P13312955647332504059

`A080577(lt[A325690(n), A007091(n)])`
-/

namespace A239512.P13312955647332504059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325690 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A239512.P13312955647332504059

/-! ## A239512.P12341105445539588670

`A330370(record[A078898(A316502(n+1))])`
-/

namespace A239512.P12341105445539588670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A316502 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239512.P12341105445539588670

/-! ## A239512.P156465605942850882

`A047966(A036037(n+1)%A357175(2*(n+1)))`
-/

namespace A239512.P156465605942850882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (Int.tmod (A036037 (n + 1)) (A357175 (2 * (n + 1)))).toNat

end

end A239512.P156465605942850882

/-!
# A239513: Number of partitions p of n such that if h = (number of parts of p), then h is an (h,0)-separator of p; see Comments.

The programs for A239513, there is no canonical definition to state claims against.
-/

/-! ## A239513.P14254869715555488237

`A239518(n+1)-(A239500(n+1)+A239499(n+1))`
-/

namespace A239513.P14254869715555488237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239518 (n + 1) - (A239500 (n + 1) + A239499 (n + 1))

end

end A239513.P14254869715555488237

/-!
# A239515: Number of partitions of n that are separable by the least part; see Comments.

The programs for A239515, there is no canonical definition to state claims against.
-/

/-! ## A239515.P18366615119652338299

`A371625(A069916(n))`
-/

namespace A239515.P18366615119652338299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371625 (A069916 n).toNat

end

end A239515.P18366615119652338299

/-! ## A239515.P9624981442880666110

`A332283(n)-A237271(A005176(n))`
-/

namespace A239515.P9624981442880666110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332283 n - A237271 (A005176 n).toNat

end

end A239515.P9624981442880666110

/-! ## A239515.P789194924869508255

`A347549(n)-A050873(A215329(n))`
-/

namespace A239515.P789194924869508255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347549 (n + 10) - A050873 (A215329 n).toNat

end

end A239515.P789194924869508255

/-! ## A239515.P12391715414863472050

`A001935(n)-A101264(A154836(n+1))`
-/

namespace A239515.P12391715414863472050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n - A101264 (A154836 (n + 1)).toNat

end

end A239515.P12391715414863472050

/-! ## A239515.P2877144836010141098

`A001935(n)-A075437(A212874(n+1))`
-/

namespace A239515.P2877144836010141098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 n - A075437 (A212874 (n + 1)).toNat

end

end A239515.P2877144836010141098

/-!
# A239517: Number of partitions of n that are separable by the greatest part; see Comments.

The programs for A239517, there is no canonical definition to state claims against.
-/

/-! ## A239517.P15000507679571326342

`A145807(n+1)+A003056(A182699(n))`
-/

namespace A239517.P15000507679571326342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145807 (n + 1) + A003056 (A182699 n).toNat

end

end A239517.P15000507679571326342

/-! ## A239517.P1053957251268445783

`A121900(A212520(n))`
-/

namespace A239517.P1053957251268445783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A212520 n).toNat

end

end A239517.P1053957251268445783

/-! ## A239517.P13993422270848406375

`A057366(∑[A187829(n+1)]-n)`
-/

namespace A239517.P13993422270848406375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057366 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A239517.P13993422270848406375

/-! ## A239517.P15411341481526192073

`A213259(∑[∑[A050030(n+1)²]])`
-/

namespace A239517.P15411341481526192073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050030 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213259 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239517.P15411341481526192073

/-! ## A239517.P7509391070187462112

`A057366(∑[A008908(ceil(2^(n-1)))])`
-/

namespace A239517.P7509391070187462112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057366 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239517.P7509391070187462112

/-!
# A239518: Number of partitions p of n that are separable by the number of parts of p; see Comments.

The programs for A239518, there is no canonical definition to state claims against.
-/

/-! ## A239518.P16516714191493219792

`A239499(n+1)+A239513(n+1)+A239500(n+1)`
-/

namespace A239518.P16516714191493219792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239499 (n + 1) + (A239513 (n + 1) + A239500 (n + 1))

end

end A239518.P16516714191493219792

/-! ## A239518.P6995713455044132867

`A062610(A095320(n+1)-A195673(A322131(n)))`
-/

namespace A239518.P6995713455044132867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (A095320 (n + 1) - A195673 (A322131 n).toNat).toNat

end

end A239518.P6995713455044132867

/-!
# A239519: a(n) = n + (n-1)*(n-2) + (n-3)*(n-4)*(n-5) + (n-6)*(n-7)*(n-8)*(n-9) + ... + ...*1.

The programs for A239519, there is no canonical definition to state claims against.
-/

/-! ## A239519.P11998958213765654867

`A003056(A003946(n))-A032020(n)`
-/

namespace A239519.P11998958213765654867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A003946 n).toNat - A032020 n

end

end A239519.P11998958213765654867

/-! ## A239519.P15353629930229004138

`A003056(A166468(n))-A032020(n)`
-/

namespace A239519.P15353629930229004138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A166468 n).toNat - A032020 n

end

end A239519.P15353629930229004138

/-! ## A239519.P10740750712555437597

`A002262(n)+∑[A217615(n)%A302174(n)]`
-/

namespace A239519.P10740750712555437597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217615 n) (A302174 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239519.P10740750712555437597

/-! ## A239519.P16832335134448070286

`A003056(A095341(n+1)*A118168(n))+A002262(n)`
-/

namespace A239519.P16832335134448070286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A095341 (n + 1) * A118168 n).toNat + A002262 n

end

end A239519.P16832335134448070286

/-!
# A239520: Prime powers (A025475) such that the distance to the nearest prime power is a triangular number (A000217).

The programs for A239520, there is no canonical definition to state claims against.
-/

/-! ## A239520.P17828539882600879914

`A104571(A106189(n+1))`
-/

namespace A239520.P17828539882600879914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104571 (A106189 (n + 1)).toNat

end

end A239520.P17828539882600879914

/-! ## A239520.P4290171959631323116

`A001694(∑[A229755(n+1)!])`
-/

namespace A239520.P4290171959631323116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A229755 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239520.P4290171959631323116

/-!
# A239522: Prime powers (A025475) such that the distance to the nearest prime power is a prime.

The programs for A239522, there is no canonical definition to state claims against.
-/

/-! ## A239522.P1531716855048886579

`A001597(record[A367579(3*(n+1))])`
-/

namespace A239522.P1531716855048886579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367579 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A239522.P1531716855048886579

/-! ## A239522.P12998526029879073033

`record[A129593(n)%A129646(n+5)]`
-/

namespace A239522.P12998526029879073033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129593 n) (A129646 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239522.P12998526029879073033

/-! ## A239522.P16037716904754584317

`record[A129593(∑[A129560(3*n+5)])]`
-/

namespace A239522.P16037716904754584317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129560 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129593 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239522.P16037716904754584317

/-!
# A239523: Prime powers (A025475) such that the distances to the two nearest prime powers are primes.

The programs for A239523, there is no canonical definition to state claims against.
-/

/-! ## A239523.P3023015947264480760

`A020666(A027612(n+2))^comp[2*(n+1)]`
-/

namespace A239523.P3023015947264480760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020666 (A027612 (n + 2)).toNat ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A239523.P3023015947264480760

/-! ## A239523.P5366413830420773627

`A020639(A018009(2*n))^A073040(n+1)`
-/

namespace A239523.P5366413830420773627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A018009 (2 * n)).toNat : ℚ) ^ (A073040 (n + 1) : ℤ)

end

end A239523.P5366413830420773627

/-!
# A239526: For 0<=n<=100, a(n) is the number of positive responses x such that x/N rounds to n%, minimized over sample size N.

The programs for A239526, there is no canonical definition to state claims against.
-/

/-! ## A239526.P18029533050038593773

`gcd(A000203(A286316(3*(n+1))), A286334(n))`
-/

namespace A239526.P18029533050038593773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A286316 (3 * (n + 1))).toNat) (A286334 n)

end

end A239526.P18029533050038593773

/-! ## A239526.P13880485259975346597

`gcd(A138540(n), A286334(n))`
-/

namespace A239526.P13880485259975346597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138540 n) (A286334 n)

end

end A239526.P13880485259975346597

/-!
# A239527: Numbers k^2 + (k+1)^2 that can be expressed as a sum of two squares in exactly one other way.

The programs for A239527, the canonical program `A239527.P16129171376705683773` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239527 has offset 1).

The definition of A239527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239527.P16129171376705683773

`∩[A025303(n+1), A001844(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A239527

/-- `∩[A025303(n+1), A001844(n)]` -/
def P16129171376705683773.Spec : Prop :=
  ∀ n, (P16129171376705683773.a n : ℤ) = A239527 (n + 1)

theorem P16129171376705683773.correct : P16129171376705683773.Spec := by
  intro n
  simp only [A239527, Nat.add_sub_cancel]

end A239527

/-! ## A239527.P18229333060698215598

`∩[A025303(n+1), A266723(n)]`
-/

namespace A239527.P18229333060698215598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266723 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239527.P18229333060698215598

namespace A239527

/-- `∩[A025303(n+1), A266723(n)]` -/
def P18229333060698215598.Spec : Prop :=
  ∀ n, (P18229333060698215598.a n : ℤ) = A239527 (n + 1)

end A239527

/-! ## A239527.P9875789461270655129

`∩[A025303(n+1), A099776(n+1)]`
-/

namespace A239527.P9875789461270655129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239527.P9875789461270655129

namespace A239527

/-- `∩[A025303(n+1), A099776(n+1)]` -/
def P9875789461270655129.Spec : Prop :=
  ∀ n, (P9875789461270655129.a n : ℤ) = A239527 (n + 1)

end A239527

/-! ## A239527.P7195161615710790900

`∩[A025303(n+1), A166080(n+1)]`
-/

namespace A239527.P7195161615710790900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239527.P7195161615710790900

namespace A239527

/-- `∩[A025303(n+1), A166080(n+1)]` -/
def P7195161615710790900.Spec : Prop :=
  ∀ n, (P7195161615710790900.a n : ℤ) = A239527 (n + 1)

end A239527

/-! ## A239527.P4212361178629034364

`∩[A025285(n+1), A001844(n)]`
-/

namespace A239527.P4212361178629034364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239527.P4212361178629034364

namespace A239527

/-- `∩[A025285(n+1), A001844(n)]` -/
def P4212361178629034364.Spec : Prop :=
  ∀ n, (P4212361178629034364.a n : ℤ) = A239527 (n + 1)

end A239527

/-! ## A239527.P6273379730405705536

`∩[A025285(n+1), A266723(n)]`
-/

namespace A239527.P6273379730405705536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266723 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239527.P6273379730405705536

namespace A239527

/-- `∩[A025285(n+1), A266723(n)]` -/
def P6273379730405705536.Spec : Prop :=
  ∀ n, (P6273379730405705536.a n : ℤ) = A239527 (n + 1)

end A239527

/-! ## A239527.P8833287231635097089

`∩[A025285(n+1), A099776(n+1)]`
-/

namespace A239527.P8833287231635097089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239527.P8833287231635097089

namespace A239527

/-- `∩[A025285(n+1), A099776(n+1)]` -/
def P8833287231635097089.Spec : Prop :=
  ∀ n, (P8833287231635097089.a n : ℤ) = A239527 (n + 1)

end A239527

/-! ## A239527.P8805764020396107596

`∩[A025285(n+1), A166080(n+1)]`
-/

namespace A239527.P8805764020396107596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A239527.P8805764020396107596

namespace A239527

/-- `∩[A025285(n+1), A166080(n+1)]` -/
def P8805764020396107596.Spec : Prop :=
  ∀ n, (P8805764020396107596.a n : ℤ) = A239527 (n + 1)

end A239527

/-! ## A239527.P9309069384374978926

`filter[A001844(n+1), A369255(#)]`
-/

namespace A239527.P9309069384374978926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369255 (f1 j).toNat = 1) n)

end

end A239527.P9309069384374978926

namespace A239527

/-- `filter[A001844(n+1), A369255(#)]` -/
def P9309069384374978926.Spec : Prop :=
  ∀ n, P9309069384374978926.a n = A239527 (n + 1)

end A239527

/-! ## A239527.P13607869433176155220

`filter[A001844(n+1), A378215(#)]`
-/

namespace A239527.P13607869433176155220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378215 (f1 j).toNat = 1) n)

end

end A239527.P13607869433176155220

namespace A239527

/-- `filter[A001844(n+1), A378215(#)]` -/
def P13607869433176155220.Spec : Prop :=
  ∀ n, P13607869433176155220.a n = A239527 (n + 1)

end A239527

/-!
# A239529: Number of (n+1)X(n+1) 0..2 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A239529, there is no canonical definition to state claims against.
-/

/-! ## A239529.P18156991921587220096

`A239537(∑[4*n]+1)`
-/

namespace A239529.P18156991921587220096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239529.P18156991921587220096

/-! ## A239529.P15744966503189039172

`and(-1, A239537(A001844(n)))`
-/

namespace A239529.P15744966503189039172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A239537 (A001844 n).toNat)

end

end A239529.P15744966503189039172

/-! ## A239529.P15042733763714370558

`record[A239537(A330613(n+1))]`
-/

namespace A239529.P15042733763714370558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239529.P15042733763714370558

/-! ## A239529.P17452356278711844342

`record[A003982(n)*A239537(n+1)]`
-/

namespace A239529.P17452356278711844342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A239537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239529.P17452356278711844342

/-!
# A239530: Number of (n+1) X (1+1) 0..2 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A239530, the canonical program `A239530.P7486890429638590420` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239530 has offset 1).

The definition of A239530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239530.P6841102787527809640

`ogf((1-x)/(1-2x-4x^2+3x^3))`
-/

namespace A239530.P6841102787527809640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -4, 3] n

end

end A239530.P6841102787527809640

namespace A239530

/-- `ogf((1-x)/(1-2x-4x^2+3x^3))` -/
def P6841102787527809640.Spec : Prop :=
  ∀ n, P6841102787527809640.a n = A239530 (n + 1)

end A239530

/-! ## A239530.P7486890429638590420

`2*a(n-1)+4*a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239530

/-- `2*a(n-1)+4*a(n-2)-3*a(n-3)` -/
def P7486890429638590420.Spec : Prop :=
  ∀ n, P7486890429638590420.a n = A239530 (n + 1)

theorem P7486890429638590420.correct : P7486890429638590420.Spec := by
  intro n
  simp only [A239530, Nat.add_sub_cancel]

end A239530

/-! ## A239530.P17785590429496387670

`Δ[3*a(n-1)]+a(n-2)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A239530.P17785590429496387670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (a (n - 2) - a (n - 1))

end

end A239530.P17785590429496387670

namespace A239530

/-- `Δ[3*a(n-1)]+a(n-2)-a(n-1)` -/
def P17785590429496387670.Spec : Prop :=
  ∀ n, P17785590429496387670.a n = A239530 (n + 1)

end A239530

/-! ## A239530.P18078778297610388975

`3^(n+1)-A107361(n+1)`
-/

namespace A239530.P18078778297610388975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A107361 (n + 1)

end

end A239530.P18078778297610388975

namespace A239530

/-- `3^(n+1)-A107361(n+1)` -/
def P18078778297610388975.Spec : Prop :=
  ∀ n, P18078778297610388975.a n = A239530 (n + 1)

end A239530

/-! ## A239530.P13858489478196798409

`A208689(A028310(n))/6`
-/

namespace A239530.P13858489478196798409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208689 (A028310 n).toNat : ℚ) / 6

end

end A239530.P13858489478196798409

namespace A239530

/-- `A208689(A028310(n))/6` -/
def P13858489478196798409.Spec : Prop :=
  ∀ n, P13858489478196798409.a n = (A239530 (n + 1) : ℚ)

end A239530

/-! ## A239530.P9612353216860008725

`sqrt(A239532(n+1)/6)`
-/

namespace A239530.P9612353216860008725
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A239532 (n + 1) : ℚ) / 6 : ℝ)

end

end A239530.P9612353216860008725

namespace A239530

/-- `sqrt(A239532(n+1)/6)` -/
def P9612353216860008725.Spec : Prop :=
  ∀ n, P9612353216860008725.a n = (A239530 (n + 1) : ℝ)

end A239530

/-!
# A239531: Number of (n+1) X (2+1) 0..2 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A239531, there is no canonical definition to state claims against.
-/

/-! ## A239531.P1377220196033131226

`A239537(∑[n+2])`
-/

namespace A239531.P1377220196033131226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239531.P1377220196033131226

/-! ## A239531.P15238165858218936955

`A239537(A000096(n+1))%A010036(n+2)`
-/

namespace A239531.P15238165858218936955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239537 (A000096 (n + 1)).toNat) (A010036 (n + 2))

end

end A239531.P15238165858218936955

/-! ## A239531.P7113068239343909184

`A152851(A239537(n+2))*A239537(A000096(n+1))`
-/

namespace A239531.P7113068239343909184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 (A239537 (n + 2)).toNat * A239537 (A000096 (n + 1)).toNat

end

end A239531.P7113068239343909184

/-!
# A239532: Number of (n+1) X (3+1) 0..2 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A239532, the canonical program `A239532.P15803227667658989209` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239532 has offset 1).

The definition of A239532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239532.P15803227667658989209

`6*A239530(n+1)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A239532

/-- `6*A239530(n+1)²` -/
def P15803227667658989209.Spec : Prop :=
  ∀ n, P15803227667658989209.a n = A239532 (n + 1)

theorem P15803227667658989209.correct : P15803227667658989209.Spec := by
  intro n
  simp only [A239532, Nat.add_sub_cancel]

end A239532

/-! ## A239532.P1832468907847852162

`A208689(A028310(n))*A239530(n+1)`
-/

namespace A239532.P1832468907847852162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208689 (A028310 n).toNat * A239530 (n + 1)

end

end A239532.P1832468907847852162

namespace A239532

/-- `A208689(A028310(n))*A239530(n+1)` -/
def P1832468907847852162.Spec : Prop :=
  ∀ n, P1832468907847852162.a n = A239532 (n + 1)

end A239532

/-! ## A239532.P12992280101371032042

`A208689(A000007(n)+n)*A239530(n+1)`
-/

namespace A239532.P12992280101371032042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208689 (A000007 n + (n : ℤ)).toNat * A239530 (n + 1)

end

end A239532.P12992280101371032042

namespace A239532

/-- `A208689(A000007(n)+n)*A239530(n+1)` -/
def P12992280101371032042.Spec : Prop :=
  ∀ n, P12992280101371032042.a n = A239532 (n + 1)

end A239532

/-! ## A239532.P11598504961655176489

`A208689(A292936(2*(n+1))+n)*A239530(n+1)`
-/

namespace A239532.P11598504961655176489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208689 (A292936 (2 * (n + 1)) + (n : ℤ)).toNat * A239530 (n + 1)

end

end A239532.P11598504961655176489

namespace A239532

/-- `A208689(A292936(2*(n+1))+n)*A239530(n+1)` -/
def P11598504961655176489.Spec : Prop :=
  ∀ n, P11598504961655176489.a n = A239532 (n + 1)

end A239532

/-! ## A239532.P1078753230397569884

`A208689(A028310(n))²/6`
-/

namespace A239532.P1078753230397569884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208689 (A028310 n).toNat ^ 2 : ℚ) / 6

end

end A239532.P1078753230397569884

namespace A239532

/-- `A208689(A028310(n))²/6` -/
def P1078753230397569884.Spec : Prop :=
  ∀ n, P1078753230397569884.a n = (A239532 (n + 1) : ℚ)

end A239532

/-!
# A239533: Number of (n+1)X(4+1) 0..2 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A239533, there is no canonical definition to state claims against.
-/

/-! ## A239533.P6246306607735953853

`A239537(A141214(n+1))`
-/

namespace A239533.P6246306607735953853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A141214 (n + 1)).toNat

end

end A239533.P6246306607735953853

/-! ## A239533.P12941253755974601849

`A239537(A056000(n)+7)`
-/

namespace A239533.P12941253755974601849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A056000 n + 7).toNat

end

end A239533.P12941253755974601849

/-! ## A239533.P9390484682908471232

`A239537(eq[2, A054123(n)])`
-/

namespace A239533.P9390484682908471232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239533.P9390484682908471232

/-! ## A239533.P394796202060313508

`A239537(Δ[A034857(n+1)])`
-/

namespace A239533.P394796202060313508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (f1 (n + 1) - f1 n).toNat

end

end A239533.P394796202060313508

/-! ## A239533.P177161807015686772

`A239537(A052905(n+1)+2)`
-/

namespace A239533.P177161807015686772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A052905 (n + 1) + 2).toNat

end

end A239533.P177161807015686772

/-!
# A239534: Number of (n+1)X(5+1) 0..2 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A239534, there is no canonical definition to state claims against.
-/

/-! ## A239534.P10136213094383862878

`A239537(Δ[A264443(n)])`
-/

namespace A239534.P10136213094383862878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (f1 (n + 1) - f1 n).toNat

end

end A239534.P10136213094383862878

/-! ## A239534.P2492870701409456677

`A239537(eq[4, A193592(n)])`
-/

namespace A239534.P2492870701409456677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239534.P2492870701409456677

/-! ## A239534.P11063679163045958305

`A239537(Δ[A023545(n+1)])`
-/

namespace A239534.P11063679163045958305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (f1 (n + 1) - f1 n).toNat

end

end A239534.P11063679163045958305

/-! ## A239534.P4111933112214494941

`A239537(eq[6, A185782(n+1)])`
-/

namespace A239534.P4111933112214494941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239534.P4111933112214494941

/-! ## A239534.P15842916134056332066

`A239537(eq[8, A057728(n+1)])`
-/

namespace A239534.P15842916134056332066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239534.P15842916134056332066

/-!
# A239535: Number of (n+1)X(6+1) 0..2 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A239535, there is no canonical definition to state claims against.
-/

/-! ## A239535.P1945676950463413677

`A239537(A052905(n+3))`
-/

namespace A239535.P1945676950463413677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A052905 (n + 3)).toNat

end

end A239535.P1945676950463413677

/-! ## A239535.P13596739528055779932

`A239537(eq[3, A219347(n)])`
-/

namespace A239535.P13596739528055779932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239535.P13596739528055779932

/-! ## A239535.P7183228070029386100

`A239537(eq[5, A193592(n)])`
-/

namespace A239535.P7183228070029386100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239535.P7183228070029386100

/-! ## A239535.P16604405962232099982

`A239537(A046691(n+4)-1)`
-/

namespace A239535.P16604405962232099982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A046691 (n + 4) - 1).toNat

end

end A239535.P16604405962232099982

/-! ## A239535.P12420318825709363327

`A239537(A000217(n+6)-5)`
-/

namespace A239535.P12420318825709363327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A000217 (n + 6) - 5).toNat

end

end A239535.P12420318825709363327

/-!
# A239536: Number of (n+1)X(7+1) 0..2 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A239536, there is no canonical definition to state claims against.
-/

/-! ## A239536.P12741599812391743031

`A239537(A055999(n+4))`
-/

namespace A239536.P12741599812391743031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A055999 (n + 4)).toNat

end

end A239536.P12741599812391743031

/-! ## A239536.P15877311930694024872

`A239537(eq[4, A219347(n)])`
-/

namespace A239536.P15877311930694024872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239536.P15877311930694024872

/-! ## A239536.P7051713607395804

`A239537(eq[6, A193592(n)])`
-/

namespace A239536.P7051713607395804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239536.P7051713607395804

/-! ## A239536.P15842784061202286978

`A239537(A052905(n+4)-1)`
-/

namespace A239536.P15842784061202286978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A052905 (n + 4) - 1).toNat

end

end A239536.P15842784061202286978

/-! ## A239536.P6282753697769669232

`A239537(A000124(n+7)-7)`
-/

namespace A239536.P6282753697769669232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A000124 (n + 7) - 7).toNat

end

end A239536.P6282753697769669232

/-!
# A239538: Number of (4+1)X(n+1) 0..2 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A239538, there is no canonical definition to state claims against.
-/

/-! ## A239538.P2763955709778798027

`A239537(A141214(n)+7)`
-/

namespace A239538.P2763955709778798027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A141214 n + 7).toNat

end

end A239538.P2763955709778798027

/-! ## A239538.P16838492677196247026

`A239537(A052905(n)+9)`
-/

namespace A239538.P16838492677196247026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A052905 n + 9).toNat

end

end A239538.P16838492677196247026

/-! ## A239538.P10476539918055242712

`A239537(A055999(n)+10)`
-/

namespace A239538.P10476539918055242712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A055999 n + 10).toNat

end

end A239538.P10476539918055242712

/-! ## A239538.P7757822399668668140

`A239537(A167614(n+2)+1)`
-/

namespace A239538.P7757822399668668140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A167614 (n + 2) + 1).toNat

end

end A239538.P7757822399668668140

/-! ## A239538.P1573074878679752299

`A239537(A166136(n+2)-2)`
-/

namespace A239538.P1573074878679752299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A166136 (n + 2) - 2).toNat

end

end A239538.P1573074878679752299

/-!
# A239539: Number of (5+1)X(n+1) 0..2 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A239539, there is no canonical definition to state claims against.
-/

/-! ## A239539.P1934274874644084239

`A239537(A167499(n+3))`
-/

namespace A239539.P1934274874644084239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A167499 (n + 3)).toNat

end

end A239539.P1934274874644084239

/-! ## A239539.P12357023279254364228

`A239537(A155212(n)+13)`
-/

namespace A239539.P12357023279254364228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A155212 n + 13).toNat

end

end A239539.P12357023279254364228

/-! ## A239539.P13898689690046932815

`A239537(A056000(n)+15)`
-/

namespace A239539.P13898689690046932815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A056000 n + 15).toNat

end

end A239539.P13898689690046932815

/-! ## A239539.P18396931340381749963

`A239537(A052905(n+1)+10)`
-/

namespace A239539.P18396931340381749963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A052905 (n + 1) + 10).toNat

end

end A239539.P18396931340381749963

/-! ## A239539.P15510616903772317895

`A239537(eq[6, A131818(n+1)])`
-/

namespace A239539.P15510616903772317895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239539.P15510616903772317895

/-!
# A239540: Number of (6+1)X(n+1) 0..2 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A239540, there is no canonical definition to state claims against.
-/

/-! ## A239540.P497360778494151475

`A239537(A167499(n+4)+1)`
-/

namespace A239540.P497360778494151475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A167499 (n + 4) + 1).toNat

end

end A239540.P497360778494151475

/-! ## A239540.P8816789935650586433

`A239537(A167614(n+4)+3)`
-/

namespace A239540.P8816789935650586433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A167614 (n + 4) + 3).toNat

end

end A239540.P8816789935650586433

/-! ## A239540.P7913078841622181104

`A239537(eq[7, A131818(n+1)])`
-/

namespace A239540.P7913078841622181104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239540.P7913078841622181104

/-! ## A239540.P17734723842789915777

`A239537(A000096(n+5)-(n-1))`
-/

namespace A239540.P17734723842789915777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A239540.P17734723842789915777

/-! ## A239540.P6615594265301658150

`A239537(A152851(n)+A000096(n+4)+6)`
-/

namespace A239540.P6615594265301658150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A152851 n + (A000096 (n + 4) + 6)).toNat

end

end A239540.P6615594265301658150

/-!
# A239541: Number of (7+1)X(n+1) 0..2 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..2 introduced in row major order.

The programs for A239541, there is no canonical definition to state claims against.
-/

/-! ## A239541.P13204450767312596280

`A239537(A056119(n)+28)`
-/

namespace A239541.P13204450767312596280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A056119 n + 28).toNat

end

end A239541.P13204450767312596280

/-! ## A239541.P9097825326045890103

`A239537(eq[11, A066657(n)])`
-/

namespace A239541.P9097825326045890103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239541.P9097825326045890103

/-! ## A239541.P8265337984602626853

`A239537(A166136(n+5)+1)`
-/

namespace A239541.P8265337984602626853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A166136 (n + 5) + 1).toNat

end

end A239541.P8265337984602626853

/-! ## A239541.P13591776987518331178

`A239537(A167614(n+5)+4)`
-/

namespace A239541.P13591776987518331178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (A167614 (n + 5) + 4).toNat

end

end A239541.P13591776987518331178

/-! ## A239541.P13613352089625401105

`A239537(eq[8, A131818(n+1)])`
-/

namespace A239541.P13613352089625401105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239541.P13613352089625401105

/-!
# A239542: a(n) is the minimum number greater than a(n-1) such that the concatenation a(1) U a(2) U ... U a(n) is a Niven number, starting with a(1)=1.

The programs for A239542, there is no canonical definition to state claims against.
-/

/-! ## A239542.P9291740027166659176

`eq[A010882(A324564(n)), A036989(n)]`
-/

namespace A239542.P9291740027166659176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A324564 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A239542.P9291740027166659176

/-!
# A239544: (Round(c^prime(n)) - 1)/prime(n), where c is the tetranacci constant (A086088).

The programs for A239544, there is no canonical definition to state claims against.
-/

/-! ## A239544.P13538229057208739028

`A280218(A115232(n+2))-1`
-/

namespace A239544.P13538229057208739028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280218 (A115232 (n + 2)).toNat - 1

end

end A239544.P13538229057208739028

/-! ## A239544.P4458275352887233105

`A280218(A000040(n+4))-1`
-/

namespace A239544.P4458275352887233105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280218 (A000040 (n + 4)).toNat - 1

end

end A239544.P4458275352887233105

/-! ## A239544.P17128480441743859305

`A280218(A008578(n+5))-1`
-/

namespace A239544.P17128480441743859305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280218 (A008578 (n + 5)).toNat - 1

end

end A239544.P17128480441743859305

/-! ## A239544.P10807525329162904524

`floor(A001648(A065091(n+3))/A065091(n+3))`
-/

namespace A239544.P10807525329162904524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001648 (A065091 (n + 3)).toNat : ℚ) / (A065091 (n + 3) : ℚ)⌋

end

end A239544.P10807525329162904524

/-!
# A239546: Sum of the prime factors of n, where n runs through perfect numbers.

The programs for A239546, there is no canonical definition to state claims against.
-/

/-! ## A239546.P447100420756657014

`A000668(n+1)+2`
-/

namespace A239546.P447100420756657014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1) + 2

end

end A239546.P447100420756657014

/-! ## A239546.P1767291924572826438

`A343733(n+2)+2`
-/

namespace A239546.P1767291924572826438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343733 (n + 2) + 2

end

end A239546.P1767291924572826438

/-! ## A239546.P658007517179669711

`A379724(n+1)+3`
-/

namespace A239546.P658007517179669711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379724 (n + 1) + 3

end

end A239546.P658007517179669711

/-! ## A239546.P12397024641336908857

`sqrt(A330824(n+1))+1`
-/

namespace A239546.P12397024641336908857
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A330824 (n + 1) : ℝ) + 1

end

end A239546.P12397024641336908857

/-! ## A239546.P5536383233016887889

`sqrt(A133049(n+1))+2`
-/

namespace A239546.P5536383233016887889
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133049 (n + 1) : ℝ) + 2

end

end A239546.P5536383233016887889

/-!
# A239548: Primes p such that gcd(Lucas(p), Mersenne(p)) > 1.

The programs for A239548, there is no canonical definition to state claims against.
-/

/-! ## A239548.P2629729507433490475

`A349748(n+1)+A228723(A327511(2*n+1))`
-/

namespace A239548.P2629729507433490475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349748 (n + 1) + A228723 (A327511 (2 * n + 1)).toNat

end

end A239548.P2629729507433490475

/-!
# A239549: Expansion of x/(1-8*x-12*x^2).

The programs for A239549, the canonical program `A239549.P12215476222306593603` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239549 has offset 0).

The definition of A239549 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-8x-12x^2))` (program `A239549.P12215476222306593603`, by `A239549.P12215476222306593603.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239549.P12215476222306593603

`ogf(x/(1-8x-12x^2))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239549

/-- `ogf(x/(1-8x-12x^2))` -/
def P12215476222306593603.Spec : Prop :=
  ∀ n, P12215476222306593603.a n = A239549 n

theorem P12215476222306593603.correct : P12215476222306593603.Spec := by
  intro n
  simp only [A239549]

end A239549

/-! ## A239549.P5788377216110335242

`8*a(n-1)+12*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A239549.P5788377216110335242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  8 * a (n - 1) + 12 * a (n - 2)

end

end A239549.P5788377216110335242

namespace A239549

/-- `8*a(n-1)+12*a(n-2)` -/
def P5788377216110335242.Spec : Prop :=
  ∀ n, (P5788377216110335242.a n : ℤ) = A239549 n

end A239549

/-! ## A239549.P16136655412940823091

`2^(n-1)*A015530(n)`
-/

namespace A239549.P16136655412940823091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A015530 n : ℚ)

end

end A239549.P16136655412940823091

namespace A239549

/-- `2^(n-1)*A015530(n)` -/
def P16136655412940823091.Spec : Prop :=
  ∀ n, P16136655412940823091.a n = (A239549 n : ℚ)

end A239549

/-! ## A239549.P8637187970040905154

`1/(4*sqrt(7))*((4+2*sqrt(7))^n-(4-2*sqrt(7))^n)`
-/

namespace A239549.P8637187970040905154
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / (4 * Real.sqrt (7 : ℝ)) * ((4 + 2 * Real.sqrt (7 : ℝ)) ^ n - (4 - 2 * Real.sqrt (7 : ℝ)) ^ n)

end

end A239549.P8637187970040905154

namespace A239549

/-- `1/(4*sqrt(7))*((4+2*sqrt(7))^n-(4-2*sqrt(7))^n)` -/
def P8637187970040905154.Spec : Prop :=
  ∀ n, P8637187970040905154.a n = (A239549 n : ℝ)

end A239549

/-! ## A239549.P13489263406394837766

`(A122558(n)-A108851(n))*2^n/2`
-/

namespace A239549.P13489263406394837766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A122558 n - A108851 n) * (2 ^ n : ℤ) : ℚ) / 2

end

end A239549.P13489263406394837766

namespace A239549

/-- `(A122558(n)-A108851(n))*2^n/2` -/
def P13489263406394837766.Spec : Prop :=
  ∀ n, P13489263406394837766.a n = (A239549 n : ℚ)

end A239549

/-! ## A239549.P6757420314016165517

`(A108851(n+1)-2*A126473(n))*2^n/2`
-/

namespace A239549.P6757420314016165517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A108851 (n + 1) - 2 * A126473 n) * (2 ^ n : ℤ) : ℚ) / 2

end

end A239549.P6757420314016165517

namespace A239549

/-- `(A108851(n+1)-2*A126473(n))*2^n/2` -/
def P6757420314016165517.Spec : Prop :=
  ∀ n, P6757420314016165517.a n = (A239549 n : ℚ)

end A239549

/-!
# A239550: Number A(n,k) of compositions of n such that the first part is 1 and the second differences of the parts are in {-k,...,k}; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A239550, there is no canonical definition to state claims against.
-/

/-! ## A239550.P15586140230730756536

`A055642(A057506(n)*A171871(n))`
-/

namespace A239550.P15586140230730756536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A057506 n * A171871 n).toNat

end

end A239550.P15586140230730756536

/-! ## A239550.P8375494338773192294

`A234287(A151824(n)+1)`
-/

namespace A239550.P8375494338773192294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234287 (A151824 n + 1).toNat

end

end A239550.P8375494338773192294

/-! ## A239550.P4476365303968206278

`A055642(lcm(A000196(2*n), A034374(n+1)))`
-/

namespace A239550.P4476365303968206278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.lcm (A000196 (2 * n)) (A034374 (n + 1)))

end

end A239550.P4476365303968206278

/-! ## A239550.P2453647837847852660

`A043556(floor(A034374(n+1)/A064547(n+2))+1)`
-/

namespace A239550.P2453647837847852660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (⌊(A034374 (n + 1) : ℚ) / (A064547 (n + 2) : ℚ)⌋ + 1).toNat

end

end A239550.P2453647837847852660

/-! ## A239550.P7162038004478132477

`A055642(C(A059268(n), A284266(n)))`
-/

namespace A239550.P7162038004478132477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Nat.choose (A059268 n).toNat (A284266 n).toNat)

end

end A239550.P7162038004478132477

/-!
# A239551: Number of compositions of n such that the first part is 1 and the second differences of the parts are in {-1,0,1}.

The programs for A239551, there is no canonical definition to state claims against.
-/

/-! ## A239551.P15362120254082003583

`A239550(∑[n+2]-1)`
-/

namespace A239551.P15362120254082003583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A239551.P15362120254082003583

/-! ## A239551.P17861510108768512285

`gcd(A000038(n), A239550(∑[n+1]+n))`
-/

namespace A239551.P17861510108768512285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A239550 (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A239551.P17861510108768512285

/-! ## A239551.P2143878967081490451

`lcm(A210245(n), A239550(∑[n+1]+n))`
-/

namespace A239551.P2143878967081490451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A210245 n) (A239550 (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A239551.P2143878967081490451

/-! ## A239551.P316182616271422321

`or(A000007(n), A239550(∑[n+1]+n))`
-/

namespace A239551.P316182616271422321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A239550 (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A239551.P316182616271422321

/-! ## A239551.P6109638977372707832

`A239550(∑[n+1]+n)^A239550(∑[n])`
-/

namespace A239551.P6109638977372707832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239550 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) ^ (A239550 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A239551.P6109638977372707832

/-! ## A239551.P14247560999265897656

`A239550(∑[n+1]+n)+A000038(n+1)`
-/

namespace A239551.P14247560999265897656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (∑ j ∈ Finset.range (n + 1), f1 j + n) + A000038 (n + 1)

end

end A239551.P14247560999265897656

/-! ## A239551.P14159942621532329250

`A239550(∑[n+1]+n)%A000045(n+6)`
-/

namespace A239551.P14159942621532329250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239550 (∑ j ∈ Finset.range (n + 1), f1 j + n)) (A000045 (n + 6))

end

end A239551.P14159942621532329250

/-! ## A239551.P583135056962577799

`A007318(A027760(2*n+1))*A239550(∑[n+1]+n)`
-/

namespace A239551.P583135056962577799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A027760 (2 * n + 1)).toNat * A239550 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A239551.P583135056962577799

/-! ## A239551.P17895229984880978487

`and(A001348(n+1), A239550(A034856(n+1)))`
-/

namespace A239551.P17895229984880978487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001348 (n + 1)) (A239550 (A034856 (n + 1)).toNat)

end

end A239551.P17895229984880978487

/-!
# A239552: Number of compositions of n such that the first part is 1 and the second differences of the parts are in {-2,...,2}.

The programs for A239552, there is no canonical definition to state claims against.
-/

/-! ## A239552.P3972873484016541625

`A239550(∑[n+3])`
-/

namespace A239552.P3972873484016541625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239552.P3972873484016541625

/-! ## A239552.P16961047490289997680

`or(char[1], A239550(A055998(n+1)))`
-/

namespace A239552.P16961047490289997680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A239550 (A055998 (n + 1)).toNat)

end

end A239552.P16961047490289997680

/-! ## A239552.P15478756218832895201

`A239550(A055998(n+1))^A019429(2*n)`
-/

namespace A239552.P15478756218832895201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239550 (A055998 (n + 1)).toNat : ℚ) ^ (A019429 (2 * n) : ℤ)

end

end A239552.P15478756218832895201

/-! ## A239552.P3473318111072235019

`A239550(A055998(n+1))^A019431(2*n)`
-/

namespace A239552.P3473318111072235019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239550 (A055998 (n + 1)).toNat : ℚ) ^ (A019431 (2 * n) : ℤ)

end

end A239552.P3473318111072235019

/-! ## A239552.P13491606807195748594

`A239550(A055998(n+1))%A239557(n+3)`
-/

namespace A239552.P13491606807195748594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239550 (A055998 (n + 1)).toNat) (A239557 (n + 3))

end

end A239552.P13491606807195748594

/-! ## A239552.P4472985746874213428

`A239550(A055998(n+1))*A292375(A120880(n))`
-/

namespace A239552.P4472985746874213428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A055998 (n + 1)).toNat * A292375 (A120880 n).toNat

end

end A239552.P4472985746874213428

/-! ## A239552.P16301517849171892729

`A014963(A014574(n+2))*A239550(A055998(n+1))`
-/

namespace A239552.P16301517849171892729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A014574 (n + 2)).toNat * A239550 (A055998 (n + 1)).toNat

end

end A239552.P16301517849171892729

/-!
# A239553: Number of compositions of n such that the first part is 1 and the second differences of the parts are in {-3,...,3}.

The programs for A239553, there is no canonical definition to state claims against.
-/

/-! ## A239553.P11123010700416349873

`A239550(∑[n+4]+2)`
-/

namespace A239553.P11123010700416349873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A239553.P11123010700416349873

/-! ## A239553.P6891362148011091086

`or(char[1], A239550(A046691(n+2)))`
-/

namespace A239553.P6891362148011091086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A239550 (A046691 (n + 2)).toNat)

end

end A239553.P6891362148011091086

/-! ## A239553.P15127974931742197611

`A239550(A046691(n+2))%A020701(n)²`
-/

namespace A239553.P15127974931742197611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239550 (A046691 (n + 2)).toNat) (A020701 n ^ 2)

end

end A239553.P15127974931742197611

/-! ## A239553.P7056905289746418491

`A239550(A046691(n+2))+A000007(n+1)`
-/

namespace A239553.P7056905289746418491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A046691 (n + 2)).toNat + A000007 (n + 1)

end

end A239553.P7056905289746418491

/-! ## A239553.P7383508648999231724

`A010052(n²)*A239550(A046691(n+2))`
-/

namespace A239553.P7383508648999231724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2) * A239550 (A046691 (n + 2)).toNat

end

end A239553.P7383508648999231724

/-!
# A239554: Number of compositions of n such that the first part is 1 and the second differences of the parts are in {-4,...,4}.

The programs for A239554, there is no canonical definition to state claims against.
-/

/-! ## A239554.P6764300010489420994

`A239550(∑[n+5]+5)`
-/

namespace A239554.P6764300010489420994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A239554.P6764300010489420994

/-! ## A239554.P4976718007182477748

`A239550(A052905(n+2))%A000051(n)`
-/

namespace A239554.P4976718007182477748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239550 (A052905 (n + 2)).toNat) (A000051 n)

end

end A239554.P4976718007182477748

/-! ## A239554.P40805154814860486

`or(A000007(n), A239550(A052905(n+2)))`
-/

namespace A239554.P40805154814860486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A239550 (A052905 (n + 2)).toNat)

end

end A239554.P40805154814860486

/-! ## A239554.P5021795790934576649

`A018252(gcd(n, n+1))*A239550(A052905(n+2))`
-/

namespace A239554.P5021795790934576649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.gcd n (n + 1)) * A239550 (A052905 (n + 2)).toNat

end

end A239554.P5021795790934576649

/-! ## A239554.P3109657872689225192

`A007318(floor(1/(n+1)))*A239550(A052905(n+2))`
-/

namespace A239554.P3109657872689225192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat * A239550 (A052905 (n + 2)).toNat

end

end A239554.P3109657872689225192

/-! ## A239554.P16216648341961408552

`A239550(A052905(n+2))+A000007(n)*A000096(n)`
-/

namespace A239554.P16216648341961408552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A052905 (n + 2)).toNat + A000007 n * A000096 n

end

end A239554.P16216648341961408552

/-! ## A239554.P14966625788392637246

`A239550(A052905(n+2))+A000007(n)*A110654(n)`
-/

namespace A239554.P14966625788392637246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A052905 (n + 2)).toNat + A000007 n * A110654 n

end

end A239554.P14966625788392637246

/-! ## A239554.P3751498500581243641

`A239550(A052905(n+2))+(1-A164142(n))*A000007(n)`
-/

namespace A239554.P3751498500581243641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A052905 (n + 2)).toNat + (1 - A164142 n) * A000007 n

end

end A239554.P3751498500581243641

/-!
# A239555: Number of compositions of n such that the first part is 1 and the second differences of the parts are in {-5,...,5}.

The programs for A239555, there is no canonical definition to state claims against.
-/

/-! ## A239555.P9687740734454493490

`A239550((n+4)²-∑[n+1])`
-/

namespace A239555.P9687740734454493490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239555.P9687740734454493490

/-! ## A239555.P16176221165021783207

`or(char[1], A239550(A161680(n+7)-6))`
-/

namespace A239555.P16176221165021783207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A239550 (A161680 (n + 7) - 6).toNat)

end

end A239555.P16176221165021783207

/-! ## A239555.P3339179399980722395

`gcd(A000038(n), A239550(A161680(n+7)-6))`
-/

namespace A239555.P3339179399980722395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A239550 (A161680 (n + 7) - 6).toNat)

end

end A239555.P3339179399980722395

/-! ## A239555.P17024527121166597761

`A239550(A161680(n+7)-6)+A000035(2*n)`
-/

namespace A239555.P17024527121166597761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A161680 (n + 7) - 6).toNat + A000035 (2 * n)

end

end A239555.P17024527121166597761

/-! ## A239555.P12406554309317586611

`A239550(A161680(n+7)-6)%A239531(n+1)`
-/

namespace A239555.P12406554309317586611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239550 (A161680 (n + 7) - 6).toNat) (A239531 (n + 1))

end

end A239555.P12406554309317586611

/-! ## A239555.P15957596094619240488

`A008683(A022144(n))!*A239550(A161680(n+7)-6)`
-/

namespace A239555.P15957596094619240488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (A022144 n).toNat).toNat : ℤ) * A239550 (A161680 (n + 7) - 6).toNat

end

end A239555.P15957596094619240488

/-! ## A239555.P10964488698659211322

`A239550(A161680(n+7)-6)+A008683(A044408(n+1))`
-/

namespace A239555.P10964488698659211322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A161680 (n + 7) - 6).toNat + A008683 (A044408 (n + 1)).toNat

end

end A239555.P10964488698659211322

/-! ## A239555.P16455965355062600794

`A001221(A005385(n+1))*A239550(A161680(n+7)-6)`
-/

namespace A239555.P16455965355062600794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005385 (n + 1)).toNat * A239550 (A161680 (n + 7) - 6).toNat

end

end A239555.P16455965355062600794

/-! ## A239555.P14997547213098298691

`A014963(90*(n+1))*A239550(A161680(n+7)-6)`
-/

namespace A239555.P14997547213098298691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (90 * (n + 1)) * A239550 (A161680 (n + 7) - 6).toNat

end

end A239555.P14997547213098298691

/-!
# A239556: Number of compositions of n such that the first part is 1 and the second differences of the parts are in {-6,...,6}.

The programs for A239556, there is no canonical definition to state claims against.
-/

/-! ## A239556.P8920100420155899007

`A239550(A055999(n+4)-1)`
-/

namespace A239556.P8920100420155899007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A055999 (n + 4) - 1).toNat

end

end A239556.P8920100420155899007

/-! ## A239556.P6762260069221142574

`A239550(A027379(n+5)-4)`
-/

namespace A239556.P6762260069221142574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A027379 (n + 5) - 4).toNat

end

end A239556.P6762260069221142574

/-! ## A239556.P16651339880014659324

`A239550(A000217(n+7)-7)`
-/

namespace A239556.P16651339880014659324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A000217 (n + 7) - 7).toNat

end

end A239556.P16651339880014659324

/-! ## A239556.P10544262332978422724

`A239550(A000124(n+7)-8)`
-/

namespace A239556.P10544262332978422724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A000124 (n + 7) - 8).toNat

end

end A239556.P10544262332978422724

/-! ## A239556.P18185998320992026692

`A239550(n+3+A055998(n+4))`
-/

namespace A239556.P18185998320992026692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 ((n + 3 : ℤ) + A055998 (n + 4)).toNat

end

end A239556.P18185998320992026692

/-! ## A239556.P13675756782277375574

`A239550(A052905(n+1)+A016777(n+5))`
-/

namespace A239556.P13675756782277375574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A052905 (n + 1) + A016777 (n + 5)).toNat

end

end A239556.P13675756782277375574

/-! ## A239556.P3362824021387789708

`A239550(A005843(A005843(n)+7)+A000124(n+3))`
-/

namespace A239556.P3362824021387789708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A005843 (A005843 n + 7).toNat + A000124 (n + 3)).toNat

end

end A239556.P3362824021387789708

/-!
# A239557: Number of compositions of n such that the first part is 1 and the second differences of the parts are in {-7,...,7}.

The programs for A239557, there is no canonical definition to state claims against.
-/

/-! ## A239557.P10261104495629722576

`A239550(A155212(n+4))`
-/

namespace A239557.P10261104495629722576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A155212 (n + 4)).toNat

end

end A239557.P10261104495629722576

/-! ## A239557.P5073281849219679690

`A239550(A055999(n+5)-2)`
-/

namespace A239557.P5073281849219679690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A055999 (n + 5) - 2).toNat

end

end A239557.P5073281849219679690

/-! ## A239557.P16570716211560824906

`A239550(A000217(n+8)-8)`
-/

namespace A239557.P16570716211560824906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A000217 (n + 8) - 8).toNat

end

end A239557.P16570716211560824906

/-! ## A239557.P4139063288348969838

`A239550(A000124(n+8)-9)`
-/

namespace A239557.P4139063288348969838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A000124 (n + 8) - 9).toNat

end

end A239557.P4139063288348969838

/-! ## A239557.P13712384801330255680

`A239550(n+3+A055998(n+5))`
-/

namespace A239557.P13712384801330255680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 ((n + 3 : ℤ) + A055998 (n + 5)).toNat

end

end A239557.P13712384801330255680

/-! ## A239557.P14635362728044444910

`A239550(A005843(n+3)+A000124(n+6))`
-/

namespace A239557.P14635362728044444910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A005843 (n + 3) + A000124 (n + 6)).toNat

end

end A239557.P14635362728044444910

/-!
# A239558: Number of compositions of n such that the first part is 1 and the second differences of the parts are in {-8,...,8}.

The programs for A239558, there is no canonical definition to state claims against.
-/

/-! ## A239558.P4164477420798243724

`A239550(A055999(n+6)-3)`
-/

namespace A239558.P4164477420798243724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A055999 (n + 6) - 3).toNat

end

end A239558.P4164477420798243724

/-! ## A239558.P5795311648269305017

`A239550(A046691(n+7)-5)`
-/

namespace A239558.P5795311648269305017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A046691 (n + 7) - 5).toNat

end

end A239558.P5795311648269305017

/-! ## A239558.P3736565990490786709

`A239550(A000217(n+9)-9)`
-/

namespace A239558.P3736565990490786709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A000217 (n + 9) - 9).toNat

end

end A239558.P3736565990490786709

/-! ## A239558.P18153256869748294822

`A239550((n+6)²-A055998(n))`
-/

namespace A239558.P18153256869748294822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (((n + 6) ^ 2 : ℤ) - A055998 n).toNat

end

end A239558.P18153256869748294822

/-! ## A239558.P8081537053823420946

`A239550(A000096(n+7)+n+1)`
-/

namespace A239558.P8081537053823420946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A239558.P8081537053823420946

/-!
# A239559: Number of compositions of n such that the first part is 1 and the second differences of the parts are in {-9,...,9}.

The programs for A239559, there is no canonical definition to state claims against.
-/

/-! ## A239559.P2537039984826512459

`A239550(A056000(n+6))`
-/

namespace A239559.P2537039984826512459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A056000 (n + 6)).toNat

end

end A239559.P2537039984826512459

/-! ## A239559.P17077224194339448683

`A239550(A052905(n+7)-5)`
-/

namespace A239559.P17077224194339448683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A052905 (n + 7) - 5).toNat

end

end A239559.P17077224194339448683

/-! ## A239559.P3615960859272284017

`A239550(A000217(n+10)-10)`
-/

namespace A239559.P3615960859272284017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A000217 (n + 10) - 10).toNat

end

end A239559.P3615960859272284017

/-! ## A239559.P8137648387664262002

`A239550(A167614(n+8)+n-3)`
-/

namespace A239559.P8137648387664262002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A167614 (n + 8) + ((n : ℤ) - 3)).toNat

end

end A239559.P8137648387664262002

/-! ## A239559.P1712790433330991822

`A239550(eq[9, A025581(n)])`
-/

namespace A239559.P1712790433330991822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239559.P1712790433330991822

/-! ## A239559.P7589877520755877084

`A239550(eq[10, A004736(n+1)])`
-/

namespace A239559.P7589877520755877084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239559.P7589877520755877084

/-!
# A239560: Number of compositions of n such that the first part is 1 and the second differences of the parts are in {-10,...,10}.

The programs for A239560, there is no canonical definition to state claims against.
-/

/-! ## A239560.P12318896008602756030

`A239550(A000096(n+9)+n+1)`
-/

namespace A239560.P12318896008602756030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A239560.P12318896008602756030

/-! ## A239560.P16630066432260152111

`A239550(n+3+A055998(n+8))`
-/

namespace A239560.P16630066432260152111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 ((n + 3 : ℤ) + A055998 (n + 8)).toNat

end

end A239560.P16630066432260152111

/-! ## A239560.P5032393807640181969

`A239550(A017329(n+5)+A000096(n))`
-/

namespace A239560.P5032393807640181969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A017329 (n + 5) + A000096 n).toNat

end

end A239560.P5032393807640181969

/-! ## A239560.P2198416133018804222

`A239550(A017077(n+6)+A000217(n+3))`
-/

namespace A239560.P2198416133018804222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A017077 (n + 6) + A000217 (n + 3)).toNat

end

end A239560.P2198416133018804222

/-! ## A239560.P9484156173397335665

`A239550(A008585(n+6)+A000124(n+8))`
-/

namespace A239560.P9484156173397335665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A008585 (n + 6) + A000124 (n + 8)).toNat

end

end A239560.P9484156173397335665

/-!
# A239561: Number of compositions of n such that the first part is 1 and the second differences of the parts are in {-n,...,n}.

The programs for A239561, there is no canonical definition to state claims against.
-/

/-! ## A239561.P4466038342846954731

`A239550(∑[4*n])`
-/

namespace A239561.P4466038342846954731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239561.P4466038342846954731

/-! ## A239561.P10441704944934817905

`A239550(A106232(n+1))%A085696(n)`
-/

namespace A239561.P10441704944934817905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239550 (A106232 (n + 1)).toNat) (A085696 n)

end

end A239561.P10441704944934817905

/-! ## A239561.P5140575280796924298

`or(A025469(n), A239550(A106232(n+1)))`
-/

namespace A239561.P5140575280796924298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 n) (A239550 (A106232 (n + 1)).toNat)

end

end A239561.P5140575280796924298

/-! ## A239561.P10822057744111946439

`A239550(A106232(n+1))/A007318(∑[n])`
-/

namespace A239561.P10822057744111946439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239550 (A106232 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A239561.P10822057744111946439

/-! ## A239561.P10586744054143754882

`A239550(A106232(n+1))^A013609(∑[n])`
-/

namespace A239561.P10586744054143754882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239550 (A106232 (n + 1)).toNat : ℚ) ^ (A013609 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A239561.P10586744054143754882

/-! ## A239561.P17511602348321728922

`A239550(A106232(n+1))^(A036453(n+1)-1)`
-/

namespace A239561.P17511602348321728922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239550 (A106232 (n + 1)).toNat : ℚ) ^ (A036453 (n + 1) - 1 : ℤ)

end

end A239561.P17511602348321728922

/-! ## A239561.P17684456620572365113

`A007318(A051343(n))*A239550(A106232(n+1))`
-/

namespace A239561.P17684456620572365113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A051343 n).toNat * A239550 (A106232 (n + 1)).toNat

end

end A239561.P17684456620572365113

/-! ## A239561.P2145839926267935320

`A239550(A106232(n+1))*A344180(A059268(n))`
-/

namespace A239561.P2145839926267935320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239550 (A106232 (n + 1)).toNat * A344180 (A059268 n).toNat

end

end A239561.P2145839926267935320

/-! ## A239561.P868783467199645989

`gcd(A145091(2*(n+1)), A239550(A106232(n+1)))`
-/

namespace A239561.P868783467199645989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145091 (2 * (n + 1))) (A239550 (A106232 (n + 1)).toNat)

end

end A239561.P868783467199645989

/-!
# A239564: a(n) = (round(c^prime(n)) - 1)/prime(n), where c is the pentanacci constant (A103814).

The programs for A239564, there is no canonical definition to state claims against.
-/

/-! ## A239564.P11885099682476804322

`A280303(A000040(n+5))-1`
-/

namespace A239564.P11885099682476804322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280303 (A000040 (n + 5)).toNat - 1

end

end A239564.P11885099682476804322

/-!
# A239568: Number of ways to place 2 points on a triangular grid of side n so that they are not adjacent.

The programs for A239568, the canonical program `A239568.P17338413988344837614` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239568 has offset 2).

The definition of A239568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239568.P17338413988344837614

`(n+2)*(n+1)*n*(n+7)/8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239568

/-- `(n+2)*(n+1)*n*(n+7)/8` -/
def P17338413988344837614.Spec : Prop :=
  ∀ n, P17338413988344837614.a n = (A239568 (n + 2) : ℚ)

end A239568

/-! ## A239568.P16409123532957965105

`C(∑[n+2], 2)-(n+1)²`
-/

namespace A239568.P16409123532957965105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A239568.P16409123532957965105

namespace A239568

/-- `C(∑[n+2], 2)-(n+1)²` -/
def P16409123532957965105.Spec : Prop :=
  ∀ n, P16409123532957965105.a n = A239568 (n + 2)

end A239568

/-! ## A239568.P4204659257361227054

`floor(∑[∑[∑[a(n-1)+3]]])` with `a(0)=0, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A239568.P4204659257361227054
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239568.P4204659257361227054

namespace A239568

/-- `floor(∑[∑[∑[a(n-1)+3]]])` -/
def P4204659257361227054.Spec : Prop :=
  ∀ n, (P4204659257361227054.a n : ℤ) = A239568 (n + 2)

end A239568

/-! ## A239568.P7310471833129120198

`∑[∑[a(n-1)+3]]+a(n-1)` with `a(0)=0, a(1)=6`
-/

namespace A239568.P7310471833129120198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A239568.P7310471833129120198

namespace A239568

/-- `∑[∑[a(n-1)+3]]+a(n-1)` -/
def P7310471833129120198.Spec : Prop :=
  ∀ n, (P7310471833129120198.a n : ℤ) = A239568 (n + 2)

end A239568

/-! ## A239568.P12249221709337787136

`∑[C((n+1)², 2)/(n+1)]+C((n+1)², 2)/(n+1)`
-/

namespace A239568.P12249221709337787136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) 2 : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose ((n + 1) ^ 2) 2 : ℚ) / (n + 1 : ℚ)

end

end A239568.P12249221709337787136

namespace A239568

/-- `∑[C((n+1)², 2)/(n+1)]+C((n+1)², 2)/(n+1)` -/
def P12249221709337787136.Spec : Prop :=
  ∀ n, P12249221709337787136.a n = (A239568 (n + 2) : ℚ)

end A239568

/-! ## A239568.P2103020359911599304

`∑[A267370(n)]`
-/

namespace A239568.P2103020359911599304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239568.P2103020359911599304

namespace A239568

/-- `∑[A267370(n)]` -/
def P2103020359911599304.Spec : Prop :=
  ∀ n, P2103020359911599304.a n = A239568 (n + 2)

end A239568

/-! ## A239568.P13265228119606877889

`3*A005582(n)`
-/

namespace A239568.P13265228119606877889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005582 n

end

end A239568.P13265228119606877889

namespace A239568

/-- `3*A005582(n)` -/
def P13265228119606877889.Spec : Prop :=
  ∀ n, P13265228119606877889.a n = A239568 (n + 2)

end A239568

/-! ## A239568.P5963622799153634852

`∑[∑[A140091(n)]]`
-/

namespace A239568.P5963622799153634852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140091 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239568.P5963622799153634852

namespace A239568

/-- `∑[∑[A140091(n)]]` -/
def P5963622799153634852.Spec : Prop :=
  ∀ n, P5963622799153634852.a n = A239568 (n + 2)

end A239568

/-! ## A239568.P10044339887781163498

`A241765(n)+∑[∑[n]]`
-/

namespace A239568.P10044339887781163498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241765 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A239568.P10044339887781163498

namespace A239568

/-- `A241765(n)+∑[∑[n]]` -/
def P10044339887781163498.Spec : Prop :=
  ∀ n, P10044339887781163498.a n = A239568 (n + 2)

end A239568

/-! ## A239568.P5762133771418633250

`∑[(n+1)*A055998(n)]`
-/

namespace A239568.P5762133771418633250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239568.P5762133771418633250

namespace A239568

/-- `∑[(n+1)*A055998(n)]` -/
def P5762133771418633250.Spec : Prop :=
  ∀ n, P5762133771418633250.a n = A239568 (n + 2)

end A239568

/-! ## A239568.P6010116737718073069

`∑[A154560(n)]-(n+1)²`
-/

namespace A239568.P6010116737718073069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A239568.P6010116737718073069

namespace A239568

/-- `∑[A154560(n)]-(n+1)²` -/
def P6010116737718073069.Spec : Prop :=
  ∀ n, P6010116737718073069.a n = A239568 (n + 2)

end A239568

/-! ## A239568.P12619971309562582113

`3*(A086274(n+1)-(n+1))`
-/

namespace A239568.P12619971309562582113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A086274 (n + 1) - (n + 1 : ℤ))

end

end A239568.P12619971309562582113

namespace A239568

/-- `3*(A086274(n+1)-(n+1))` -/
def P12619971309562582113.Spec : Prop :=
  ∀ n, P12619971309562582113.a n = A239568 (n + 2)

end A239568

/-! ## A239568.P11032605705597808813

`∑[n+1]²-A004255(n+1)`
-/

namespace A239568.P11032605705597808813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A004255 (n + 1)

end

end A239568.P11032605705597808813

namespace A239568

/-- `∑[n+1]²-A004255(n+1)` -/
def P11032605705597808813.Spec : Prop :=
  ∀ n, P11032605705597808813.a n = A239568 (n + 2)

end A239568

/-! ## A239568.P11484839394791239902

`∑[n+1]²-A101357(n+1)`
-/

namespace A239568.P11484839394791239902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A101357 (n + 1)

end

end A239568.P11484839394791239902

namespace A239568

/-- `∑[n+1]²-A101357(n+1)` -/
def P11484839394791239902.Spec : Prop :=
  ∀ n, P11484839394791239902.a n = A239568 (n + 2)

end A239568

/-! ## A239568.P9541252610204715422

`A027480(n)+∑[C((n+1)², 2)/(n+1)]`
-/

namespace A239568.P9541252610204715422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) 2 : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027480 n : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239568.P9541252610204715422

namespace A239568

/-- `A027480(n)+∑[C((n+1)², 2)/(n+1)]` -/
def P9541252610204715422.Spec : Prop :=
  ∀ n, P9541252610204715422.a n = (A239568 (n + 2) : ℚ)

end A239568

/-! ## A239568.P225699068323625880

`A134481(n)+A001296(n)`
-/

namespace A239568.P225699068323625880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n + A001296 n

end

end A239568.P225699068323625880

namespace A239568

/-- `A134481(n)+A001296(n)` -/
def P225699068323625880.Spec : Prop :=
  ∀ n, P225699068323625880.a n = A239568 (n + 2)

end A239568

/-! ## A239568.P2229898119850084036

`A163943(n)+A145069(n)`
-/

namespace A239568.P2229898119850084036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163943 n + A145069 n

end

end A239568.P2229898119850084036

namespace A239568

/-- `A163943(n)+A145069(n)` -/
def P2229898119850084036.Spec : Prop :=
  ∀ n, P2229898119850084036.a n = A239568 (n + 2)

end A239568

/-! ## A239568.P15973187826342528436

`A332698(n)+A090809(n)`
-/

namespace A239568.P15973187826342528436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332698 n + A090809 n

end

end A239568.P15973187826342528436

namespace A239568

/-- `A332698(n)+A090809(n)` -/
def P15973187826342528436.Spec : Prop :=
  ∀ n, P15973187826342528436.a n = A239568 (n + 2)

end A239568

/-! ## A239568.P9463187737924950135

`A027480(n)+∑[A027480(n)]`
-/

namespace A239568.P9463187737924950135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239568.P9463187737924950135

namespace A239568

/-- `A027480(n)+∑[A027480(n)]` -/
def P9463187737924950135.Spec : Prop :=
  ∀ n, P9463187737924950135.a n = A239568 (n + 2)

end A239568

/-! ## A239568.P14906093138528673992

`A267707(n)+A087908(n+1)`
-/

namespace A239568.P14906093138528673992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267707 n + A087908 (n + 1)

end

end A239568.P14906093138528673992

namespace A239568

/-- `A267707(n)+A087908(n+1)` -/
def P14906093138528673992.Spec : Prop :=
  ∀ n, P14906093138528673992.a n = A239568 (n + 2)

end A239568

/-!
# A239569: Number of ways to place 3 points on a triangular grid of side n so that no two of them are adjacent.

The programs for A239569, the canonical program `A239569.P15047693759910151172` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239569 has offset 2).

The definition of A239569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A239569.P15047693759910151172

`(n+1)*n*((n+2)^4+6*(n+2)^3-23*(n+2)²-92*(n+2)+264)/48`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239569

/-- `(n+1)*n*((n+2)^4+6*(n+2)^3-23*(n+2)²-92*(n+2)+264)/48` -/
def P15047693759910151172.Spec : Prop :=
  ∀ n, P15047693759910151172.a n = (A239569 (n + 2) : ℚ)

end A239569

/-!
# A239573: Number of non-equivalent (mod D_3) ways to place 3 indistinguishable points on a triangular grid of side n so that no two of them are adjacent.

The programs for A239573, there is no canonical definition to state claims against.
-/

/-! ## A239573.P6644215534366782969

`A277193(A277228(n)+A194440(n))`
-/

namespace A239573.P6644215534366782969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A277228 n + A194440 n).toNat

end

end A239573.P6644215534366782969

/-! ## A239573.P16472036736847470952

`A325834(A062241(n))%A110224(n)`
-/

namespace A239573.P16472036736847470952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325834 (A062241 n).toNat) (A110224 n)

end

end A239573.P16472036736847470952

/-!
# A239574: Number of non-equivalent (mod D_3) ways to place 4 indistinguishable points on a triangular grid of side n so that no two of them are adjacent.

The programs for A239574, there is no canonical definition to state claims against.
-/

/-! ## A239574.P14611117260744127828

`A030530(∑[A155016(n)])`
-/

namespace A239574.P14611117260744127828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A239574.P14611117260744127828

/-!
# A239577: Expansion of 1/((x-1)*(3*x-1)*(3*x^2+1)).

The programs for A239577, the canonical program `A239577.P14423411176807096057` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239577 has offset 0).

The definition of A239577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-12x^3+9x^4))` (program `A239577.P14423411176807096057`, by `A239577.P14423411176807096057.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239577.P14423411176807096057

`ogf(1/(1-4x+6x^2-12x^3+9x^4))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239577

/-- `ogf(1/(1-4x+6x^2-12x^3+9x^4))` -/
def P14423411176807096057.Spec : Prop :=
  ∀ n, P14423411176807096057.a n = A239577 n

theorem P14423411176807096057.correct : P14423411176807096057.Spec := by
  intro n
  simp only [A239577]

end A239577

/-! ## A239577.P5810067091522893044

`4*a(n-1)-6*a(n-2)+12*a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=28`
-/

namespace A239577.P5810067091522893044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10, 28] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 12 * a (n - 3) - 9 * a (n - 4)

end

end A239577.P5810067091522893044

namespace A239577

/-- `4*a(n-1)-6*a(n-2)+12*a(n-3)-9*a(n-4)` -/
def P5810067091522893044.Spec : Prop :=
  ∀ n, P5810067091522893044.a n = A239577 n

end A239577

/-! ## A239577.P11946377776684953382

`∑[3^n-3*a(n-2)]` with `a(0)=1, a(1)=3`
-/

namespace A239577.P11946377776684953382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  (3 ^ n : ℤ) - 3 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239577.P11946377776684953382

namespace A239577

/-- `∑[3^n-3*a(n-2)]` -/
def P11946377776684953382.Spec : Prop :=
  ∀ n, P11946377776684953382.a n = A239577 n

end A239577

/-! ## A239577.P295704346330940558

`∑[∑[A318609(n+1)/2]]`
-/

namespace A239577.P295704346330940558
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318609 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239577.P295704346330940558

namespace A239577

/-- `∑[∑[A318609(n+1)/2]]` -/
def P295704346330940558.Spec : Prop :=
  ∀ n, P295704346330940558.a n = (A239577 n : ℚ)

end A239577

/-! ## A239577.P16273417518887758025

`∑[A318610(n+2)/4]`
-/

namespace A239577.P16273417518887758025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318610 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239577.P16273417518887758025

namespace A239577

/-- `∑[A318610(n+2)/4]` -/
def P16273417518887758025.Spec : Prop :=
  ∀ n, P16273417518887758025.a n = (A239577 n : ℚ)

end A239577

/-! ## A239577.P4412234887065164652

`floor(A101990(n+3)/8)`
-/

namespace A239577.P4412234887065164652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101990 (n + 3) : ℚ) / 8⌋

end

end A239577.P4412234887065164652

namespace A239577

/-- `floor(A101990(n+3)/8)` -/
def P4412234887065164652.Spec : Prop :=
  ∀ n, P4412234887065164652.a n = A239577 n

end A239577

/-!
# A239579: a(n) = |{0 < k <= n: prime(prime(prime(k*n))) - 2 is prime}|.

The programs for A239579, there is no canonical definition to state claims against.
-/

/-! ## A239579.P10314866246512741694

`A316470(A312341(n))%A000040(A137735(n))`
-/

namespace A239579.P10314866246512741694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316470 (A312341 n).toNat) (A000040 (A137735 n).toNat)

end

end A239579.P10314866246512741694

/-! ## A239579.P3716822476227741007

`A342427(A321567(3*n))%A335465(A141468(2*(n+1)))`
-/

namespace A239579.P3716822476227741007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342427 (A321567 (3 * n)).toNat) (A335465 (A141468 (2 * (n + 1))).toNat)

end

end A239579.P3716822476227741007

/-! ## A239579.P1941313418959193796

`A025842(A192234(n))%5`
-/

namespace A239579.P1941313418959193796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025842 (A192234 n).toNat) 5

end

end A239579.P1941313418959193796

/-! ## A239579.P6941064072067589652

`and(A001221(A099754(n)), A181820(n+1))`
-/

namespace A239579.P6941064072067589652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A099754 n).toNat) (A181820 (n + 1))

end

end A239579.P6941064072067589652

/-! ## A239579.P15781779445979620567

`and(A003622(A345192(n+4)), A365543(n))`
-/

namespace A239579.P15781779445979620567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003622 (A345192 (n + 4)).toNat) (A365543 n)

end

end A239579.P15781779445979620567

/-!
# A239582: Prime powers (A025475) such that the distance to the nearest square is a square.

The programs for A239582, there is no canonical definition to state claims against.
-/

/-! ## A239582.P6465951735782679896

`A239583(A082743(n))`
-/

namespace A239582.P6465951735782679896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239583 (A082743 n).toNat

end

end A239582.P6465951735782679896

/-! ## A239582.P13424954023439327070

`A239583(A381225(n))`
-/

namespace A239582.P13424954023439327070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239583 (A381225 n).toNat

end

end A239582.P13424954023439327070

/-! ## A239582.P11005286144406619181

`A239583(A129396(n²))`
-/

namespace A239582.P11005286144406619181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239583 (A129396 (n ^ 2)).toNat

end

end A239582.P11005286144406619181

/-! ## A239582.P8365427440716287759

`A000015(A239583(n+1))`
-/

namespace A239582.P8365427440716287759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A239583 (n + 1)).toNat

end

end A239582.P8365427440716287759

/-! ## A239582.P14731957368474942088

`A239583(A001104(n+1))`
-/

namespace A239582.P14731957368474942088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239583 (A001104 (n + 1)).toNat

end

end A239582.P14731957368474942088

/-!
# A239583: Prime powers (A025475) such that the distance to the nearest square is a prime power.

The programs for A239583, there is no canonical definition to state claims against.
-/

/-! ## A239583.P13503475964083449212

`A239582(A239550(n)+A106000(n))`
-/

namespace A239583.P13503475964083449212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239582 (A239550 n + A106000 n).toNat

end

end A239583.P13503475964083449212

/-! ## A239583.P11813296225032555412

`A239582(A061487(n+1))`
-/

namespace A239583.P11813296225032555412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239582 (A061487 (n + 1)).toNat

end

end A239583.P11813296225032555412

/-! ## A239583.P7365872582455866118

`A239582(A106000(n+1))`
-/

namespace A239583.P7365872582455866118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239582 (A106000 (n + 1)).toNat

end

end A239583.P7365872582455866118

/-! ## A239583.P9041420704050166180

`A239582(∑[A116449(n)!])`
-/

namespace A239583.P9041420704050166180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A116449 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239582 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239583.P9041420704050166180

/-! ## A239583.P6650877108295021000

`A239582(A064704(n+1))`
-/

namespace A239583.P6650877108295021000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239582 (A064704 (n + 1)).toNat

end

end A239583.P6650877108295021000

/-!
# A239584: Prime powers p^q (A025475) such that either x divides y, or y divides x, where x and y are the distances from p^q to the nearest prime powers above and below p^q.

The programs for A239584, there is no canonical definition to state claims against.
-/

/-! ## A239584.P3408815309164861460

`A053810(n*floor(3*n/2)+2)`
-/

namespace A239584.P3408815309164861460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 ((n : ℤ) * ⌊3 * ((n : ℚ) / 2)⌋ + 2).toNat

end

end A239584.P3408815309164861460

/-!
# A239585: Prime factor <= other prime factor of n-th brilliant number, cf. A078972.

The programs for A239585, there is no canonical definition to state claims against.
-/

/-! ## A239585.P11731007877838123525

`A078972(n+1)/A239586(n+1)`
-/

namespace A239585.P11731007877838123525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078972 (n + 1) : ℚ) / (A239586 (n + 1) : ℚ)

end

end A239585.P11731007877838123525

/-! ## A239585.P10324935644569556691

`A020639(A078972(n+1))`
-/

namespace A239585.P10324935644569556691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A078972 (n + 1)).toNat

end

end A239585.P10324935644569556691

/-! ## A239585.P3043881876000548640

`A006530(A078972(n+1)/A006530(A078972(n+1)))`
-/

namespace A239585.P3043881876000548640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A078972 (n + 1) : ℚ) / (A006530 (A078972 (n + 1)).toNat : ℚ))).toNat

end

end A239585.P3043881876000548640

/-! ## A239585.P10780764590691120261

`A078972(n+1)/A034699(∏{p}[A078972(n+1), #])`
-/

namespace A239585.P10780764590691120261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078972 (n + 1) : ℚ) / (A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) : ℚ)

end

end A239585.P10780764590691120261

/-! ## A239585.P3984016207277082173

`A078972(n+1)/∏{d}[A078972(n+1), A014673(#)]`
-/

namespace A239585.P3984016207277082173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078972 (n + 1) : ℚ) / ((∏ d ∈ Nat.divisors (f1 n).natAbs, A014673 d : ℤ) : ℚ)

end

end A239585.P3984016207277082173

/-! ## A239585.P10825169364364622279

`A014673(2*A078972(n+1))`
-/

namespace A239585.P10825169364364622279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A078972 (n + 1)).toNat

end

end A239585.P10825169364364622279

/-! ## A239585.P3056970304931749664

`A070821(2*A078972(n+1))`
-/

namespace A239585.P3056970304931749664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (2 * A078972 (n + 1)).toNat

end

end A239585.P3056970304931749664

/-! ## A239585.P3463979420912982355

`A014673(A078972(n+1)+A078972(n+1))`
-/

namespace A239585.P3463979420912982355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A078972 (n + 1) + A078972 (n + 1)).toNat

end

end A239585.P3463979420912982355

/-! ## A239585.P3190296613345149579

`A070821(A078972(n+1)+A078972(n+1))`
-/

namespace A239585.P3190296613345149579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (A078972 (n + 1) + A078972 (n + 1)).toNat

end

end A239585.P3190296613345149579

/-!
# A239586: Prime factor >= other prime factor of n-th brilliant number, cf. A078972.

The programs for A239586, there is no canonical definition to state claims against.
-/

/-! ## A239586.P55289451615759120

`A078972(n+1)/A239585(n+1)`
-/

namespace A239586.P55289451615759120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078972 (n + 1) : ℚ) / (A239585 (n + 1) : ℚ)

end

end A239586.P55289451615759120

/-! ## A239586.P14410143422732960828

`A006530(A078972(n+1))`
-/

namespace A239586.P14410143422732960828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A078972 (n + 1)).toNat

end

end A239586.P14410143422732960828

/-! ## A239586.P15693627714169077076

`A020639(A078972(n+1)/A020639(A078972(n+1)))`
-/

namespace A239586.P15693627714169077076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A078972 (n + 1) : ℚ) / (A020639 (A078972 (n + 1)).toNat : ℚ))).toNat

end

end A239586.P15693627714169077076

/-! ## A239586.P15153314083801145594

`A034699(∏{p}[A078972(n+1), #])`
-/

namespace A239586.P15153314083801145594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A239586.P15153314083801145594

/-! ## A239586.P9382601439202129697

`A117358(4*A078972(n+1))`
-/

namespace A239586.P9382601439202129697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (4 * A078972 (n + 1)).toNat

end

end A239586.P9382601439202129697

/-! ## A239586.P6661870080455867911

`∏{d}[A078972(n+1), A014673(#)]`
-/

namespace A239586.P6661870080455867911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014673 d

end

end A239586.P6661870080455867911

/-! ## A239586.P11010426595268800127

`A014673(A014673(A078972(n+1))²)`
-/

namespace A239586.P11010426595268800127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A014673 (A078972 (n + 1)).toNat ^ 2).toNat

end

end A239586.P11010426595268800127

/-! ## A239586.P16127981234851369326

`A004526(2*A014673(A078972(n+1)))`
-/

namespace A239586.P16127981234851369326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A014673 (A078972 (n + 1)).toNat).toNat

end

end A239586.P16127981234851369326

/-! ## A239586.P14370728461660064834

`A014673(2*A014673(A078972(n+1)))`
-/

namespace A239586.P14370728461660064834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A014673 (A078972 (n + 1)).toNat).toNat

end

end A239586.P14370728461660064834

/-! ## A239586.P13053825236309755144

`A072505(A078972(n+1))%A131323(n+1)`
-/

namespace A239586.P13053825236309755144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072505 (A078972 (n + 1)).toNat) (A131323 (n + 1))

end

end A239586.P13053825236309755144

/-! ## A239586.P1260593795763694343

`A072505(A078972(n+1)%A078972(n+1)²)`
-/

namespace A239586.P1260593795763694343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072505 (Int.tmod (A078972 (n + 1)) (A078972 (n + 1) ^ 2)).toNat

end

end A239586.P1260593795763694343

/-! ## A239586.P1799825162592233130

`A072505(2*A078972(n+1)-A078972(n+1))`
-/

namespace A239586.P1799825162592233130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072505 (2 * A078972 (n + 1) - A078972 (n + 1)).toNat

end

end A239586.P1799825162592233130

/-!
# A239587: Cubes that are cyclops numbers.

The programs for A239587, there is no canonical definition to state claims against.
-/

/-! ## A239587.P8245549095878266865

`A239590(n+1)^3`
-/

namespace A239587.P8245549095878266865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239590 (n + 1) ^ 3

end

end A239587.P8245549095878266865

/-! ## A239587.P9479479237091735984

`A239590(A028310(n)+1)²*A239590(n+1)`
-/

namespace A239587.P9479479237091735984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239590 (A028310 n + 1).toNat ^ 2 * A239590 (n + 1)

end

end A239587.P9479479237091735984

/-! ## A239587.P14835312607242385162

`A239590(sqrt(A000290(n+1)))²*A239590(n+1)`
-/

namespace A239587.P14835312607242385162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239590 (SequenceMachineLib.roundAway (Real.sqrt (A000290 (n + 1) : ℝ))).toNat ^ 2 * A239590 (n + 1)

end

end A239587.P14835312607242385162

/-! ## A239587.P18170791315392928404

`A239590(A007318(C(2, n))+n)²*A239590(n+1)`
-/

namespace A239587.P18170791315392928404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239590 (A007318 (Nat.choose 2 n) + (n : ℤ)).toNat ^ 2 * A239590 (n + 1)

end

end A239587.P18170791315392928404

/-! ## A239587.P15620620629381382645

`A239590(A028242(2*n))²*A239590(n+1)`
-/

namespace A239587.P15620620629381382645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239590 (A028242 (2 * n)).toNat ^ 2 * A239590 (n + 1)

end

end A239587.P15620620629381382645

/-! ## A239587.P1526064259660580358

`A000578(A239590(n+1))`
-/

namespace A239587.P1526064259660580358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A239590 (n + 1)).toNat

end

end A239587.P1526064259660580358

/-! ## A239587.P3498626511010734096

`A034828(2*A239590(n+1))`
-/

namespace A239587.P3498626511010734096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A239590 (n + 1)).toNat

end

end A239587.P3498626511010734096

/-!
# A239588: Fourth powers that are cyclops numbers.

The programs for A239588, there is no canonical definition to state claims against.
-/

/-! ## A239588.P10572633974673699920

`A239591(n+1)^4`
-/

namespace A239588.P10572633974673699920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239591 (n + 1) ^ 4

end

end A239588.P10572633974673699920

/-! ## A239588.P4434295717305553961

`A239591(1+n)²²`
-/

namespace A239588.P4434295717305553961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A239591 (1 + n) ^ 2) ^ 2

end

end A239588.P4434295717305553961

/-! ## A239588.P4757579001359838916

`A000583(A239591(n+1))`
-/

namespace A239588.P4757579001359838916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A239591 (n + 1)).toNat

end

end A239588.P4757579001359838916

/-! ## A239588.P11567289351160213211

`A000290(A239591(ϕ²-(ϕ-n)))²`
-/

namespace A239588.P11567289351160213211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A239591 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat ^ 2

end

end A239588.P11567289351160213211

/-! ## A239588.P3625004507396986204

`A011863(2*A239591(n+1))`
-/

namespace A239588.P3625004507396986204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (2 * A239591 (n + 1)).toNat

end

end A239588.P3625004507396986204

/-!
# A239589: Numbers whose squares are cyclops numbers.

The programs for A239589, there is no canonical definition to state claims against.
-/

/-! ## A239589.P10811281661018933507

`sqrt(A160711(n+1))`
-/

namespace A239589.P10811281661018933507
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A160711 (n + 1) : ℝ)

end

end A239589.P10811281661018933507

/-! ## A239589.P12749054395634185295

`A160711(n+1)^(A008486(n)/A008458(n))`
-/

namespace A239589.P12749054395634185295
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A160711 (n + 1) : ℝ) ^ ((A008486 n : ℚ) / (A008458 n : ℚ) : ℝ)

end

end A239589.P12749054395634185295

/-! ## A239589.P14186045813846066387

`A160711(n+1)^(A087039(A087039(n+1))/2)`
-/

namespace A239589.P14186045813846066387
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A160711 (n + 1) : ℝ) ^ ((A087039 (A087039 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A239589.P14186045813846066387

/-! ## A239589.P16638672796220655610

`A160711(n+1)^(A001222(A181848(n+1))/2)`
-/

namespace A239589.P16638672796220655610
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A160711 (n + 1) : ℝ) ^ ((A001222 (A181848 (n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A239589.P16638672796220655610

/-! ## A239589.P10776705628861962389

`A160711(n+1)^(1/A178815(n+1))`
-/

namespace A239589.P10776705628861962389
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A160711 (n + 1) : ℝ) ^ (1 / (A178815 (n + 1) : ℚ) : ℝ)

end

end A239589.P10776705628861962389

/-!
# A239590: Numbers whose cubes are cyclops numbers.

The programs for A239590, there is no canonical definition to state claims against.
-/

/-! ## A239590.P8683283841563482625

`A239587(n+1)^(1/3)`
-/

namespace A239590.P8683283841563482625
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A239587 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A239590.P8683283841563482625

/-!
# A239591: Numbers whose fourth powers are cyclops numbers.

The programs for A239591, there is no canonical definition to state claims against.
-/

/-! ## A239591.P11845772505371411365

`sqrt(sqrt(A239588(n+1)))`
-/

namespace A239591.P11845772505371411365
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A239588 (n + 1) : ℝ))

end

end A239591.P11845772505371411365

/-! ## A239591.P14662405754879871038

`sqrt(∩[A239589(n+1), n²])`
-/

namespace A239591.P14662405754879871038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239589 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A239591.P14662405754879871038

/-!
# A239592: a(n) = (n^4 - n^3 + 4*n^2 + 2)/2.

The programs for A239592, the canonical program `A239592.P14371537621209148186` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239592 has offset 0).

The definition of A239592 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4-n^3+4*n²+2)/2` (program `A239592.P6433188689571340258`, by `A239592.P6433188689571340258.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A239592.P6433188689571340258

`(n^4-n^3+4*n²+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A239592.P6433188689571340258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 4 : ℤ) - (n ^ 3 : ℤ) + (4 * n ^ 2 : ℤ) + 2 : ℚ) / 2

end

end A239592.P6433188689571340258

namespace A239592

/-- `(n^4-n^3+4*n²+2)/2` -/
def P6433188689571340258.Spec : Prop :=
  ∀ n, P6433188689571340258.a n = (A239592 n : ℚ)

theorem P6433188689571340258.correct : P6433188689571340258.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A239592, Nat.add_sub_cancel, A239592.P6433188689571340258.a, A239592.P14371537621209148186.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A239592, Nat.add_sub_cancel, A239592.P6433188689571340258.a, A239592.P14371537621209148186.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A239592

/-! ## A239592.P14371537621209148186

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=13, a(3)=46, a(4)=129`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239592

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14371537621209148186.Spec : Prop :=
  ∀ n, P14371537621209148186.a n = A239592 n

theorem P14371537621209148186.correct : P14371537621209148186.Spec := by
  intro n
  simp only [A239592]

end A239592

/-! ## A239592.P17605635815683690121

`floor(((C(n, 2)+2)*2*n²+3)/2)`
-/

namespace A239592.P17605635815683690121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose n 2 + 2) * (2 * n ^ 2) + 3 : ℚ) / 2⌋

end

end A239592.P17605635815683690121

namespace A239592

/-- `floor(((C(n, 2)+2)*2*n²+3)/2)` -/
def P17605635815683690121.Spec : Prop :=
  ∀ n, P17605635815683690121.a n = A239592 n

end A239592

/-! ## A239592.P1027149605693843355

`A393441(n)+n²+n`
-/

namespace A239592.P1027149605693843355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393441 n + (n ^ 2 + n : ℤ)

end

end A239592.P1027149605693843355

namespace A239592

/-- `A393441(n)+n²+n` -/
def P1027149605693843355.Spec : Prop :=
  ∀ n, P1027149605693843355.a n = A239592 n

end A239592

/-! ## A239592.P5435623783756013943

`A081423(n)+A019582(n)`
-/

namespace A239592.P5435623783756013943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081423 n + A019582 n

end

end A239592.P5435623783756013943

namespace A239592

/-- `A081423(n)+A019582(n)` -/
def P5435623783756013943.Spec : Prop :=
  ∀ n, P5435623783756013943.a n = A239592 n

end A239592

/-! ## A239592.P3834153401933085351

`A104249(n)+A071252(n)`
-/

namespace A239592.P3834153401933085351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n + A071252 n

end

end A239592.P3834153401933085351

namespace A239592

/-- `A104249(n)+A071252(n)` -/
def P3834153401933085351.Spec : Prop :=
  ∀ n, P3834153401933085351.a n = A239592 n

end A239592

/-! ## A239592.P8871116773146064021

`A130883(n)+A101375(n)`
-/

namespace A239592.P8871116773146064021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 n + A101375 n

end

end A239592.P8871116773146064021

namespace A239592

/-- `A130883(n)+A101375(n)` -/
def P8871116773146064021.Spec : Prop :=
  ∀ n, P8871116773146064021.a n = A239592 n

end A239592

/-! ## A239592.P14308585762935474721

`A143689(n)+A100855(n)`
-/

namespace A239592.P14308585762935474721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n + A100855 n

end

end A239592.P14308585762935474721

namespace A239592

/-- `A143689(n)+A100855(n)` -/
def P14308585762935474721.Spec : Prop :=
  ∀ n, P14308585762935474721.a n = A239592 n

end A239592

/-! ## A239592.P10768364460149631714

`A212135(n)+A064808(n)`
-/

namespace A239592.P10768364460149631714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212135 n + A064808 n

end

end A239592.P10768364460149631714

namespace A239592

/-- `A212135(n)+A064808(n)` -/
def P10768364460149631714.Spec : Prop :=
  ∀ n, P10768364460149631714.a n = A239592 n

end A239592

/-! ## A239592.P2053237919483150761

`A171129(n)+A116668(n)`
-/

namespace A239592.P2053237919483150761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171129 n + A116668 n

end

end A239592.P2053237919483150761

namespace A239592

/-- `A171129(n)+A116668(n)` -/
def P2053237919483150761.Spec : Prop :=
  ∀ n, P2053237919483150761.a n = A239592 n

end A239592

/-! ## A239592.P16013395292873403243

`A082044(n)-n²*A000217(n)`
-/

namespace A239592.P16013395292873403243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082044 n - (n ^ 2 : ℤ) * A000217 n

end

end A239592.P16013395292873403243

namespace A239592

/-- `A082044(n)-n²*A000217(n)` -/
def P16013395292873403243.Spec : Prop :=
  ∀ n, P16013395292873403243.a n = A239592 n

end A239592

/-! ## A239592.P3222488598296450708

`A082044(n)-A000217(n)*A000290(n)`
-/

namespace A239592.P3222488598296450708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082044 n - A000217 n * A000290 n

end

end A239592.P3222488598296450708

namespace A239592

/-- `A082044(n)-A000217(n)*A000290(n)` -/
def P3222488598296450708.Spec : Prop :=
  ∀ n, P3222488598296450708.a n = A239592 n

end A239592

/-! ## A239592.P11036373785149206330

`A007590(n+1)+A058919(n)+A036487(n)`
-/

namespace A239592.P11036373785149206330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (n + 1) + (A058919 n + A036487 n)

end

end A239592.P11036373785149206330

namespace A239592

/-- `A007590(n+1)+A058919(n)+A036487(n)` -/
def P11036373785149206330.Spec : Prop :=
  ∀ n, P11036373785149206330.a n = A239592 n

end A239592

/-!
# A239593: Number of n X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239593, there is no canonical definition to state claims against.
-/

/-! ## A239593.P1735384745368233305

`A239599(∑[4*n]+1)`
-/

namespace A239593.P1735384745368233305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239593.P1735384745368233305

/-! ## A239593.P3550005680403549915

`and(-1, A239599(A001844(n)))`
-/

namespace A239593.P3550005680403549915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A239599 (A001844 n).toNat)

end

end A239593.P3550005680403549915

/-! ## A239593.P6988150225852435820

`record[gcd(A239599(n+1), A274650(n))]`
-/

namespace A239593.P6988150225852435820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A239599 (n + 1)) (A274650 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239593.P6988150225852435820

/-!
# A239594: Number of n X 2 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239594, the canonical program `A239594.P2766140611688563482` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A239594 has offset 1).

The definition of A239594 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A239594.P2766140611688563482

`a(n-2)+a(n-5)` with `a(0)=4, a(1)=3, a(2)=4, a(3)=4, a(4)=5, a(5)=7`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A239594

/-- `a(n-2)+a(n-5)` -/
def P2766140611688563482.Spec : Prop :=
  ∀ n, (P2766140611688563482.a n : ℤ) = A239594 (n + 1)

theorem P2766140611688563482.correct : P2766140611688563482.Spec := by
  intro n
  simp only [A239594, Nat.add_sub_cancel]

end A239594

/-! ## A239594.P6677294324240842324

`A239599(∑[n+2])`
-/

namespace A239594.P6677294324240842324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A239594.P6677294324240842324

namespace A239594

/-- `A239599(∑[n+2])` -/
def P6677294324240842324.Spec : Prop :=
  ∀ n, P6677294324240842324.a n = A239594 (n + 1)

end A239594

/-!
# A239595: Number of nX3 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239595, there is no canonical definition to state claims against.
-/

/-! ## A239595.P3935628085321886359

`A239599(∑[n+3]+1)`
-/

namespace A239595.P3935628085321886359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A239595.P3935628085321886359

/-! ## A239595.P4247264324471431037

`record[A239599(lt[A239599(n+1), n])]`
-/

namespace A239595.P4247264324471431037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A239595.P4247264324471431037

/-!
# A239596: Number of nX4 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239596, there is no canonical definition to state claims against.
-/

/-! ## A239596.P5884239582324261712

`A239599(A141214(n+1))`
-/

namespace A239596.P5884239582324261712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (A141214 (n + 1)).toNat

end

end A239596.P5884239582324261712

/-! ## A239596.P13394656408577578821

`A239599(A027379(n+2))`
-/

namespace A239596.P13394656408577578821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (A027379 (n + 2)).toNat

end

end A239596.P13394656408577578821

/-! ## A239596.P8863356324506192127

`A239599(A055998(n+2))`
-/

namespace A239596.P8863356324506192127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (A055998 (n + 2)).toNat

end

end A239596.P8863356324506192127

/-! ## A239596.P9476489770765480261

`A239599(A155212(n)+5)`
-/

namespace A239596.P9476489770765480261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (A155212 n + 5).toNat

end

end A239596.P9476489770765480261

/-! ## A239596.P6112295930902109403

`A239599(A056000(n)+7)`
-/

namespace A239596.P6112295930902109403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (A056000 n + 7).toNat

end

end A239596.P6112295930902109403

/-!
# A239597: Number of n X 5 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239597, there is no canonical definition to state claims against.
-/

/-! ## A239597.P8976804843281940214

`A239599(∑[n+5]+6)`
-/

namespace A239597.P8976804843281940214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A239597.P8976804843281940214

/-!
# A239598: Number of nX6 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A239598, there is no canonical definition to state claims against.
-/

/-! ## A239598.P7346050428620700883

`A239599(A052905(n+3))`
-/

namespace A239598.P7346050428620700883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (A052905 (n + 3)).toNat

end

end A239598.P7346050428620700883

/-! ## A239598.P4152484895250210495

`A239599(eq[3, A219347(n)])`
-/

namespace A239598.P4152484895250210495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239598.P4152484895250210495

/-! ## A239598.P10325991553082703863

`A239599(eq[5, A193592(n)])`
-/

namespace A239598.P10325991553082703863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239598.P10325991553082703863

/-! ## A239598.P12463723191699767965

`A239599(eq[8, A258709(n)])`
-/

namespace A239598.P12463723191699767965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A239598.P12463723191699767965

