import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A177400: a(n) = binomial(n*2^n, n).

The programs for A177400, the canonical program `A177400.P17454640746895528794` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177400 has offset 0).

The definition of A177400 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n*2^n, n)` (program `A177400.P17454640746895528794`, by `A177400.P17454640746895528794.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177400.P17454640746895528794

`C(n*2^n, n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177400

/-- `C(n*2^n, n)` -/
def P17454640746895528794.Spec : Prop :=
  ∀ n, (P17454640746895528794.a n : ℤ) = A177400 n

theorem P17454640746895528794.correct : P17454640746895528794.Spec := by
  intro n
  simp only [A177400]

end A177400

/-! ## A177400.P975954759148261012

`or(2^n, C(A036289(n), n))`
-/

namespace A177400.P975954759148261012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 ^ n) (Nat.choose (A036289 n).toNat n)

end

end A177400.P975954759148261012

namespace A177400

/-- `or(2^n, C(A036289(n), n))` -/
def P975954759148261012.Spec : Prop :=
  ∀ n, (P975954759148261012.a n : ℤ) = A177400 n

end A177400

/-! ## A177400.P17272166237000581476

`record[C(A003314(n+1), val(n+1, 2))]`
-/

namespace A177400.P17272166237000581476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003314 (n + 1)).toNat (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177400.P17272166237000581476

namespace A177400

/-- `record[C(A003314(n+1), val(n+1, 2))]` -/
def P17272166237000581476.Spec : Prop :=
  ∀ n, (P17272166237000581476.a n : ℤ) = A177400 n

end A177400

/-! ## A177400.P1103556775317056166

`record[C(A054248(n+1), val(n+1, 2))]`
-/

namespace A177400.P1103556775317056166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A054248 (n + 1)).toNat (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177400.P1103556775317056166

namespace A177400

/-- `record[C(A054248(n+1), val(n+1, 2))]` -/
def P1103556775317056166.Spec : Prop :=
  ∀ n, (P1103556775317056166.a n : ℤ) = A177400 n

end A177400

/-! ## A177400.P12970593344569169996

`record[C(2*n, A163510(n+1))]`
-/

namespace A177400.P12970593344569169996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (A163510 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177400.P12970593344569169996

namespace A177400

/-- `record[C(2*n, A163510(n+1))]` -/
def P12970593344569169996.Spec : Prop :=
  ∀ n, (P12970593344569169996.a n : ℤ) = A177400 n

end A177400

/-!
# A177401: G.f.: A(x) = Sum_{n>=0} x^n*A(x)^(n*2^n/2).

The programs for A177401, there is no canonical definition to state claims against.
-/

/-! ## A177401.P16286462682963115379

`A143740(n)-A207505(A143740(n))`
-/

namespace A177401.P16286462682963115379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143740 n - A207505 (A143740 n).toNat

end

end A177401.P16286462682963115379

/-!
# A177402: G.f.: A(x) = Sum_{n>=0} x^n*A(x)^(n*2^n).

The programs for A177402, there is no canonical definition to state claims against.
-/

/-! ## A177402.P6541890205880266209

`A003160(A069321(n))`
-/

namespace A177402.P6541890205880266209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003160 (A069321 n).toNat

end

end A177402.P6541890205880266209

/-! ## A177402.P16081012360541025439

`A386799(A381145(n))`
-/

namespace A177402.P16081012360541025439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386799 (A381145 n).toNat

end

end A177402.P16081012360541025439

/-!
# A177403: G.f.: A(x) = Sum_{n>=0} x^n*A(x)^(3*n*2^n/2).

The programs for A177403, there is no canonical definition to state claims against.
-/

/-! ## A177403.P1821549593644711124

`A239371(n)+A174695(A239368(n))`
-/

namespace A177403.P1821549593644711124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239371 n + A174695 (A239368 n).toNat

end

end A177403.P1821549593644711124

/-! ## A177403.P14225842554227254551

`A239373(n)+A174695(A239368(n))`
-/

namespace A177403.P14225842554227254551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239373 n + A174695 (A239368 n).toNat

end

end A177403.P14225842554227254551

/-!
# A177404: Numbers n such that n^2 minus (sum of the squares of the proper divisors of n) is a prime number.

The programs for A177404, there is no canonical definition to state claims against.
-/

/-! ## A177404.P12644920211354458626

`lt[A093709(A358175(n+1)), A093709(n)]`
-/

namespace A177404.P12644920211354458626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 (A358175 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A177404.P12644920211354458626

/-! ## A177404.P8670522884491026923

`A028982(record[A070879(n+4)])`
-/

namespace A177404.P8670522884491026923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070879 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A177404.P8670522884491026923

/-! ## A177404.P4687123726975134490

`A028982(A078213(n+1)+A036016(n))`
-/

namespace A177404.P4687123726975134490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A078213 (n + 1) + A036016 n).toNat

end

end A177404.P4687123726975134490

/-! ## A177404.P7222543222582208887

`A028982(A228912(n)+A078174(n+1))`
-/

namespace A177404.P7222543222582208887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (A228912 n + A078174 (n + 1)).toNat

end

end A177404.P7222543222582208887

/-! ## A177404.P6323465137734787295

`A320137(A078213(n+1)+A036016(n))`
-/

namespace A177404.P6323465137734787295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320137 (A078213 (n + 1) + A036016 n).toNat

end

end A177404.P6323465137734787295

/-!
# A177405: Form triangle of weighted Farey fractions; read numerators by rows.

The programs for A177405, there is no canonical definition to state claims against.
-/

/-! ## A177405.P16003002279278459775

`A248666(A093101(n+1))%A038722(n+1)`
-/

namespace A177405.P16003002279278459775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248666 (A093101 (n + 1)).toNat) (A038722 (n + 1))

end

end A177405.P16003002279278459775

/-! ## A177405.P3529896113118001564

`(∑[n]-floor(n/2))%A012265(A106230(n+1))`
-/

namespace A177405.P3529896113118001564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(n : ℚ) / 2⌋) (A012265 (A106230 (n + 1)).toNat)

end

end A177405.P3529896113118001564

/-! ## A177405.P8897633870664248460

`A092486(A000124(n²))%A053644(A092486(n))`
-/

namespace A177405.P8897633870664248460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092486 (A000124 (n ^ 2)).toNat) (A053644 (A092486 n).toNat)

end

end A177405.P8897633870664248460

/-! ## A177405.P9183910094760291940

`and(p?[A291149(n)], A062050(n+1))`
-/

namespace A177405.P9183910094760291940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A062050 (n + 1))

end

end A177405.P9183910094760291940

/-!
# A177408: G.f. satisfies: A(x) = x + A( 4*A(x)^4 )^(1/2).

The programs for A177408, there is no canonical definition to state claims against.
-/

/-! ## A177408.P179064856722168136

`A195119(A062992(n))`
-/

namespace A177408.P179064856722168136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (A062992 n).toNat

end

end A177408.P179064856722168136

/-! ## A177408.P15597688473325090944

`A189688(A062992(n)+1)`
-/

namespace A177408.P15597688473325090944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189688 (A062992 n + 1).toNat

end

end A177408.P15597688473325090944

/-!
# A177409: G.f. satisfies: x = A(x) - A(x)^2 - A(A(x))^2.

The programs for A177409, there is no canonical definition to state claims against.
-/

/-! ## A177409.P17511988159357642275

`∑[(C(2, n+2)+n)*A181092(n^n)]`
-/

namespace A177409.P17511988159357642275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) + n : ℤ) * A181092 (n ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177409.P17511988159357642275

/-!
# A177410: a(n) = binomial((n+1)*2^n, n)/(n+1).

The programs for A177410, the canonical program `A177410.P6040151936956707359` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177410 has offset 0).

The definition of A177410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177410.P6040151936956707359

`C((n+1)*2^n, n)/(n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177410

/-- `C((n+1)*2^n, n)/(n+1)` -/
def P6040151936956707359.Spec : Prop :=
  ∀ n, P6040151936956707359.a n = (A177410 n : ℚ)

end A177410

/-! ## A177410.P2720456870082884260

`floor(C(A001787(n+1), n)/(n+1))`
-/

namespace A177410.P2720456870082884260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (A001787 (n + 1)).toNat n : ℚ) / (n + 1 : ℚ)⌋

end

end A177410.P2720456870082884260

namespace A177410

/-- `floor(C(A001787(n+1), n)/(n+1))` -/
def P2720456870082884260.Spec : Prop :=
  ∀ n, P2720456870082884260.a n = A177410 n

end A177410

/-!
# A177411: a(n) = binomial((n+1)*2^(n+1), n)/(n+1).

The programs for A177411, the canonical program `A177411.P14039295136343991620` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177411 has offset 0).

The definition of A177411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177411.P14039295136343991620

`C((n+1)*2^(n+1), n)/(n+1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177411

/-- `C((n+1)*2^(n+1), n)/(n+1)` -/
def P14039295136343991620.Spec : Prop :=
  ∀ n, P14039295136343991620.a n = (A177411 n : ℚ)

end A177411

/-!
# A177414: Partial sums of A001334.

The programs for A177414, there is no canonical definition to state claims against.
-/

/-! ## A177414.P11114767715882943501

`∑[A001334(n)]`
-/

namespace A177414.P11114767715882943501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177414.P11114767715882943501

/-! ## A177414.P5050275328911597372

`∑[A177238(n)-A001411(n)]`
-/

namespace A177414.P5050275328911597372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177238 n - A001411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177414.P5050275328911597372

/-! ## A177414.P9037391195856868807

`A001334(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A177414.P9037391195856868807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001334 n + a (A023443 n).toNat

end

end A177414.P9037391195856868807

/-! ## A177414.P17626744566895951618

`A001334(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A177414.P17626744566895951618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001334 n + a (A028310 n - 1).toNat

end

end A177414.P17626744566895951618

/-! ## A177414.P18135861864191684455

`A001334(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A177414.P18135861864191684455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001334 n + a ((n : ℤ) - A057427 n).toNat

end

end A177414.P18135861864191684455

/-!
# A177415: Smallest prime divisor of the n-th base-2 pseudoprime.

The programs for A177415, there is no canonical definition to state claims against.
-/

/-! ## A177415.P2154233088993975018

`A020639(A001567(n+1))`
-/

namespace A177415.P2154233088993975018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001567 (n + 1)).toNat

end

end A177415.P2154233088993975018

/-! ## A177415.P2018291853207102757

`A020639(∩[A020136(n+1), A020137(n+1)])`
-/

namespace A177415.P2018291853207102757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A177415.P2018291853207102757

/-! ## A177415.P14153954966428445403

`A020639(∩[A020137(n+1), A020144(n+1)])`
-/

namespace A177415.P14153954966428445403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A177415.P14153954966428445403

/-! ## A177415.P7097920544551865419

`A020639(∩[A020136(n+1), A020160(n+1)])`
-/

namespace A177415.P7097920544551865419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020160 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A177415.P7097920544551865419

/-! ## A177415.P16837028794070620863

`A020639(∩[A020137(n+1), A020160(n+1)])`
-/

namespace A177415.P16837028794070620863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020160 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A177415.P16837028794070620863

/-! ## A177415.P6650152073667674077

`A020639(A300101(n+1)*A306413(n+1)+1)`
-/

namespace A177415.P6650152073667674077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A300101 (n + 1) * A306413 (n + 1) + 1).toNat

end

end A177415.P6650152073667674077

/-! ## A177415.P2612068732183035753

`A304042(n)+A057237(A001567(n+1))`
-/

namespace A177415.P2612068732183035753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n + A057237 (A001567 (n + 1)).toNat

end

end A177415.P2612068732183035753

/-! ## A177415.P17473781748971289789

`A057237(A300101(n+1)*A306413(n+1)+1)+1`
-/

namespace A177415.P17473781748971289789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A300101 (n + 1) * A306413 (n + 1) + 1).toNat + 1

end

end A177415.P17473781748971289789

/-! ## A177415.P11580235948396688358

`A057237(A001567(n+1))+A057237(A057237(n+1))`
-/

namespace A177415.P11580235948396688358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A001567 (n + 1)).toNat + A057237 (A057237 (n + 1)).toNat

end

end A177415.P11580235948396688358

/-!
# A177416: Triangle read by rows: T(n,k) = 2^A141468(n) mod prime(k).

The programs for A177416, there is no canonical definition to state claims against.
-/

/-! ## A177416.P1067768277201371604

`A038722(A051437(n))%A095666(n)`
-/

namespace A177416.P1067768277201371604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038722 (A051437 n).toNat) (A095666 n)

end

end A177416.P1067768277201371604

/-! ## A177416.P16856281530304279463

`A174699(n)+A023533(A093081(n+1))`
-/

namespace A177416.P16856281530304279463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174699 n + A023533 (A093081 (n + 1)).toNat

end

end A177416.P16856281530304279463

/-! ## A177416.P10950491631175263248

`and(A079673(n+1), A154313(A154323(n)))`
-/

namespace A177416.P10950491631175263248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A079673 (n + 1)) (A154313 (A154323 n).toNat)

end

end A177416.P10950491631175263248

/-! ## A177416.P4235059975426332274

`A348676(A137688(2*n+1))%A037126(n+1)`
-/

namespace A177416.P4235059975426332274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348676 (A137688 (2 * n + 1)).toNat) (A037126 (n + 1))

end

end A177416.P4235059975426332274

/-! ## A177416.P3070959262645114614

`A182858(A344563(n))`
-/

namespace A177416.P3070959262645114614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182858 (A344563 n).toNat

end

end A177416.P3070959262645114614

/-!
# A177420: a(n) = 6*a(n-1)-8*a(n-2) for n > 10; a(0)=221, a(1)=2754, a(2)=12456, a(3)=77697, a(4)=589869, a(5)=5333271, a(6)=48222198, a(7)=218509695, a(8)=3071851356, a(9)=12683673552, a(10)=51137150880.

The programs for A177420, there is no canonical definition to state claims against.
-/

/-! ## A177420.P9151599335720369204

`A075268(4*n)/2`
-/

namespace A177420.P9151599335720369204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075268 (4 * n) : ℚ) / 2

end

end A177420.P9151599335720369204

/-!
# A177421: a(n) = 6*a(n-1)-8*a(n-2)-9 for n > 10; a(0)=629, a(1)=6585, a(2)=26259, a(3)=221931, a(4)=1917027, a(5)=18285939, a(6)=125792217, a(7)=703932681, a(8)=7131271077, a(9)=26172260445, a(10)=103884128445.

The programs for A177421, there is no canonical definition to state claims against.
-/

/-! ## A177421.P7901779466930211268

`A075268(4*n+1)`
-/

namespace A177421.P7901779466930211268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075268 (4 * n + 1)

end

end A177421.P7901779466930211268

/-! ## A177421.P7969070153850638111

`or(1, A075268(xor(1, 4*n)))`
-/

namespace A177421.P7969070153850638111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A075268 (Nat.xor 1 (4 * n)))

end

end A177421.P7969070153850638111

/-! ## A177421.P2473383271173617533

`record[A075268(A058281(n))]`
-/

namespace A177421.P2473383271173617533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075268 (A058281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177421.P2473383271173617533

/-! ## A177421.P12005199690240626248

`record[A075268(A266072(n))]`
-/

namespace A177421.P12005199690240626248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075268 (A266072 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177421.P12005199690240626248

/-! ## A177421.P17781921966169751744

`or(1, A075268(A016813(n)))`
-/

namespace A177421.P17781921966169751744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A075268 (A016813 n).toNat)

end

end A177421.P17781921966169751744

/-! ## A177421.P10433867900981343148

`A075268(xor(1, 4*n))*A260534(A000124(n))`
-/

namespace A177421.P10433867900981343148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075268 (Nat.xor 1 (4 * n)) * A260534 (A000124 n).toNat

end

end A177421.P10433867900981343148

/-! ## A177421.P3111952799999158300

`A075268(xor(1, 4*n))-A055671(n²)`
-/

namespace A177421.P3111952799999158300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075268 (Nat.xor 1 (4 * n)) - A055671 (n ^ 2)

end

end A177421.P3111952799999158300

/-! ## A177421.P16008541195260998949

`A151909(n)!*A075268(xor(1, 4*n))`
-/

namespace A177421.P16008541195260998949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151909 n).toNat : ℤ) * A075268 (Nat.xor 1 (4 * n))

end

end A177421.P16008541195260998949

/-!
# A177422: a(n) = 6*a(n-1)-8*a(n-2) for n > 10; a(0)=221, a(1)=1938, a(2)=8673, a(3)=73729, a(4)=589855, a(5)=7561526, a(6)=34593784, a(7)=218391421, a(8)=2116566392, a(9)=8522858480, a(10)=34225586144.

The programs for A177422, there is no canonical definition to state claims against.
-/

/-! ## A177422.P11652954602640265915

`A075268(4*n+2)/6`
-/

namespace A177422.P11652954602640265915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075268 (4 * n + 2) : ℚ) / 6

end

end A177422.P11652954602640265915

/-!
# A177423: a(n) = 6*a(n-1)-8*a(n-2)-3 for n > 10; a(0)=753, a(1)=5043, a(2)=25779, a(3)=213003, a(4)=1687623, a(5)=18171219, a(6)=73344977, a(7)=769993485, a(8)=4480470831, a(9)=17582325855, a(10)=69524390079.

The programs for A177423, there is no canonical definition to state claims against.
-/

/-! ## A177423.P7792158630743042307

`A075268(4*n+3)/3`
-/

namespace A177423.P7792158630743042307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075268 (4 * n + 3) : ℚ) / 3

end

end A177423.P7792158630743042307

/-!
# A177424: Exponent of the highest power of 2 dividing binomial(n^2,n).

The programs for A177424, the canonical program `A177424.P5885346958814520556` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177424 has offset 0).

The definition of A177424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177424.P5885346958814520556

`A000120(C(n, 2))-A232243(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A177424

/-- `A000120(C(n, 2))-A232243(n)` -/
def P5885346958814520556.Spec : Prop :=
  ∀ n, P5885346958814520556.a n = A177424 n

theorem P5885346958814520556.correct : P5885346958814520556.Spec := by
  intro n
  simp only [A177424]

end A177424

/-! ## A177424.P15408235768523319440

`A000120(∑[n]-n)-A232243(n)`
-/

namespace A177424.P15408235768523319440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ j ∈ Finset.range (n + 1), f1 j - n) - A232243 n

end

end A177424.P15408235768523319440

namespace A177424

/-- `A000120(∑[n]-n)-A232243(n)` -/
def P15408235768523319440.Spec : Prop :=
  ∀ n, P15408235768523319440.a n = A177424 n

end A177424

/-! ## A177424.P9511573277729379318

`(A000120(A000217(n)-n)-A232243(n))%(n+1)`
-/

namespace A177424.P9511573277729379318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A000217 n - (n : ℤ)).toNat - A232243 n) (n + 1 : ℤ)

end

end A177424.P9511573277729379318

namespace A177424

/-- `(A000120(A000217(n)-n)-A232243(n))%(n+1)` -/
def P9511573277729379318.Spec : Prop :=
  ∀ n, P9511573277729379318.a n = A177424 n

end A177424

/-! ## A177424.P5304852203583393679

`abs(A000120(n²-n)-A232243(n))`
-/

namespace A177424.P5304852203583393679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000120 (n ^ 2 - n) - A232243 n|

end

end A177424.P5304852203583393679

namespace A177424

/-- `abs(A000120(n²-n)-A232243(n))` -/
def P5304852203583393679.Spec : Prop :=
  ∀ n, P5304852203583393679.a n = A177424 n

end A177424

/-! ## A177424.P6049088383300777376

`A000120((1-n)²+n)-(A232243(n)+1)`
-/

namespace A177424.P6049088383300777376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat - (A232243 n + 1)

end

end A177424.P6049088383300777376

namespace A177424

/-- `A000120((1-n)²+n)-(A232243(n)+1)` -/
def P6049088383300777376.Spec : Prop :=
  ∀ n, P6049088383300777376.a n = A177424 n

end A177424

/-! ## A177424.P13459188242486337180

`(A000120(n²-n)-A232243(n))%A008499(n)`
-/

namespace A177424.P13459188242486337180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (n ^ 2 - n) - A232243 n) (A008499 n)

end

end A177424.P13459188242486337180

namespace A177424

/-- `(A000120(n²-n)-A232243(n))%A008499(n)` -/
def P13459188242486337180.Spec : Prop :=
  ∀ n, P13459188242486337180.a n = A177424 n

end A177424

/-! ## A177424.P17516209050355550461

`A000120(xor(n, xor(n²-n, n²)))`
-/

namespace A177424.P17516209050355550461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (n : ℤ) (Int.xor ((n ^ 2 : ℤ) - (n : ℤ)) (n ^ 2 : ℤ))).toNat

end

end A177424.P17516209050355550461

namespace A177424

/-- `A000120(xor(n, xor(n²-n, n²)))` -/
def P17516209050355550461.Spec : Prop :=
  ∀ n, P17516209050355550461.a n = A177424 n

end A177424

/-! ## A177424.P9594612534022264093

`val(C(floor(n²/2), floor(n/2)), 2)`
-/

namespace A177424.P9594612534022264093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose ⌊(n ^ 2 : ℚ) / 2⌋.toNat ⌊(n : ℚ) / 2⌋.toNat) 2

end

end A177424.P9594612534022264093

namespace A177424

/-- `val(C(floor(n²/2), floor(n/2)), 2)` -/
def P9594612534022264093.Spec : Prop :=
  ∀ n, (P9594612534022264093.a n : ℤ) = A177424 n

end A177424

/-! ## A177424.P11967355560823884640

`val(A091144(n), 2)`
-/

namespace A177424.P11967355560823884640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A091144 n).toNat 2

end

end A177424.P11967355560823884640

namespace A177424

/-- `val(A091144(n), 2)` -/
def P11967355560823884640.Spec : Prop :=
  ∀ n, (P11967355560823884640.a n : ℤ) = A177424 n

end A177424

/-!
# A177425: Integers with multiple and strictly distinct powers.

The programs for A177425, the canonical program `A177425.P11396916021114919551` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177425 has offset 1).

The definition of A177425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5600 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177425.P11396916021114919551

`filter[A130091(n+1), A355447(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A177425

/-- `filter[A130091(n+1), A355447(#)]` -/
def P11396916021114919551.Spec : Prop :=
  ∀ n, P11396916021114919551.a n = A177425 (n + 1)

theorem P11396916021114919551.correct : P11396916021114919551.Spec := by
  intro n
  simp only [A177425, Nat.add_sub_cancel]

end A177425

/-! ## A177425.P4854548246188388502

`filter[A242416(n+1), A351564(#)]`
-/

namespace A177425.P4854548246188388502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A177425.P4854548246188388502

namespace A177425

/-- `filter[A242416(n+1), A351564(#)]` -/
def P4854548246188388502.Spec : Prop :=
  ∀ n, P4854548246188388502.a n = A177425 (n + 1)

end A177425

/-! ## A177425.P9706332837109064082

`∩[A130091(n+1), A242416(n+1)]`
-/

namespace A177425.P9706332837109064082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177425.P9706332837109064082

namespace A177425

/-- `∩[A130091(n+1), A242416(n+1)]` -/
def P9706332837109064082.Spec : Prop :=
  ∀ n, (P9706332837109064082.a n : ℤ) = A177425 (n + 1)

end A177425

/-! ## A177425.P5797624414453280750

`filter[A376250(n+1), A351564(#)]`
-/

namespace A177425.P5797624414453280750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A177425.P5797624414453280750

namespace A177425

/-- `filter[A376250(n+1), A351564(#)]` -/
def P5797624414453280750.Spec : Prop :=
  ∀ n, P5797624414453280750.a n = A177425 (n + 1)

end A177425

/-! ## A177425.P14714945024261314444

`filter[A059404(n+1), A351564(#)]`
-/

namespace A177425.P14714945024261314444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A177425.P14714945024261314444

namespace A177425

/-- `filter[A059404(n+1), A351564(#)]` -/
def P14714945024261314444.Spec : Prop :=
  ∀ n, P14714945024261314444.a n = A177425 (n + 1)

end A177425

/-! ## A177425.P12280578424706615644

`∩[A059404(n+1), A130091(n+1)]`
-/

namespace A177425.P12280578424706615644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177425.P12280578424706615644

namespace A177425

/-- `∩[A059404(n+1), A130091(n+1)]` -/
def P12280578424706615644.Spec : Prop :=
  ∀ n, (P12280578424706615644.a n : ℤ) = A177425 (n + 1)

end A177425

/-! ## A177425.P12059548433637723536

`filter[A126706(n+1), A351564(#)]`
-/

namespace A177425.P12059548433637723536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A177425.P12059548433637723536

namespace A177425

/-- `filter[A126706(n+1), A351564(#)]` -/
def P12059548433637723536.Spec : Prop :=
  ∀ n, P12059548433637723536.a n = A177425 (n + 1)

end A177425

/-! ## A177425.P11420443908135166936

`∩[A126706(n+1), A130091(n+1)]`
-/

namespace A177425.P11420443908135166936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177425.P11420443908135166936

namespace A177425

/-- `∩[A126706(n+1), A130091(n+1)]` -/
def P11420443908135166936.Spec : Prop :=
  ∀ n, (P11420443908135166936.a n : ℤ) = A177425 (n + 1)

end A177425

/-! ## A177425.P6999782803420831293

`filter[A024619(n+1), A351564(#)]`
-/

namespace A177425.P6999782803420831293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A177425.P6999782803420831293

namespace A177425

/-- `filter[A024619(n+1), A351564(#)]` -/
def P6999782803420831293.Spec : Prop :=
  ∀ n, P6999782803420831293.a n = A177425 (n + 1)

end A177425

/-! ## A177425.P3161904790908207297

`∩[A024619(n+1), A130091(n+1)]`
-/

namespace A177425.P3161904790908207297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177425.P3161904790908207297

namespace A177425

/-- `∩[A024619(n+1), A130091(n+1)]` -/
def P3161904790908207297.Spec : Prop :=
  ∀ n, (P3161904790908207297.a n : ℤ) = A177425 (n + 1)

end A177425

/-! ## A177425.P8333777153629662853

`filter[A361102(n+2), A351564(#)]`
-/

namespace A177425.P8333777153629662853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A177425.P8333777153629662853

namespace A177425

/-- `filter[A361102(n+2), A351564(#)]` -/
def P8333777153629662853.Spec : Prop :=
  ∀ n, P8333777153629662853.a n = A177425 (n + 1)

end A177425

/-! ## A177425.P7395756039951229681

`record[A327498(A059404(n+1))]`
-/

namespace A177425.P7395756039951229681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A059404 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177425.P7395756039951229681

namespace A177425

/-- `record[A327498(A059404(n+1))]` -/
def P7395756039951229681.Spec : Prop :=
  ∀ n, P7395756039951229681.a n = A177425 (n + 1)

end A177425

/-! ## A177425.P16937996562201442108

`record[A327498(A126706(n+1))]`
-/

namespace A177425.P16937996562201442108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A126706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177425.P16937996562201442108

namespace A177425

/-- `record[A327498(A126706(n+1))]` -/
def P16937996562201442108.Spec : Prop :=
  ∀ n, P16937996562201442108.a n = A177425 (n + 1)

end A177425

/-! ## A177425.P10056649315581073010

`filter[A130091(n+1), A143731(#)]`
-/

namespace A177425.P10056649315581073010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A177425.P10056649315581073010

namespace A177425

/-- `filter[A130091(n+1), A143731(#)]` -/
def P10056649315581073010.Spec : Prop :=
  ∀ n, P10056649315581073010.a n = A177425 (n + 1)

end A177425

/-! ## A177425.P2533284296617852926

`eq[A074591(n+1), A327498(n+1)]+1`
-/

namespace A177425.P2533284296617852926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A177425.P2533284296617852926

namespace A177425

/-- `eq[A074591(n+1), A327498(n+1)]+1` -/
def P2533284296617852926.Spec : Prop :=
  ∀ n, (P2533284296617852926.a n : ℤ) = A177425 (n + 1)

end A177425

/-! ## A177425.P18314985962833676763

`A153152(eq[A074591(n+1), A327498(n+1)])`
-/

namespace A177425.P18314985962833676763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A177425.P18314985962833676763

namespace A177425

/-- `A153152(eq[A074591(n+1), A327498(n+1)])` -/
def P18314985962833676763.Spec : Prop :=
  ∀ n, P18314985962833676763.a n = A177425 (n + 1)

end A177425

/-!
# A177426: Average of twin prime pairs with multiple and strictly distinct powers.

The programs for A177426, the canonical program `A177426.P13907797116987976749` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177426 has offset 1).

The definition of A177426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177426.P13907797116987976749

`∩[A342028(n+1), A370395(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A177426

/-- `∩[A342028(n+1), A370395(n+1)]` -/
def P13907797116987976749.Spec : Prop :=
  ∀ n, (P13907797116987976749.a n : ℤ) = A177426 (n + 1)

theorem P13907797116987976749.correct : P13907797116987976749.Spec := by
  intro n
  simp only [A177426, Nat.add_sub_cancel]

end A177426

/-! ## A177426.P16736927850859082880

`∩[A014574(n+1), A177425(n+1)]`
-/

namespace A177426.P16736927850859082880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177426.P16736927850859082880

namespace A177426

/-- `∩[A014574(n+1), A177425(n+1)]` -/
def P16736927850859082880.Spec : Prop :=
  ∀ n, (P16736927850859082880.a n : ℤ) = A177426 (n + 1)

end A177426

/-! ## A177426.P1411907849608332937

`∩[A167706(n+1), A177425(n+1)]`
-/

namespace A177426.P1411907849608332937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177426.P1411907849608332937

namespace A177426

/-- `∩[A167706(n+1), A177425(n+1)]` -/
def P1411907849608332937.Spec : Prop :=
  ∀ n, (P1411907849608332937.a n : ℤ) = A177426 (n + 1)

end A177426

/-! ## A177426.P13464967443223095398

`∩[A174219(n+1), A177425(n+1)]`
-/

namespace A177426.P13464967443223095398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177426.P13464967443223095398

namespace A177426

/-- `∩[A174219(n+1), A177425(n+1)]` -/
def P13464967443223095398.Spec : Prop :=
  ∀ n, (P13464967443223095398.a n : ℤ) = A177426 (n + 1)

end A177426

/-! ## A177426.P9749284412895043543

`∩[A177425(n+1), A370395(n+1)]`
-/

namespace A177426.P9749284412895043543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177426.P9749284412895043543

namespace A177426

/-- `∩[A177425(n+1), A370395(n+1)]` -/
def P9749284412895043543.Spec : Prop :=
  ∀ n, (P9749284412895043543.a n : ℤ) = A177426 (n + 1)

end A177426

/-! ## A177426.P2691159521655024448

`filter[A370395(n+1), A351564(#)]`
-/

namespace A177426.P2691159521655024448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A177426.P2691159521655024448

namespace A177426

/-- `filter[A370395(n+1), A351564(#)]` -/
def P2691159521655024448.Spec : Prop :=
  ∀ n, P2691159521655024448.a n = A177426 (n + 1)

end A177426

/-! ## A177426.P1688324074870483868

`filter[A014574(n+2), A351564(#)]`
-/

namespace A177426.P1688324074870483868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A177426.P1688324074870483868

namespace A177426

/-- `filter[A014574(n+2), A351564(#)]` -/
def P1688324074870483868.Spec : Prop :=
  ∀ n, P1688324074870483868.a n = A177426 (n + 1)

end A177426

/-! ## A177426.P801365137559434996

`filter[A163656(2*(n+1)), A351564(#)]`
-/

namespace A177426.P801365137559434996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163656 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A177426.P801365137559434996

namespace A177426

/-- `filter[A163656(2*(n+1)), A351564(#)]` -/
def P801365137559434996.Spec : Prop :=
  ∀ n, P801365137559434996.a n = A177426 (n + 1)

end A177426

/-!
# A177427: Numerators of the Inverse Akiyama-Tanigawa transform of the aerated even-indexed Bernoulli numbers 1, 0, 1/6, 0, -1/30, 0, 1/42, ...

The programs for A177427, there is no canonical definition to state claims against.
-/

/-! ## A177427.P8256499020750057296

`A000265(A096617(n+1)+A027611(n+1))`
-/

namespace A177427.P8256499020750057296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A096617 (n + 1) + A027611 (n + 1)).toNat

end

end A177427.P8256499020750057296

/-! ## A177427.P4263747594836181309

`A000265(A213999(∑[n+2]-2)+A096617(n+1))`
-/

namespace A177427.P4263747594836181309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A213999 (∑ j ∈ Finset.range (n + 1), f1 j - 2) + A096617 (n + 1)).toNat

end

end A177427.P4263747594836181309

/-! ## A177427.P13599211933588377110

`A000265(A096617(n+1)+lcm(n+1, A002805(n+1))/(n+1))`
-/

namespace A177427.P13599211933588377110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A096617 (n + 1) : ℚ) + (Int.lcm (n + 1 : ℤ) (A002805 (n + 1)) : ℚ) / (n + 1 : ℚ))).toNat

end

end A177427.P13599211933588377110

/-! ## A177427.P1725642392181830806

`A000265(A096617(n+1)+A002805(n+1)/(n+1)*A120263(n+1))`
-/

namespace A177427.P1725642392181830806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A096617 (n + 1) : ℚ) + (A002805 (n + 1) : ℚ) / (n + 1 : ℚ) * (A120263 (n + 1) : ℚ))).toNat

end

end A177427.P1725642392181830806

/-! ## A177427.P5860479977372389566

`A051724(A025529(n+1)+A002944(n+1))`
-/

namespace A177427.P5860479977372389566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A025529 (n + 1) + A002944 (n + 1)).toNat

end

end A177427.P5860479977372389566

/-!
# A177428: Triangle T(n,m)= A141686(n,m)*(m-1)! read by rows, n>=1, 1<=m<=n.

The programs for A177428, there is no canonical definition to state claims against.
-/

/-! ## A177428.P8542021470132731873

`A008279(n)*A008292(n+1)`
-/

namespace A177428.P8542021470132731873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A008292 (n + 1)

end

end A177428.P8542021470132731873

/-! ## A177428.P14962896698193935097

`A141686(n+1)*A233543(n)`
-/

namespace A177428.P14962896698193935097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141686 (n + 1) * A233543 n

end

end A177428.P14962896698193935097

/-! ## A177428.P14258024050512132867

`A008279(n)*A123125(comp[∑[n]])`
-/

namespace A177428.P14258024050512132867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A177428.P14258024050512132867

/-! ## A177428.P4473522912159070060

`A002262(n)!*A141686(n+1)`
-/

namespace A177428.P4473522912159070060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A141686 (n + 1)

end

end A177428.P4473522912159070060

/-! ## A177428.P15500152239201029228

`sqrt(A177823(n+1))*A008279(n)`
-/

namespace A177428.P15500152239201029228
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A177823 (n + 1) : ℝ) * (A008279 n : ℝ)

end

end A177428.P15500152239201029228

/-!
# A177429: Triangle read by rows: T(n,m)=A060187(1+n,1+m) *n! / (n-m)!

The programs for A177429, there is no canonical definition to state claims against.
-/

/-! ## A177429.P14516248745576129146

`A008279(n)*A060187(n+1)`
-/

namespace A177429.P14516248745576129146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A060187 (n + 1)

end

end A177429.P14516248745576129146

/-! ## A177429.P14343546531541915989

`A060187(n+1)*A094587(A061579(n))`
-/

namespace A177429.P14343546531541915989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) * A094587 (A061579 n).toNat

end

end A177429.P14343546531541915989

/-! ## A177429.P18180196657302933881

`A008279(n)/A137688(n)*A257612(n)`
-/

namespace A177429.P18180196657302933881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) / (A137688 n : ℚ) * (A257612 n : ℚ)

end

end A177429.P18180196657302933881

/-! ## A177429.P4966325330512882040

`(A176200(n)+1-A154338(n))*A008279(n)`
-/

namespace A177429.P4966325330512882040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176200 n + (1 - A154338 n)) * A008279 n

end

end A177429.P4966325330512882040

/-! ## A177429.P2258541002604780475

`A060187(n+1)/A130595(n)*A021010(n)`
-/

namespace A177429.P2258541002604780475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060187 (n + 1) : ℚ) / (A130595 n : ℚ) * (A021010 n : ℚ)

end

end A177429.P2258541002604780475

/-!
# A177430: Least monotonically increasing logarithmic derivative consisting of only squares.

The programs for A177430, there is no canonical definition to state claims against.
-/

/-! ## A177430.P13636032260975037758

`A177431(n+1)²`
-/

namespace A177430.P13636032260975037758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177431 (n + 1) ^ 2

end

end A177430.P13636032260975037758

/-! ## A177430.P8660200363253045293

`A177431(Δ[n²]-n)^2`
-/

namespace A177430.P8660200363253045293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177431 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2

end

end A177430.P8660200363253045293

/-! ## A177430.P16433769465525055470

`record[A177431(A022446(n))²]`
-/

namespace A177430.P16433769465525055470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177431 (A022446 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177430.P16433769465525055470

/-! ## A177430.P5348111729577180774

`record[A177431(A028920(n))²]`
-/

namespace A177430.P5348111729577180774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177431 (A028920 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177430.P5348111729577180774

/-! ## A177430.P14530944606733338126

`record[A177431(A065648(n))²]`
-/

namespace A177430.P14530944606733338126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177431 (A065648 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177430.P14530944606733338126

/-!
# A177431: a(n) = sqrt(A177430(n)) where A177430 is the least monotonically increasing logarithmic derivative consisting of only squares.

The programs for A177431, there is no canonical definition to state claims against.
-/

/-! ## A177431.P738523436050895671

`sqrt(A177430(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177431.P738523436050895671
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A177430 (n + 1) : ℝ)

end

end A177431.P738523436050895671

/-! ## A177431.P12419001199653378951

`round(sqrt(A177430(Δ[n²]-n)))`
-/

namespace A177431.P12419001199653378951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A177430 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ))

end

end A177431.P12419001199653378951

/-! ## A177431.P1176868935907344279

`∑{d}[root(A177430(n+1), 2), A000010(#)]`
-/

namespace A177431.P1176868935907344279
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A177430 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A177431.P1176868935907344279

/-! ## A177431.P2685903050917759476

`root(A177430(n+1), 2)*A007318(∑[n])`
-/

namespace A177431.P2685903050917759476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A177430 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A177431.P2685903050917759476

/-! ## A177431.P607906278312995575

`A000194(A177430(n+1)+1)`
-/

namespace A177431.P607906278312995575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A177430 (n + 1) + 1).toNat

end

end A177431.P607906278312995575

/-!
# A177432: G.f.: A(x) = exp(Sum_{n>=1} A177430(n)*x^n/n) where A177430 is the least monotonically increasing logarithmic derivative consisting of only squares.

The programs for A177432, there is no canonical definition to state claims against.
-/

/-! ## A177432.P14393041563137552735

`A345167(A036256(n))+A061547(n)`
-/

namespace A177432.P14393041563137552735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345167 (A036256 n).toNat + A061547 n

end

end A177432.P14393041563137552735

/-! ## A177432.P13110917445984366560

`A262028(A157274(n))+A132461(n)`
-/

namespace A177432.P13110917445984366560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262028 (A157274 n).toNat + A132461 n

end

end A177432.P13110917445984366560

/-! ## A177432.P4186903502925633571

`A324686(A157630(n))+A132461(n)`
-/

namespace A177432.P4186903502925633571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324686 (A157630 n).toNat + A132461 n

end

end A177432.P4186903502925633571

/-!
# A177435: The smallest prime p such that p//9_(n), its concatenation with n nines, is prime.

The programs for A177435, there is no canonical definition to state claims against.
-/

/-! ## A177435.P7776901438956418312

`p?[Δ[A337315(A047480(n+1))]]`
-/

namespace A177435.P7776901438956418312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337315 (A047480 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177435.P7776901438956418312

/-! ## A177435.P1764905650558469465

`p?[and(A227394(2*n+1), A231663(2*n+1))]`
-/

namespace A177435.P1764905650558469465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A227394 (2 * n + 1)) (A231663 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177435.P1764905650558469465

/-! ## A177435.P10440543490147470485

`A096916(A135436(n+1)+A024323(n+1))`
-/

namespace A177435.P10440543490147470485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096916 (A135436 (n + 1) + A024323 (n + 1)).toNat

end

end A177435.P10440543490147470485

/-! ## A177435.P5377678712308967329

`p?[A333432(A030677(n+1))+A333432(n+1)]`
-/

namespace A177435.P5377678712308967329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333432 (A030677 (n + 1)).toNat + A333432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177435.P5377678712308967329

/-!
# A177439: a(n) = number of vertex-critical graphs on n+3 vertices.

The programs for A177439, there is no canonical definition to state claims against.
-/

/-! ## A177439.P695427089634927188

`A152823(or(3*n%2, A155626(n)))`
-/

namespace A177439.P695427089634927188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152823 (Int.lor ((3 * (n % 2) : ℕ) : ℤ) (A155626 n)).toNat

end

end A177439.P695427089634927188

/-! ## A177439.P7964358849467801312

`and(∑[A057463(3*n+1)], A057480(n+1))`
-/

namespace A177439.P7964358849467801312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057463 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A057480 (n + 1))

end

end A177439.P7964358849467801312

/-!
# A177441: Partial sums of A014597.

The programs for A177441, there is no canonical definition to state claims against.
-/

/-! ## A177441.P1356828691542534711

`∑[A014597(n+1)]`
-/

namespace A177441.P1356828691542534711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177441.P1356828691542534711

/-! ## A177441.P18226493675509926724

`∑[sqrt(A025494(n+2))]-1`
-/

namespace A177441.P18226493675509926724
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A025494 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A177441.P18226493675509926724

/-! ## A177441.P11786944654883162592

`∑[record[A014597(A000119(n))]]`
-/

namespace A177441.P11786944654883162592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014597 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177441.P11786944654883162592

/-! ## A177441.P17254710957772344067

`∑[record[A014597(A116549(n))]]`
-/

namespace A177441.P17254710957772344067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014597 (A116549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177441.P17254710957772344067

/-! ## A177441.P17469644525778718543

`∑[record[A014597(A133310(n))]]`
-/

namespace A177441.P17469644525778718543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014597 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177441.P17469644525778718543

/-!
# A177443: Triangle, row sums = A007729; derived from the generator for A002487, Stern's diatomic series.

The programs for A177443, there is no canonical definition to state claims against.
-/

/-! ## A177443.P7484421861105346533

`A001222(A183322(n+4)^A052553(n))`
-/

namespace A177443.P7484421861105346533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A183322 (n + 4) : ℚ) ^ (A052553 n : ℤ))).toNat

end

end A177443.P7484421861105346533

/-! ## A177443.P7540267045730532405

`A303536(A005183(n)*A217593(n))`
-/

namespace A177443.P7540267045730532405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 (A005183 n * A217593 n).toNat

end

end A177443.P7540267045730532405

/-! ## A177443.P13395241506617741463

`A303536(lcm(A005183(n), A217593(n)))`
-/

namespace A177443.P13395241506617741463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 (Int.lcm (A005183 n) (A217593 n))

end

end A177443.P13395241506617741463

/-! ## A177443.P14438388524442522324

`A001221(C(A286461(n+2), A177446(n)))`
-/

namespace A177443.P14438388524442522324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A286461 (n + 2)).toNat (A177446 n).toNat)

end

end A177443.P14438388524442522324

/-!
# A177444: Triangle by columns, (1, 1, 0, 1, 0, 0, 0, ...); shifted down twice for columns > 0.

The programs for A177444, the canonical program `A177444.P16434865421593336821` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177444 has offset 0).

The definition of A177444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177444.P16434865421593336821

`char[∑[n^and(1, n)-a(n-2)]]` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177444

/-- `char[∑[n^and(1, n)-a(n-2)]]` -/
def P16434865421593336821.Spec : Prop :=
  ∀ n, (P16434865421593336821.a n : ℤ) = A177444 n

theorem P16434865421593336821.correct : P16434865421593336821.Spec := by
  intro n
  simp only [A177444]

end A177444

/-! ## A177444.P5698805726914910335

`char[ceil((floor(n/2)²+n)/2)-gcd(4, n)%4]`
-/

namespace A177444.P5698805726914910335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(n : ℚ) / 2⌋ ^ 2 + (n : ℤ) : ℚ) / 2⌉ - ((Nat.gcd 4 n % 4 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A177444.P5698805726914910335

namespace A177444

/-- `char[ceil((floor(n/2)²+n)/2)-gcd(4, n)%4]` -/
def P5698805726914910335.Spec : Prop :=
  ∀ n, (P5698805726914910335.a n : ℤ) = A177444 n

end A177444

/-! ## A177444.P7936515574419920784

`char[∑[∑[n]%A098181(n)]]`
-/

namespace A177444.P7936515574419920784
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) (A098181 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A177444.P7936515574419920784

namespace A177444

/-- `char[∑[∑[n]%A098181(n)]]` -/
def P7936515574419920784.Spec : Prop :=
  ∀ n, (P7936515574419920784.a n : ℤ) = A177444 n

end A177444

/-! ## A177444.P16708857779178101973

`char[∑[xor(1, A087508(2*n+1))]]`
-/

namespace A177444.P16708857779178101973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A087508 (2 * n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A177444.P16708857779178101973

namespace A177444

/-- `char[∑[xor(1, A087508(2*n+1))]]` -/
def P16708857779178101973.Spec : Prop :=
  ∀ n, (P16708857779178101973.a n : ℤ) = A177444 n

end A177444

/-! ## A177444.P3465913226174660080

`C(2, A000010(n²%comp[∑[n]]+3))`
-/

namespace A177444.P3465913226174660080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000010 (n ^ 2 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3)).toNat

end

end A177444.P3465913226174660080

namespace A177444

/-- `C(2, A000010(n²%comp[∑[n]]+3))` -/
def P3465913226174660080.Spec : Prop :=
  ∀ n, (P3465913226174660080.a n : ℤ) = A177444 n

end A177444

/-! ## A177444.P8578444981909391077

`char[∑[A110090(n)]-∑[(n+1)%3]]`
-/

namespace A177444.P8578444981909391077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110090 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A177444.P8578444981909391077

namespace A177444

/-- `char[∑[A110090(n)]-∑[(n+1)%3]]` -/
def P8578444981909391077.Spec : Prop :=
  ∀ n, (P8578444981909391077.a n : ℤ) = A177444 n

end A177444

/-! ## A177444.P14240940410072251279

`A329670(A348596(n))`
-/

namespace A177444.P14240940410072251279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329670 (A348596 n).toNat

end

end A177444.P14240940410072251279

namespace A177444

/-- `A329670(A348596(n))` -/
def P14240940410072251279.Spec : Prop :=
  ∀ n, P14240940410072251279.a n = A177444 n

end A177444

/-! ## A177444.P2104322599612455097

`A216230(or(n, A216230(n+1)))`
-/

namespace A177444.P2104322599612455097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216230 (Int.lor (n : ℤ) (A216230 (n + 1))).toNat

end

end A177444.P2104322599612455097

namespace A177444

/-- `A216230(or(n, A216230(n+1)))` -/
def P2104322599612455097.Spec : Prop :=
  ∀ n, P2104322599612455097.a n = A177444 n

end A177444

/-! ## A177444.P16574700907426367419

`A077605(n+1)*A101688(n+1)-A077606(n+2)`
-/

namespace A177444.P16574700907426367419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077605 (n + 1) * A101688 (n + 1) - A077606 (n + 2)

end

end A177444.P16574700907426367419

namespace A177444

/-- `A077605(n+1)*A101688(n+1)-A077606(n+2)` -/
def P16574700907426367419.Spec : Prop :=
  ∀ n, P16574700907426367419.a n = A177444 n

end A177444

/-! ## A177444.P12311989960679554232

`A133080(comp[2*n²])`
-/

namespace A177444.P12311989960679554232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133080 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A177444.P12311989960679554232

namespace A177444

/-- `A133080(comp[2*n²])` -/
def P12311989960679554232.Spec : Prop :=
  ∀ n, P12311989960679554232.a n = A177444 n

end A177444

/-! ## A177444.P7108000232346523303

`A145677(comp[2*n²])%2`
-/

namespace A177444.P7108000232346523303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145677 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 2

end

end A177444.P7108000232346523303

namespace A177444

/-- `A145677(comp[2*n²])%2` -/
def P7108000232346523303.Spec : Prop :=
  ∀ n, P7108000232346523303.a n = A177444 n

end A177444

/-! ## A177444.P3073849763128197798

`floor(acot(A217540(2*(n+1))))`
-/

namespace A177444.P3073849763128197798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A217540 (2 * (n + 1)) : ℝ)⌋

end

end A177444.P3073849763128197798

namespace A177444

/-- `floor(acot(A217540(2*(n+1))))` -/
def P3073849763128197798.Spec : Prop :=
  ∀ n, P3073849763128197798.a n = A177444 n

end A177444

/-!
# A177445: Partial sums of A120562.

The programs for A177445, there is no canonical definition to state claims against.
-/

/-! ## A177445.P17038729610874168570

`∑[A120562(n)]`
-/

namespace A177445.P17038729610874168570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177445.P17038729610874168570

/-! ## A177445.P18005580654056673615

`∑[A214126(n+1)-A082498(n)]`
-/

namespace A177445.P18005580654056673615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214126 (n + 1) - A082498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177445.P18005580654056673615

/-! ## A177445.P662153573134501815

`∑[A082498(A004762(n+2))]`
-/

namespace A177445.P662153573134501815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A004762 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177445.P662153573134501815

/-! ## A177445.P13843441417238069408

`∑[A082498(2^floor(log2(n+1))+n)]`
-/

namespace A177445.P13843441417238069408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (2 ^ Nat.log 2 (n + 1) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177445.P13843441417238069408

/-! ## A177445.P8085792618799217600

`A120562(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A177445.P8085792618799217600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120562 (2 * n) + a (n - 1)

end

end A177445.P8085792618799217600

/-! ## A177445.P14215929155915269336

`∑[A082498(A004757(n+1)-1)-A082498(n)]`
-/

namespace A177445.P14215929155915269336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A004757 (n + 1) - 1).toNat - A082498 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177445.P14215929155915269336

/-!
# A177446: Triangle read by rows: A000012 * A177444 * the diagonalized variant of A120562.

The programs for A177446, there is no canonical definition to state claims against.
-/

/-! ## A177446.P9865198880462463130

`A084556(A185914(n+1)%A360252(2*n+3))`
-/

namespace A177446.P9865198880462463130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (Int.tmod (A185914 (n + 1)) (A360252 (2 * n + 3))).toNat

end

end A177446.P9865198880462463130

/-! ## A177446.P8565183107522934942

`A124765(A050132(n+1)*A188448(n+1))`
-/

namespace A177446.P8565183107522934942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A050132 (n + 1) * A188448 (n + 1)).toNat

end

end A177446.P8565183107522934942

/-! ## A177446.P13967764334170843114

`A071673(A185914(n+1)%A293757(n+1))`
-/

namespace A177446.P13967764334170843114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (Int.tmod (A185914 (n + 1)) (A293757 (n + 1))).toNat

end

end A177446.P13967764334170843114

/-! ## A177446.P13607719039930306620

`A124765(lcm(A050132(n+1), A188448(n+1)))`
-/

namespace A177446.P13607719039930306620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (Int.lcm (A050132 (n + 1)) (A188448 (n + 1)))

end

end A177446.P13607719039930306620

/-! ## A177446.P12027851704327352143

`A322027(A247651(A185914(n+1))²)`
-/

namespace A177446.P12027851704327352143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (A247651 (A185914 (n + 1)).toNat ^ 2).toNat

end

end A177446.P12027851704327352143

/-!
# A177447: G.f.: Sum_{n>=0} a(n)*x^n/(1+x)^(n^2) = 1+x.

The programs for A177447, there is no canonical definition to state claims against.
-/

/-! ## A177447.P5124952784757316886

`A215241(C(n, 2)+1)`
-/

namespace A177447.P5124952784757316886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215241 (Nat.choose n 2 + 1)

end

end A177447.P5124952784757316886

/-! ## A177447.P1958994343448186843

`A215241(∑[abs(1-n)])`
-/

namespace A177447.P1958994343448186843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215241 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A177447.P1958994343448186843

/-! ## A177447.P17411371059153078354

`A215241(A152947(n+1))^A178334(n)`
-/

namespace A177447.P17411371059153078354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215241 (A152947 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A177447.P17411371059153078354

/-! ## A177447.P4564304171067831367

`lcm(A087960(n), A215241(A152947(n+1)))`
-/

namespace A177447.P4564304171067831367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A215241 (A152947 (n + 1)).toNat)

end

end A177447.P4564304171067831367

/-! ## A177447.P2658294276092095249

`or(A000007(n), A215241(A152947(n+1)))`
-/

namespace A177447.P2658294276092095249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A215241 (A152947 (n + 1)).toNat)

end

end A177447.P2658294276092095249

/-!
# A177448: G.f.: Sum_{n>=0} a(n)*x^n/(1+x)^(2*n^2) = 1+x.

The programs for A177448, there is no canonical definition to state claims against.
-/

/-! ## A177448.P4352572303001513301

`A004526(A319939(n+1)+A153935(n))`
-/

namespace A177448.P4352572303001513301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A319939 (n + 1) + A153935 n).toNat

end

end A177448.P4352572303001513301

/-! ## A177448.P15888083813966625752

`A123108(A319939(n+1)+A153935(n))`
-/

namespace A177448.P15888083813966625752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A319939 (n + 1) + A153935 n).toNat

end

end A177448.P15888083813966625752

/-!
# A177449: G.f.: Sum_{n>=0} a(n)*x^n/(1+x)^(3*n^2) = 1+x.

The programs for A177449, there is no canonical definition to state claims against.
-/

/-! ## A177449.P11304488820630951207

`A137409(∑[round(acot(n)+n)-1]^(n-1))`
-/

namespace A177449.P11304488820630951207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137409 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A177449.P11304488820630951207

/-!
# A177450: G.f.: Sum_{n>=0} a(n)*x^n/(1+x)^(n^2+n) = 1+x.

The programs for A177450, there is no canonical definition to state claims against.
-/

/-! ## A177450.P5191025501047707996

`∏{e}[11^n, A193469(#)]`
-/

namespace A177450.P5191025501047707996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A193469 (Nat.factorization (f1 n) p)

end

end A177450.P5191025501047707996

/-! ## A177450.P643077861261919235

`A104445(abs(2*n²-1))`
-/

namespace A177450.P643077861261919235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104445 |(2 * n ^ 2 : ℤ) - 1|.toNat

end

end A177450.P643077861261919235

/-!
# A177451: Partial sums of A054595.

The programs for A177451, there is no canonical definition to state claims against.
-/

/-! ## A177451.P175718343097469662

`∑[A054595(n+3)]`
-/

namespace A177451.P175718343097469662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054595 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177451.P175718343097469662

/-! ## A177451.P12967517574886814635

`A054595(n+3)+a(A023443(n))` with `a(0)=1`
-/

namespace A177451.P12967517574886814635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054595 (n + 3) + a (A023443 n).toNat

end

end A177451.P12967517574886814635

/-! ## A177451.P8212669595522284701

`A054595(n+3)+a(-A024000(n))` with `a(0)=1`
-/

namespace A177451.P8212669595522284701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054595 (n + 3) + a (-A024000 n).toNat

end

end A177451.P8212669595522284701

/-! ## A177451.P8100730571610953000

`A054595(n+3)+a(A326872(n+1)-1)` with `a(0)=1`
-/

namespace A177451.P8100730571610953000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054595 (n + 3) + a (A326872 (n + 1) - 1).toNat

end

end A177451.P8100730571610953000

/-!
# A177452: Partial sums of A002055.

The programs for A177452, the canonical program `A177452.P7115906065145340262` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177452 has offset 5).

The definition of A177452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177452.P7115906065145340262

`∑[A002055(n+5)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A177452

/-- `∑[A002055(n+5)]` -/
def P7115906065145340262.Spec : Prop :=
  ∀ n, P7115906065145340262.a n = A177452 (n + 5)

theorem P7115906065145340262.correct : P7115906065145340262.Spec := by
  intro n
  simp only [A177452, Nat.add_sub_cancel]

end A177452

/-! ## A177452.P1655996454428012954

`∑[A257888(n+3)/4]`
-/

namespace A177452.P1655996454428012954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257888 (n + 3) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177452.P1655996454428012954

namespace A177452

/-- `∑[A257888(n+3)/4]` -/
def P1655996454428012954.Spec : Prop :=
  ∀ n, P1655996454428012954.a n = (A177452 (n + 5) : ℚ)

end A177452

/-! ## A177452.P5397545732880423023

`∑[A049070(n+1)/(n+2)]`
-/

namespace A177452.P5397545732880423023
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049070 (n + 1) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177452.P5397545732880423023

namespace A177452

/-- `∑[A049070(n+1)/(n+2)]` -/
def P5397545732880423023.Spec : Prop :=
  ∀ n, P5397545732880423023.a n = (A177452 (n + 5) : ℚ)

end A177452

/-! ## A177452.P16170947242823732670

`∑[(n+2)*C(2*(n+2), n)/2]`
-/

namespace A177452.P16170947242823732670
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((Nat.choose (2 * (n + 2)) n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177452.P16170947242823732670

namespace A177452

/-- `∑[(n+2)*C(2*(n+2), n)/2]` -/
def P16170947242823732670.Spec : Prop :=
  ∀ n, P16170947242823732670.a n = (A177452 (n + 5) : ℚ)

end A177452

/-! ## A177452.P9034996654267483988

`∑[A126216(A167614(n+1))]`
-/

namespace A177452.P9034996654267483988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126216 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177452.P9034996654267483988

namespace A177452

/-- `∑[A126216(A167614(n+1))]` -/
def P9034996654267483988.Spec : Prop :=
  ∀ n, P9034996654267483988.a n = A177452 (n + 5)

end A177452

/-! ## A177452.P10437413881284301336

`∑[record[A086810(A055998(n))]]`
-/

namespace A177452.P10437413881284301336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A055998 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177452.P10437413881284301336

namespace A177452

/-- `∑[record[A086810(A055998(n))]]` -/
def P10437413881284301336.Spec : Prop :=
  ∀ n, P10437413881284301336.a n = A177452 (n + 5)

end A177452

/-! ## A177452.P10462884179358424977

`∑[A033282(A000217(n+3))]`
-/

namespace A177452.P10462884179358424977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (A000217 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177452.P10462884179358424977

namespace A177452

/-- `∑[A033282(A000217(n+3))]` -/
def P10462884179358424977.Spec : Prop :=
  ∀ n, P10462884179358424977.a n = A177452 (n + 5)

end A177452

/-! ## A177452.P951210503743346516

`∑[A086810(eq[4, A052509(n)])]`
-/

namespace A177452.P951210503743346516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177452.P951210503743346516

namespace A177452

/-- `∑[A086810(eq[4, A052509(n)])]` -/
def P951210503743346516.Spec : Prop :=
  ∀ n, P951210503743346516.a n = A177452 (n + 5)

end A177452

/-! ## A177452.P15661987932403485270

`∑[A086810(Δ[A006503(n+1)])]`
-/

namespace A177452.P15661987932403485270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177452.P15661987932403485270

namespace A177452

/-- `∑[A086810(Δ[A006503(n+1)])]` -/
def P15661987932403485270.Spec : Prop :=
  ∀ n, P15661987932403485270.a n = A177452 (n + 5)

end A177452

/-! ## A177452.P79071063982380172

`∑[A033282(A001263(A000096(n+3)))]`
-/

namespace A177452.P79071063982380172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033282 (A001263 (A000096 (n + 3)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177452.P79071063982380172

namespace A177452

/-- `∑[A033282(A001263(A000096(n+3)))]` -/
def P79071063982380172.Spec : Prop :=
  ∀ n, P79071063982380172.a n = A177452 (n + 5)

end A177452

/-!
# A177453: Partial sums of A001863.

The programs for A177453, there is no canonical definition to state claims against.
-/

/-! ## A177453.P14393850915854481369

`∑[A001863(n+1)]`
-/

namespace A177453.P14393850915854481369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177453.P14393850915854481369

/-! ## A177453.P3026197073744533448

`∑[record[A001863(A028920(n))]]`
-/

namespace A177453.P3026197073744533448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001863 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177453.P3026197073744533448

/-! ## A177453.P10611325645293698045

`∑[record[A001863(A126759(n))]]`
-/

namespace A177453.P10611325645293698045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001863 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177453.P10611325645293698045

/-! ## A177453.P7471545585726170753

`∑[record[A001863(A137735(n))]]`
-/

namespace A177453.P7471545585726170753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001863 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177453.P7471545585726170753

/-! ## A177453.P14281868680978796214

`∑[A000435(n+1)/floor(acot(n)+n)]`
-/

namespace A177453.P14281868680978796214
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000435 (n + 1) : ℚ) / (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177453.P14281868680978796214

/-! ## A177453.P13619476160886864845

`∑[A000435(n+1)/A028310(n)]`
-/

namespace A177453.P13619476160886864845
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000435 (n + 1) : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177453.P13619476160886864845

/-! ## A177453.P18153508580639669623

`∑[A000435(n+1)/(A000007(n)+n)]`
-/

namespace A177453.P18153508580639669623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000435 (n + 1) : ℚ) / (A000007 n + (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177453.P18153508580639669623

/-!
# A177454: a(n) = (binomial(2*p,p) - 2)/p, where p = prime(n).

The programs for A177454, there is no canonical definition to state claims against.
-/

/-! ## A177454.P5576811103696947339

`2*A086655(n+1)`
-/

namespace A177454.P5576811103696947339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086655 (n + 1)

end

end A177454.P5576811103696947339

/-! ## A177454.P16010900969456711189

`A060165(p?[xor(1, n)+1])`
-/

namespace A177454.P16010900969456711189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060165 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A177454.P16010900969456711189

/-! ## A177454.P18005021029991997324

`2*A022553(p?[xor(1, n)+1])`
-/

namespace A177454.P18005021029991997324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022553 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A177454.P18005021029991997324

/-! ## A177454.P963294680822245173

`A024498(A006005(n+1))`
-/

namespace A177454.P963294680822245173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024498 (A006005 (n + 1)).toNat

end

end A177454.P963294680822245173

/-! ## A177454.P16904390864374596892

`A060165(A000040(n+1))`
-/

namespace A177454.P16904390864374596892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060165 (A000040 (n + 1)).toNat

end

end A177454.P16904390864374596892

/-!
# A177455: Partial sums of A079062.

The programs for A177455, there is no canonical definition to state claims against.
-/

/-! ## A177455.P18210499480071466202

`∑[A079062(n+1)]`
-/

namespace A177455.P18210499480071466202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177455.P18210499480071466202

/-! ## A177455.P6215402595387651253

`∑[record[A079062(ceil(C(or(1, n), n)/2))]]`
-/

namespace A177455.P6215402595387651253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079062 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177455.P6215402595387651253

/-! ## A177455.P7626032811101621421

`∑[record[A079062(A286378(n))]]`
-/

namespace A177455.P7626032811101621421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079062 (A286378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177455.P7626032811101621421

/-! ## A177455.P4374780581115189754

`∑[record[A079062(A133310(n))]]`
-/

namespace A177455.P4374780581115189754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079062 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177455.P4374780581115189754

/-! ## A177455.P7617021121169979854

`∑[record[A079062(A112382(n))]]`
-/

namespace A177455.P7617021121169979854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079062 (A112382 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177455.P7617021121169979854

/-!
# A177456: a(n) = binomial(n^2,n+1)/n.

The programs for A177456, the canonical program `A177456.P6663241461723531709` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177456 has offset 2).

The definition of A177456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177456.P6663241461723531709

`(n+1)*A177234(n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A177456

/-- `(n+1)*A177234(n+2)` -/
def P6663241461723531709.Spec : Prop :=
  ∀ n, P6663241461723531709.a n = A177456 (n + 2)

theorem P6663241461723531709.correct : P6663241461723531709.Spec := by
  intro n
  simp only [A177456, Nat.add_sub_cancel]

end A177456

/-! ## A177456.P5026412451179383908

`A178842(n+3)/(n+2)`
-/

namespace A177456.P5026412451179383908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178842 (n + 3) : ℚ) / (n + 2 : ℚ)

end

end A177456.P5026412451179383908

namespace A177456

/-- `A178842(n+3)/(n+2)` -/
def P5026412451179383908.Spec : Prop :=
  ∀ n, P5026412451179383908.a n = (A177456 (n + 2) : ℚ)

end A177456

/-! ## A177456.P5945015696535047863

`(n+2)*(n+1)*A177784(n+2)`
-/

namespace A177456.P5945015696535047863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 1) : ℤ) * A177784 (n + 2)

end

end A177456.P5945015696535047863

namespace A177456

/-- `(n+2)*(n+1)*A177784(n+2)` -/
def P5945015696535047863.Spec : Prop :=
  ∀ n, P5945015696535047863.a n = A177456 (n + 2)

end A177456

/-! ## A177456.P574770764805462418

`(n+1)*A177788(n+2)/(n+2)`
-/

namespace A177456.P574770764805462418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A177788 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A177456.P574770764805462418

namespace A177456

/-- `(n+1)*A177788(n+2)/(n+2)` -/
def P574770764805462418.Spec : Prop :=
  ∀ n, P574770764805462418.a n = (A177456 (n + 2) : ℚ)

end A177456

/-! ## A177456.P16573939856693507308

`C((n+2)², n+3)/(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177456.P16573939856693507308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 2) ^ 2) (n + 3) : ℚ) / (n + 2 : ℚ)

end

end A177456.P16573939856693507308

namespace A177456

/-- `C((n+2)², n+3)/(n+2)` -/
def P16573939856693507308.Spec : Prop :=
  ∀ n, P16573939856693507308.a n = (A177456 (n + 2) : ℚ)

end A177456

/-!
# A177457: Triangle read by rows; union of A007318 and A112467.

The programs for A177457, there is no canonical definition to state claims against.
-/

/-! ## A177457.P7094554710836261385

`A105805(A000005(3^A208482(n+1)))`
-/

namespace A177457.P7094554710836261385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105805 (A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A208482 (n + 1) : ℤ))).toNat).toNat

end

end A177457.P7094554710836261385

/-! ## A177457.P10431720541826005790

`A330368(A000005(5^A208482(n+1)))`
-/

namespace A177457.P10431720541826005790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330368 (A000005 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A208482 (n + 1) : ℤ))).toNat).toNat

end

end A177457.P10431720541826005790

/-! ## A177457.P18440542982533328567

`A373605(A134470(n)%A367212(3*(n+1)))`
-/

namespace A177457.P18440542982533328567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373605 (Int.tmod (A134470 n) (A367212 (3 * (n + 1)))).toNat

end

end A177457.P18440542982533328567

/-! ## A177457.P18088383444904052744

`A359538(n+4)-A362415(A349801(2*n+3))`
-/

namespace A177457.P18088383444904052744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359538 (n + 4) - A362415 (A349801 (2 * n + 3)).toNat

end

end A177457.P18088383444904052744

/-!
# A177460: Smallest k such that A000217(n)+k and A000217(n)-k are both prime.

The programs for A177460, there is no canonical definition to state claims against.
-/

/-! ## A177460.P15511050167553659338

`A047160(C(n+3, 2))`
-/

namespace A177460.P15511050167553659338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (Nat.choose (n + 3) 2)

end

end A177460.P15511050167553659338

/-! ## A177460.P16792634828181294013

`A325142(C(n+3, 2))`
-/

namespace A177460.P16792634828181294013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (Nat.choose (n + 3) 2)

end

end A177460.P16792634828181294013

/-! ## A177460.P196276405479854894

`A047160(∑[n+2]+1)`
-/

namespace A177460.P196276405479854894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A177460.P196276405479854894

/-! ## A177460.P17266544848881090192

`A325142(∑[n+2]+1)`
-/

namespace A177460.P17266544848881090192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A177460.P17266544848881090192

/-! ## A177460.P5760982746274575044

`A066285(C(n+3, 2))/2`
-/

namespace A177460.P5760982746274575044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066285 (Nat.choose (n + 3) 2) : ℚ) / 2

end

end A177460.P5760982746274575044

/-! ## A177460.P3065120128398303248

`A066285(∑[n+2]+1)/2`
-/

namespace A177460.P3065120128398303248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066285 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A177460.P3065120128398303248

/-! ## A177460.P3223783986718968518

`A234345(C(n+3, 2))-C(n+3, 2)`
-/

namespace A177460.P3223783986718968518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234345 (Nat.choose (n + 3) 2) - (Nat.choose (n + 3) 2 : ℤ)

end

end A177460.P3223783986718968518

/-! ## A177460.P9889297014903934678

`or(char[1], A047160(A253145(n+1)))`
-/

namespace A177460.P9889297014903934678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A047160 (A253145 (n + 1)).toNat)

end

end A177460.P9889297014903934678

/-! ## A177460.P2429439674786050

`A047160(A253145(n+1))%A000040(n+1)`
-/

namespace A177460.P2429439674786050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047160 (A253145 (n + 1)).toNat) (A000040 (n + 1))

end

end A177460.P2429439674786050

/-! ## A177460.P16030127717095048943

`A047160(A000217(n+2))%A000203((n+1)²)`
-/

namespace A177460.P16030127717095048943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047160 (A000217 (n + 2)).toNat) (A000203 ((n + 1) ^ 2))

end

end A177460.P16030127717095048943

/-!
# A177461: The smallest k such that Fibonacci(n)+k and Fibonacci(n)-k are both prime.

The programs for A177461, there is no canonical definition to state claims against.
-/

/-! ## A177461.P4867740775745848449

`A047160(A000045(n+3))`
-/

namespace A177461.P4867740775745848449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (A000045 (n + 3)).toNat

end

end A177461.P4867740775745848449

/-! ## A177461.P16816047961232636547

`A047160(Δ[round(ϕ*a(n-1))])` with `a(0)=3`
-/

namespace A177461.P16816047961232636547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (f1 (n + 1) - f1 n).toNat

end

end A177461.P16816047961232636547

/-! ## A177461.P3958434814349101043

`A047160(A020695(n))`
-/

namespace A177461.P3958434814349101043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (A020695 n).toNat

end

end A177461.P3958434814349101043

/-! ## A177461.P11127868364466955132

`A047160(A373566(n+1))`
-/

namespace A177461.P11127868364466955132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (A373566 (n + 1)).toNat

end

end A177461.P11127868364466955132

/-! ## A177461.P13184042733353924025

`A047160(A018910(n)-2)`
-/

namespace A177461.P13184042733353924025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (A018910 n - 2).toNat

end

end A177461.P13184042733353924025

/-!
# A177462: Smallest k such that A000125(n)+k and A000125(n)-k are both prime.

The programs for A177462, there is no canonical definition to state claims against.
-/

/-! ## A177462.P2302954195417348079

`sqrt(A143697(∑[∑[n+1]]+n+3))`
-/

namespace A177462.P2302954195417348079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143697 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3)) : ℝ)

end

end A177462.P2302954195417348079

/-! ## A177462.P12429426786512400349

`A047160(∑[∑[n+1]+1]+2)`
-/

namespace A177462.P12429426786512400349
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A177462.P12429426786512400349

/-! ## A177462.P14588289688880947543

`A066285(∑[∑[n+1]+1]+2)/2`
-/

namespace A177462.P14588289688880947543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066285 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 2

end

end A177462.P14588289688880947543

/-! ## A177462.P2008647080660224294

`A325142(Δ[A000127(n+3)])`
-/

namespace A177462.P2008647080660224294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (f1 (n + 1) - f1 n).toNat

end

end A177462.P2008647080660224294

/-! ## A177462.P16837043519672182761

`A325142(A188554(n+1)+∑[n])`
-/

namespace A177462.P16837043519672182761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A188554 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A177462.P16837043519672182761

/-!
# A177467: Expansion of g.f. (1+2*x+3*x^2)/(1-3*x-14*x^2+15*x^3+7*x^4).

The programs for A177467, the canonical program `A177467.P14035484053906749620` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177467 has offset 0).

The definition of A177467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+3x^2)/(1-3x-14x^2+15x^3+7x^4))` (program `A177467.P14035484053906749620`, by `A177467.P14035484053906749620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177467.P14035484053906749620

`ogf((1+2x+3x^2)/(1-3x-14x^2+15x^3+7x^4))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177467

/-- `ogf((1+2x+3x^2)/(1-3x-14x^2+15x^3+7x^4))` -/
def P14035484053906749620.Spec : Prop :=
  ∀ n, P14035484053906749620.a n = A177467 n

theorem P14035484053906749620.correct : P14035484053906749620.Spec := by
  intro n
  simp only [A177467]

end A177467

/-! ## A177467.P15569472725433443336

`3*a(n-1)+14*a(n-2)-15*a(n-3)-7*a(n-4)` with `a(0)=1, a(1)=5, a(2)=32, a(3)=151`
-/

namespace A177467.P15569472725433443336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 32, 151] fun n a =>
  3 * a (n - 1) + 14 * a (n - 2) - 15 * a (n - 3) - 7 * a (n - 4)

end

end A177467.P15569472725433443336

namespace A177467

/-- `3*a(n-1)+14*a(n-2)-15*a(n-3)-7*a(n-4)` -/
def P15569472725433443336.Spec : Prop :=
  ∀ n, P15569472725433443336.a n = A177467 n

end A177467

/-!
# A177468: Expansion of g.f.: (1+x+12*x^2-8*x^3)/(1-5*x-30*x^2+69*x^3+31*x^4-22*x^5).

The programs for A177468, the canonical program `A177468.P3370877774048729660` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177468 has offset 1).

The definition of A177468 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+12x^2-8x^3)/(1-5x-30x^2+69x^3+31x^4-22x^5))` (program `A177468.P3370877774048729660`, by `A177468.P3370877774048729660.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177468.P3370877774048729660

`ogf((1+x+12x^2-8x^3)/(1-5x-30x^2+69x^3+31x^4-22x^5))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177468

/-- `ogf((1+x+12x^2-8x^3)/(1-5x-30x^2+69x^3+31x^4-22x^5))` -/
def P3370877774048729660.Spec : Prop :=
  ∀ n, P3370877774048729660.a n = A177468 (n + 1)

theorem P3370877774048729660.correct : P3370877774048729660.Spec := by
  intro n
  simp only [A177468, Nat.add_sub_cancel]

end A177468

/-!
# A177470: Number of permutations of order n avoiding the consecutive pattern 11'22'.

The programs for A177470, there is no canonical definition to state claims against.
-/

/-! ## A177470.P14568772029953690181

`A098162(A088325(n))`
-/

namespace A177470.P14568772029953690181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098162 (A088325 n).toNat

end

end A177470.P14568772029953690181

/-! ## A177470.P4366180115487457138

`A098162(A166354(n))`
-/

namespace A177470.P4366180115487457138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098162 (A166354 n).toNat

end

end A177470.P4366180115487457138

/-! ## A177470.P11932676138453496964

`A098162(A215930(n))`
-/

namespace A177470.P11932676138453496964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098162 (A215930 n).toNat

end

end A177470.P11932676138453496964

/-!
# A177471: Avoiding the pattern 121'2'. To avoid 121'2' means not to have four consecutive letters such that the first letter is less than the second one and the third letter is less than the fourth one.

The programs for A177471, there is no canonical definition to state claims against.
-/

/-! ## A177471.P7077119864824159622

`A067434(A244990(n!))`
-/

namespace A177471.P7077119864824159622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (A244990 (Nat.factorial n)).toNat

end

end A177471.P7077119864824159622

/-! ## A177471.P11423782128934626355

`A034973(A007841(n)+A001835(n))`
-/

namespace A177471.P11423782128934626355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A007841 n + A001835 n).toNat

end

end A177471.P11423782128934626355

/-! ## A177471.P11517900842979823808

`A067434(A200715(n)+A111139(n))`
-/

namespace A177471.P11517900842979823808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (A200715 n + A111139 n).toNat

end

end A177471.P11517900842979823808

/-!
# A177472: Number of permutations of order n avoiding the consecutive pattern 11'2'2.

The programs for A177472, there is no canonical definition to state claims against.
-/

/-! ## A177472.P1831522964177763801

`A004396(A104854(n+1)+A010051(3*n+4))`
-/

namespace A177472.P1831522964177763801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A104854 (n + 1) + A010051 (3 * n + 4)).toNat

end

end A177472.P1831522964177763801

/-! ## A177472.P1521045839989646579

`A008615(A088009(n)+A000244(n))`
-/

namespace A177472.P1521045839989646579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A088009 n + A000244 n).toNat

end

end A177472.P1521045839989646579

/-! ## A177472.P13719055436865957826

`A156078(A000325(n))+A127083(n)`
-/

namespace A177472.P13719055436865957826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156078 (A000325 n).toNat + A127083 n

end

end A177472.P13719055436865957826

/-!
# A177473: Number of permutations of order n avoiding the consecutive pattern 12'1'2.

The programs for A177473, there is no canonical definition to state claims against.
-/

/-! ## A177473.P14153954320870251831

`A350839(n)+A178480(A041809(n))`
-/

namespace A177473.P14153954320870251831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350839 n + A178480 (A041809 n).toNat

end

end A177473.P14153954320870251831

/-! ## A177473.P6972618279009256276

`A057693(n)-A199363(A052302(n))`
-/

namespace A177473.P6972618279009256276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057693 n - A199363 (A052302 n).toNat

end

end A177473.P6972618279009256276

/-! ## A177473.P16414223296463425709

`A343866(A000111(n))+A000111(n+1)`
-/

namespace A177473.P16414223296463425709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343866 (A000111 n).toNat + A000111 (n + 1)

end

end A177473.P16414223296463425709

/-!
# A177475: Number of permutations of order n avoiding the consecutive pattern 131'2.

The programs for A177475, there is no canonical definition to state claims against.
-/

/-! ## A177475.P13192673719601058673

`A177478(n)-floor(A326351(n)/17)`
-/

namespace A177475.P13192673719601058673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177478 n - ⌊(A326351 n : ℚ) / 17⌋

end

end A177475.P13192673719601058673

/-! ## A177475.P17802293178080798095

`A392965(n)-A048994(A392991(n))`
-/

namespace A177475.P17802293178080798095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392965 n - A048994 (A392991 n).toNat

end

end A177475.P17802293178080798095

/-! ## A177475.P16884815747116976563

`A392965(n)-A048994(A392993(n))`
-/

namespace A177475.P16884815747116976563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392965 n - A048994 (A392993 n).toNat

end

end A177475.P16884815747116976563

/-!
# A177476: Number of partitions of order n avoiding the consecutive pattern 231'1.

The programs for A177476, there is no canonical definition to state claims against.
-/

/-! ## A177476.P14077764556001930705

`A132015(A328588(n!))`
-/

namespace A177476.P14077764556001930705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (A328588 (Nat.factorial n)).toNat

end

end A177476.P14077764556001930705

/-! ## A177476.P5633732811215393720

`A048865(A049426(n))+1`
-/

namespace A177476.P5633732811215393720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A049426 n).toNat + 1

end

end A177476.P5633732811215393720

/-! ## A177476.P9994104514067417566

`A034973(A357151(n)+A001586(n))`
-/

namespace A177476.P9994104514067417566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A357151 n + A001586 n).toNat

end

end A177476.P9994104514067417566

/-!
# A177477: Number of permutations of 1..n avoiding adjacent step pattern up, down, up.

The programs for A177477, there is no canonical definition to state claims against.
-/

/-! ## A177477.P14952636861230124019

`A242784(A055999(n+3))`
-/

namespace A177477.P14952636861230124019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A055999 (n + 3)).toNat

end

end A177477.P14952636861230124019

/-! ## A177477.P15253028689437698154

`A242784(eq[5, A025581(n)])`
-/

namespace A177477.P15253028689437698154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177477.P15253028689437698154

/-! ## A177477.P4497290960556933436

`A242784(A133263(n+6)-8)`
-/

namespace A177477.P4497290960556933436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A133263 (n + 6) - 8).toNat

end

end A177477.P4497290960556933436

/-! ## A177477.P8120706617989538479

`A242784(eq[6, A004736(n+1)])`
-/

namespace A177477.P8120706617989538479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177477.P8120706617989538479

/-! ## A177477.P12113868519814103553

`A242784(A005843(n+3)+A000096(n+3))`
-/

namespace A177477.P12113868519814103553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A005843 (n + 3) + A000096 (n + 3)).toNat

end

end A177477.P12113868519814103553

/-!
# A177478: Permutations avoiding the consecutive patterns 4312 and 4213.

The programs for A177478, there is no canonical definition to state claims against.
-/

/-! ## A177478.P16644796246136021832

`A004277(A117226(n))-A177552(n)`
-/

namespace A177478.P16644796246136021832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A117226 n).toNat - A177552 n

end

end A177478.P16644796246136021832

/-! ## A177478.P7695930020465670268

`A002265(3*(A104150(n)+n*a(n-1)))` with `a(0)=1`
-/

namespace A177478.P7695930020465670268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002265 (3 * (A104150 n + (n : ℤ) * a (n - 1))).toNat

end

end A177478.P7695930020465670268

/-! ## A177478.P17463875656343660235

`2*A205802(n)%p?[∑[2^n]]-A062919(n)`
-/

namespace A177478.P17463875656343660235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A205802 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - A062919 n

end

end A177478.P17463875656343660235

/-!
# A177479: Number of permutations of 1..n avoiding adjacent step pattern up, down, down.

The programs for A177479, there is no canonical definition to state claims against.
-/

/-! ## A177479.P11538986489161602314

`A242784(A052905(n+2))`
-/

namespace A177479.P11538986489161602314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A052905 (n + 2)).toNat

end

end A177479.P11538986489161602314

/-! ## A177479.P14227086795530040892

`A242784(eq[4, A025581(n)])`
-/

namespace A177479.P14227086795530040892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177479.P14227086795530040892

/-! ## A177479.P3419377204833429266

`A242784(A055999(n+2)+1)`
-/

namespace A177479.P3419377204833429266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A055999 (n + 2) + 1).toNat

end

end A177479.P3419377204833429266

/-! ## A177479.P13241153864804356657

`A242784(A055998(n+3)-2)`
-/

namespace A177479.P13241153864804356657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A055998 (n + 3) - 2).toNat

end

end A177479.P13241153864804356657

/-! ## A177479.P1982952837129283521

`A242784(A163985(n+2)+A134869(n+3))`
-/

namespace A177479.P1982952837129283521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (A163985 (n + 2) + A134869 (n + 3)).toNat

end

end A177479.P1982952837129283521

/-! ## A177479.P16429814692283573053

`A242819(A008748(n))`
-/

namespace A177479.P16429814692283573053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242819 (A008748 n).toNat

end

end A177479.P16429814692283573053

/-! ## A177479.P11591636145064021433

`A242819(A008620(∑[n]))`
-/

namespace A177479.P11591636145064021433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242819 (A008620 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A177479.P11591636145064021433

/-! ## A177479.P7579752306522978935

`A242784(eq[7, A004736(n+1)])`
-/

namespace A177479.P7579752306522978935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177479.P7579752306522978935

/-!
# A177480: Number of permutations of order n avoiding the consecutive pattern egfh with e

The programs for A177480, there is no canonical definition to state claims against.
-/

/-! ## A177480.P666551320894472102

`A054899(A000260(n))+A000108(n)`
-/

namespace A177480.P666551320894472102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A000260 n).toNat + A000108 n

end

end A177480.P666551320894472102

/-! ## A177480.P1353533797738987099

`A072727(A219508(n)+A001045(n))`
-/

namespace A177480.P1353533797738987099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072727 (A219508 n + A001045 n).toNat

end

end A177480.P1353533797738987099

/-!
# A177481: Number of permutations of order n avoiding the consecutive pattern efgh with e

The programs for A177481, there is no canonical definition to state claims against.
-/

/-! ## A177481.P11918295331017815214

`A156685(8*A000112(n))`
-/

namespace A177481.P11918295331017815214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156685 (8 * A000112 n).toNat

end

end A177481.P11918295331017815214

/-! ## A177481.P4549238961689576747

`A220658(A001426(n)+A000108(n))`
-/

namespace A177481.P4549238961689576747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A001426 n + A000108 n).toNat

end

end A177481.P4549238961689576747

/-! ## A177481.P15387985632766108808

`A108954(A193658(n)+A051049(n))`
-/

namespace A177481.P15387985632766108808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A193658 n + A051049 n).toNat

end

end A177481.P15387985632766108808

/-!
# A177482: Suppose e

The programs for A177482, there is no canonical definition to state claims against.
-/

/-! ## A177482.P10906859054790021601

`A325763(A052806(n))`
-/

namespace A177482.P10906859054790021601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325763 (A052806 n).toNat

end

end A177482.P10906859054790021601

/-! ## A177482.P13908207313388686350

`A325763(A085748(n))`
-/

namespace A177482.P13908207313388686350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325763 (A085748 n).toNat

end

end A177482.P13908207313388686350

/-! ## A177482.P7268965074731803876

`A325763(A206119(n))`
-/

namespace A177482.P7268965074731803876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325763 (A206119 n).toNat

end

end A177482.P7268965074731803876

/-!
# A177483: Number of permutations of n avoiding the pattern 1231'.

The programs for A177483, there is no canonical definition to state claims against.
-/

/-! ## A177483.P8989345327266394211

`A028310(n)*A242784(A046691(n+1))`
-/

namespace A177483.P8989345327266394211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A242784 (A046691 (n + 1)).toNat

end

end A177483.P8989345327266394211

/-! ## A177483.P101060393871949517

`A028310(n)*A049774(A028310(n)-1)`
-/

namespace A177483.P101060393871949517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A049774 (A028310 n - 1).toNat

end

end A177483.P101060393871949517

/-! ## A177483.P8147179907304949524

`A028310(n)*A242784(A155212(n)-n)`
-/

namespace A177483.P8147179907304949524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A242784 (A155212 n - (n : ℤ)).toNat

end

end A177483.P8147179907304949524

/-! ## A177483.P17938135206596989560

`A028310(n)*A162975(A022856(n+1))`
-/

namespace A177483.P17938135206596989560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A162975 (A022856 (n + 1)).toNat

end

end A177483.P17938135206596989560

/-! ## A177483.P13731285160952956059

`A065033(2*n)*A162975(A022856(n+1))`
-/

namespace A177483.P13731285160952956059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) * A162975 (A022856 (n + 1)).toNat

end

end A177483.P13731285160952956059

/-! ## A177483.P10973383588013808795

`A123108(2*n)*A162975(A022856(n+1))`
-/

namespace A177483.P10973383588013808795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) * A162975 (A022856 (n + 1)).toNat

end

end A177483.P10973383588013808795

/-!
# A177484: The number of permutations having one non-overlapping occurrence of 122'1'.

The programs for A177484, there is no canonical definition to state claims against.
-/

/-! ## A177484.P11999100217983545153

`A032551(n+1)!-A173385(n)`
-/

namespace A177484.P11999100217983545153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A032551 (n + 1)).toNat : ℤ) - A173385 n

end

end A177484.P11999100217983545153

/-! ## A177484.P1954440851825133021

`A028310(A000142(n))-A173385(n)`
-/

namespace A177484.P1954440851825133021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000142 n).toNat - A173385 n

end

end A177484.P1954440851825133021

/-! ## A177484.P4285127961581453294

`A028310(A062919(n))-A173385(n)`
-/

namespace A177484.P4285127961581453294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A062919 n).toNat - A173385 n

end

end A177484.P4285127961581453294

/-! ## A177484.P3516995752029764962

`A254667(A000142(n)-A173385(n))`
-/

namespace A177484.P3516995752029764962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A000142 n - A173385 n).toNat

end

end A177484.P3516995752029764962

/-!
# A177485: G.f.: (1+x+x^3+x^5)/( (1-x^2+x^3)*(1-x-x^3) ).

The programs for A177485, there is no canonical definition to state claims against.
-/

/-! ## A177485.P2600430346250020687

`A135660(A288652(2*(n+2))+n²)`
-/

namespace A177485.P2600430346250020687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A288652 (2 * (n + 2)) + (n ^ 2 : ℤ)).toNat

end

end A177485.P2600430346250020687

/-! ## A177485.P14191275073088020114

`A003056(A176448(n))-A238545(n+1)`
-/

namespace A177485.P14191275073088020114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A176448 n).toNat - A238545 (n + 1)

end

end A177485.P14191275073088020114

/-! ## A177485.P3143593599805025457

`A000196(A001045(n+4))-A087504(n)`
-/

namespace A177485.P3143593599805025457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A001045 (n + 4)).toNat - A087504 n

end

end A177485.P3143593599805025457

/-! ## A177485.P707007254108419822

`A003059(A001399(n)*A291857(n+3))`
-/

namespace A177485.P707007254108419822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A001399 n * A291857 (n + 3)).toNat

end

end A177485.P707007254108419822

/-! ## A177485.P2705798303335722683

`A056556(A084776(n))`
-/

namespace A177485.P2705798303335722683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A084776 n).toNat

end

end A177485.P2705798303335722683

/-!
# A177486: G.f. satisfies: A(x) = Sum_{n>=0} x^(n(n+1)/2) * (1 + x*A(x))^n.

The programs for A177486, there is no canonical definition to state claims against.
-/

/-! ## A177486.P6899215487371640690

`A230490(A321403(n))`
-/

namespace A177486.P6899215487371640690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230490 (A321403 n).toNat

end

end A177486.P6899215487371640690

/-! ## A177486.P4479689923114754496

`A111654(A254593(n+2))`
-/

namespace A177486.P4479689923114754496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A254593 (n + 2)).toNat

end

end A177486.P4479689923114754496

/-! ## A177486.P3902923796709152244

`A135662(3*A019497(n))`
-/

namespace A177486.P3902923796709152244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (3 * A019497 n).toNat

end

end A177486.P3902923796709152244

/-! ## A177486.P4374458660519232004

`A168201(A164409(n+5))`
-/

namespace A177486.P4374458660519232004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A164409 (n + 5)).toNat

end

end A177486.P4374458660519232004

/-! ## A177486.P15280680983668369049

`A003056(A025147(∑[n])+1)`
-/

namespace A177486.P15280680983668369049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A025147 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A177486.P15280680983668369049

/-!
# A177487: G.f. satisfies: A(x) = Sum_{n>=0} x^(n(n+1)/2) * (A(x) + x)^n.

The programs for A177487, there is no canonical definition to state claims against.
-/

/-! ## A177487.P10887047982374320019

`A316770(n+1)+A248327(A148476(n))`
-/

namespace A177487.P10887047982374320019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316770 (n + 1) + A248327 (A148476 n).toNat

end

end A177487.P10887047982374320019

/-! ## A177487.P12436907565300157209

`xor(A262257(A148493(n)), A316770(n+1))`
-/

namespace A177487.P12436907565300157209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A262257 (A148493 n).toNat) (A316770 (n + 1))

end

end A177487.P12436907565300157209

/-! ## A177487.P5081643402317197926

`xor(A262257(A148494(n)), A316770(n+1))`
-/

namespace A177487.P5081643402317197926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A262257 (A148494 n).toNat) (A316770 (n + 1))

end

end A177487.P5081643402317197926

/-!
# A177492: Products of squares of 2 or more distinct primes.

The programs for A177492, the canonical program `A177492.P17512611008382585647` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177492 has offset 1).

The definition of A177492 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A177492.P17512611008382585647

`A120944(n+1)²`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A177492

/-- `A120944(n+1)²` -/
def P17512611008382585647.Spec : Prop :=
  ∀ n, P17512611008382585647.a n = A177492 (n + 1)

theorem P17512611008382585647.correct : P17512611008382585647.Spec := by
  intro n
  simp only [A177492, Nat.add_sub_cancel]

end A177492

/-! ## A177492.P1372119280838256115

`A177493(n+1)^(2/3)`
-/

namespace A177492.P1372119280838256115
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A177493 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A177492.P1372119280838256115

namespace A177492

/-- `A177493(n+1)^(2/3)` -/
def P1372119280838256115.Spec : Prop :=
  ∀ n, P1372119280838256115.a n = (A177492 (n + 1) : ℝ)

end A177492

/-! ## A177492.P992817416455087629

`record[A120944(A286378(n))²]`
-/

namespace A177492.P992817416455087629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (A286378 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177492.P992817416455087629

namespace A177492

/-- `record[A120944(A286378(n))²]` -/
def P992817416455087629.Spec : Prop :=
  ∀ n, P992817416455087629.a n = A177492 (n + 1)

end A177492

/-! ## A177492.P14964085340856933338

`A120944(A000027(n+1))^2`
-/

namespace A177492.P14964085340856933338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (A000027 (n + 1)).toNat ^ 2

end

end A177492.P14964085340856933338

namespace A177492

/-- `A120944(A000027(n+1))^2` -/
def P14964085340856933338.Spec : Prop :=
  ∀ n, P14964085340856933338.a n = A177492 (n + 1)

end A177492

/-! ## A177492.P1952192036417896798

`record[A007947(A097318(n+1))²]`
-/

namespace A177492.P1952192036417896798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A097318 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177492.P1952192036417896798

namespace A177492

/-- `record[A007947(A097318(n+1))²]` -/
def P1952192036417896798.Spec : Prop :=
  ∀ n, P1952192036417896798.a n = A177492 (n + 1)

end A177492

/-! ## A177492.P5299567197366590932

`record[A007947(A344585(n+1))²]`
-/

namespace A177492.P5299567197366590932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A344585 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177492.P5299567197366590932

namespace A177492

/-- `record[A007947(A344585(n+1))²]` -/
def P5299567197366590932.Spec : Prop :=
  ∀ n, P5299567197366590932.a n = A177492 (n + 1)

end A177492

/-! ## A177492.P463707495568524730

`eq[A087049(n), A339579(n+1)]²`
-/

namespace A177492.P463707495568524730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A177492.P463707495568524730

namespace A177492

/-- `eq[A087049(n), A339579(n+1)]²` -/
def P463707495568524730.Spec : Prop :=
  ∀ n, (P463707495568524730.a n : ℤ) = A177492 (n + 1)

end A177492

/-! ## A177492.P10831047251616380959

`eq[A105570(n), A339579(n+1)]²`
-/

namespace A177492.P10831047251616380959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A177492.P10831047251616380959

namespace A177492

/-- `eq[A105570(n), A339579(n+1)]²` -/
def P10831047251616380959.Spec : Prop :=
  ∀ n, (P10831047251616380959.a n : ℤ) = A177492 (n + 1)

end A177492

/-! ## A177492.P9506818378765381494

`A177493(n+1)/A120944(n+1)`
-/

namespace A177492.P9506818378765381494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177493 (n + 1) : ℚ) / (A120944 (n + 1) : ℚ)

end

end A177492.P9506818378765381494

namespace A177492

/-- `A177493(n+1)/A120944(n+1)` -/
def P9506818378765381494.Spec : Prop :=
  ∀ n, P9506818378765381494.a n = (A177492 (n + 1) : ℚ)

end A177492

/-! ## A177492.P11921603768892411980

`A000469(n+2)²`
-/

namespace A177492.P11921603768892411980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 2) ^ 2

end

end A177492.P11921603768892411980

namespace A177492

/-- `A000469(n+2)²` -/
def P11921603768892411980.Spec : Prop :=
  ∀ n, P11921603768892411980.a n = A177492 (n + 1)

end A177492

/-! ## A177492.P13624825929086333212

`A361321(A361324(n+2))²`
-/

namespace A177492.P13624825929086333212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361321 (A361324 (n + 2)).toNat ^ 2

end

end A177492.P13624825929086333212

namespace A177492

/-- `A361321(A361324(n+2))²` -/
def P13624825929086333212.Spec : Prop :=
  ∀ n, P13624825929086333212.a n = A177492 (n + 1)

end A177492

/-! ## A177492.P13980822787865771654

`A000469(n+2)*A120944(n+1)`
-/

namespace A177492.P13980822787865771654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 2) * A120944 (n + 1)

end

end A177492.P13980822787865771654

namespace A177492

/-- `A000469(n+2)*A120944(n+1)` -/
def P13980822787865771654.Spec : Prop :=
  ∀ n, P13980822787865771654.a n = A177492 (n + 1)

end A177492

/-! ## A177492.P1224247242858703378

`A177493(n+1)/A000469(n+2)`
-/

namespace A177492.P1224247242858703378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177493 (n + 1) : ℚ) / (A000469 (n + 2) : ℚ)

end

end A177492.P1224247242858703378

namespace A177492

/-- `A177493(n+1)/A000469(n+2)` -/
def P1224247242858703378.Spec : Prop :=
  ∀ n, P1224247242858703378.a n = (A177492 (n + 1) : ℚ)

end A177492

/-! ## A177492.P93474602832391669

`record[A395578(n+1)²]`
-/

namespace A177492.P93474602832391669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395578 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177492.P93474602832391669

namespace A177492

/-- `record[A395578(n+1)²]` -/
def P93474602832391669.Spec : Prop :=
  ∀ n, P93474602832391669.a n = A177492 (n + 1)

end A177492

/-! ## A177492.P11791367135238595468

`∩[A062503(n+1), A303606(n+1)]`
-/

namespace A177492.P11791367135238595468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177492.P11791367135238595468

namespace A177492

/-- `∩[A062503(n+1), A303606(n+1)]` -/
def P11791367135238595468.Spec : Prop :=
  ∀ n, (P11791367135238595468.a n : ℤ) = A177492 (n + 1)

end A177492

/-! ## A177492.P3618855892699370411

`∩[A062503(n+1), A387254(n+1)]`
-/

namespace A177492.P3618855892699370411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387254 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177492.P3618855892699370411

namespace A177492

/-- `∩[A062503(n+1), A387254(n+1)]` -/
def P3618855892699370411.Spec : Prop :=
  ∀ n, (P3618855892699370411.a n : ℤ) = A177492 (n + 1)

end A177492

/-! ## A177492.P1846084575777762814

`record[A084365(n+1)²]`
-/

namespace A177492.P1846084575777762814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084365 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177492.P1846084575777762814

namespace A177492

/-- `record[A084365(n+1)²]` -/
def P1846084575777762814.Spec : Prop :=
  ∀ n, P1846084575777762814.a n = A177492 (n + 1)

end A177492

/-! ## A177492.P14171492258347150990

`∏{p}[A366807(n+1), #²]`
-/

namespace A177492.P14171492258347150990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A177492.P14171492258347150990

namespace A177492

/-- `∏{p}[A366807(n+1), #²]` -/
def P14171492258347150990.Spec : Prop :=
  ∀ n, (P14171492258347150990.a n : ℤ) = A177492 (n + 1)

end A177492

/-! ## A177492.P2139483926583744227

`∩[A153158(n+1), A303606(n+1)]`
-/

namespace A177492.P2139483926583744227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177492.P2139483926583744227

namespace A177492

/-- `∩[A153158(n+1), A303606(n+1)]` -/
def P2139483926583744227.Spec : Prop :=
  ∀ n, (P2139483926583744227.a n : ℤ) = A177492 (n + 1)

end A177492

/-! ## A177492.P15427738679061565483

`eq[A055671(n), A087049(n)]²`
-/

namespace A177492.P15427738679061565483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A177492.P15427738679061565483

namespace A177492

/-- `eq[A055671(n), A087049(n)]²` -/
def P15427738679061565483.Spec : Prop :=
  ∀ n, (P15427738679061565483.a n : ℤ) = A177492 (n + 1)

end A177492

/-!
# A177493: Products of cubes of 2 or more distinct primes.

The programs for A177493, the canonical program `A177493.P9951410185934880408` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177493 has offset 1).

The definition of A177493 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120944, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A177493.P9951410185934880408

`A120944(n+1)^3`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A177493

/-- `A120944(n+1)^3` -/
def P9951410185934880408.Spec : Prop :=
  ∀ n, P9951410185934880408.a n = A177493 (n + 1)

theorem P9951410185934880408.correct : P9951410185934880408.Spec := by
  intro n
  simp only [A177493, Nat.add_sub_cancel]

end A177493

/-! ## A177493.P2187434909060797158

`sqrt(A177492(n+1)^3)`
-/

namespace A177493.P2187434909060797158
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A177492 (n + 1) ^ 3 : ℝ)

end

end A177493.P2187434909060797158

namespace A177493

/-- `sqrt(A177492(n+1)^3)` -/
def P2187434909060797158.Spec : Prop :=
  ∀ n, P2187434909060797158.a n = (A177493 (n + 1) : ℝ)

end A177493

/-! ## A177493.P5494887695761544864

`A120944(n+1)*A177492(n+1)`
-/

namespace A177493.P5494887695761544864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1) * A177492 (n + 1)

end

end A177493.P5494887695761544864

namespace A177493

/-- `A120944(n+1)*A177492(n+1)` -/
def P5494887695761544864.Spec : Prop :=
  ∀ n, P5494887695761544864.a n = A177493 (n + 1)

end A177493

/-! ## A177493.P17918402705533073354

`eq[A087049(n), A339579(n+1)]^3`
-/

namespace A177493.P17918402705533073354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3

end

end A177493.P17918402705533073354

namespace A177493

/-- `eq[A087049(n), A339579(n+1)]^3` -/
def P17918402705533073354.Spec : Prop :=
  ∀ n, (P17918402705533073354.a n : ℤ) = A177493 (n + 1)

end A177493

/-! ## A177493.P15105522175422781381

`(eq[A008966(n+1), A066247(n+1)]+1)^3`
-/

namespace A177493.P15105522175422781381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) ^ 3

end

end A177493.P15105522175422781381

namespace A177493

/-- `(eq[A008966(n+1), A066247(n+1)]+1)^3` -/
def P15105522175422781381.Spec : Prop :=
  ∀ n, (P15105522175422781381.a n : ℤ) = A177493 (n + 1)

end A177493

/-! ## A177493.P14575946658984661417

`A000469(n+2)^3`
-/

namespace A177493.P14575946658984661417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 2) ^ 3

end

end A177493.P14575946658984661417

namespace A177493

/-- `A000469(n+2)^3` -/
def P14575946658984661417.Spec : Prop :=
  ∀ n, P14575946658984661417.a n = A177493 (n + 1)

end A177493

/-! ## A177493.P14622647831011222599

`A000469(n+2)*A177492(n+1)`
-/

namespace A177493.P14622647831011222599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 2) * A177492 (n + 1)

end

end A177493.P14622647831011222599

namespace A177493

/-- `A000469(n+2)*A177492(n+1)` -/
def P14622647831011222599.Spec : Prop :=
  ∀ n, P14622647831011222599.a n = A177493 (n + 1)

end A177493

/-! ## A177493.P9404731335639833471

`A120944(n+1)*A120944(n+1)*A000469(n+2)`
-/

namespace A177493.P9404731335639833471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1) * A120944 (n + 1) * A000469 (n + 2)

end

end A177493.P9404731335639833471

namespace A177493

/-- `A120944(n+1)*A120944(n+1)*A000469(n+2)` -/
def P9404731335639833471.Spec : Prop :=
  ∀ n, P9404731335639833471.a n = A177493 (n + 1)

end A177493

/-! ## A177493.P25334245827884654

`∩[A062838(n+1), A388304(n+1)]`
-/

namespace A177493.P25334245827884654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177493.P25334245827884654

namespace A177493

/-- `∩[A062838(n+1), A388304(n+1)]` -/
def P25334245827884654.Spec : Prop :=
  ∀ n, (P25334245827884654.a n : ℤ) = A177493 (n + 1)

end A177493

/-! ## A177493.P17737667902769600584

`record[A084365(n+1)²*A084365(n+1)]`
-/

namespace A177493.P17737667902769600584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084365 (n + 1) ^ 2 * A084365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177493.P17737667902769600584

namespace A177493

/-- `record[A084365(n+1)²*A084365(n+1)]` -/
def P17737667902769600584.Spec : Prop :=
  ∀ n, P17737667902769600584.a n = A177493 (n + 1)

end A177493

/-! ## A177493.P5336259329418107593

`∩[A153147(n+1), A388304(n+1)]`
-/

namespace A177493.P5336259329418107593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177493.P5336259329418107593

namespace A177493

/-- `∩[A153147(n+1), A388304(n+1)]` -/
def P5336259329418107593.Spec : Prop :=
  ∀ n, (P5336259329418107593.a n : ℤ) = A177493 (n + 1)

end A177493

/-! ## A177493.P1685684636932506580

`A000578(A120944(n+1))`
-/

namespace A177493.P1685684636932506580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A120944 (n + 1)).toNat

end

end A177493.P1685684636932506580

namespace A177493

/-- `A000578(A120944(n+1))` -/
def P1685684636932506580.Spec : Prop :=
  ∀ n, P1685684636932506580.a n = A177493 (n + 1)

end A177493

/-! ## A177493.P2581505983239212062

`A000578(A000469(n+2))`
-/

namespace A177493.P2581505983239212062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000469 (n + 2)).toNat

end

end A177493.P2581505983239212062

namespace A177493

/-- `A000578(A000469(n+2))` -/
def P2581505983239212062.Spec : Prop :=
  ∀ n, P2581505983239212062.a n = A177493 (n + 1)

end A177493

/-! ## A177493.P1207213936599003111

`∩[A062838(n+1), A387255(n+1)]`
-/

namespace A177493.P1207213936599003111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177493.P1207213936599003111

namespace A177493

/-- `∩[A062838(n+1), A387255(n+1)]` -/
def P1207213936599003111.Spec : Prop :=
  ∀ n, (P1207213936599003111.a n : ℤ) = A177493 (n + 1)

end A177493

/-! ## A177493.P17328198512092103066

`record[A365786(n+1)²*A365786(n+1)]`
-/

namespace A177493.P17328198512092103066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365786 (n + 1) ^ 2 * A365786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177493.P17328198512092103066

namespace A177493

/-- `record[A365786(n+1)²*A365786(n+1)]` -/
def P17328198512092103066.Spec : Prop :=
  ∀ n, P17328198512092103066.a n = A177493 (n + 1)

end A177493

/-! ## A177493.P1416756283477233908

`∩[A062838(n+1), A372695(n+1)]`
-/

namespace A177493.P1416756283477233908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177493.P1416756283477233908

namespace A177493

/-- `∩[A062838(n+1), A372695(n+1)]` -/
def P1416756283477233908.Spec : Prop :=
  ∀ n, (P1416756283477233908.a n : ℤ) = A177493 (n + 1)

end A177493

/-! ## A177493.P15496297804577818094

`∩[A062838(n+1), A391416(n+1)]`
-/

namespace A177493.P15496297804577818094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177493.P15496297804577818094

namespace A177493

/-- `∩[A062838(n+1), A391416(n+1)]` -/
def P15496297804577818094.Spec : Prop :=
  ∀ n, (P15496297804577818094.a n : ℤ) = A177493 (n + 1)

end A177493

/-! ## A177493.P14772338238507113368

`∩[A390126(n+1), A000578(n)]`
-/

namespace A177493.P14772338238507113368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177493.P14772338238507113368

namespace A177493

/-- `∩[A390126(n+1), A000578(n)]` -/
def P14772338238507113368.Spec : Prop :=
  ∀ n, (P14772338238507113368.a n : ℤ) = A177493 (n + 1)

end A177493

/-! ## A177493.P8575281039478080525

`∩[A390126(n+1), A109900(n)]`
-/

namespace A177493.P8575281039478080525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177493.P8575281039478080525

namespace A177493

/-- `∩[A390126(n+1), A109900(n)]` -/
def P8575281039478080525.Spec : Prop :=
  ∀ n, (P8575281039478080525.a n : ℤ) = A177493 (n + 1)

end A177493

/-! ## A177493.P9854000220837788337

`∩[A036966(n+1), A390126(n+1)]`
-/

namespace A177493.P9854000220837788337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177493.P9854000220837788337

namespace A177493

/-- `∩[A036966(n+1), A390126(n+1)]` -/
def P9854000220837788337.Spec : Prop :=
  ∀ n, (P9854000220837788337.a n : ℤ) = A177493 (n + 1)

end A177493

/-!
# A177494: Least m > 1 such that m^m - 1 is divisible by a prime of the form n*m + 1 = A125556(n).

The programs for A177494, there is no canonical definition to state claims against.
-/

/-! ## A177494.P12340366486956456448

`(A125556(n+1)-1)/(n+1)`
-/

namespace A177494.P12340366486956456448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125556 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A177494.P12340366486956456448

/-! ## A177494.P2737365086449539366

`xor(1, A125556(n+1))/A000027(n+1)`
-/

namespace A177494.P2737365086449539366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A125556 (n + 1)) : ℚ) / (A000027 (n + 1) : ℚ)

end

end A177494.P2737365086449539366

/-! ## A177494.P14016670689218185091

`xor(1, A125556(n+1))/A008619(2*n)`
-/

namespace A177494.P14016670689218185091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A125556 (n + 1)) : ℚ) / (A008619 (2 * n) : ℚ)

end

end A177494.P14016670689218185091

/-! ## A177494.P7043992935343816511

`xor(A040487(3*n+4), A125556(n+1))/(n+1)`
-/

namespace A177494.P7043992935343816511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A040487 (3 * n + 4)) (A125556 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A177494.P7043992935343816511

/-! ## A177494.P13912117718003879396

`(A321804(A135481(n))+A125556(n+1))/(n+1)`
-/

namespace A177494.P13912117718003879396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321804 (A135481 n).toNat + A125556 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A177494.P13912117718003879396

/-! ## A177494.P15574950828855676598

`(A321804(A032973(n+1))+A125556(n+1))/(n+1)`
-/

namespace A177494.P15574950828855676598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321804 (A032973 (n + 1)).toNat + A125556 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A177494.P15574950828855676598

/-! ## A177494.P1221860568160245209

`A000010(A125556(n+1))/(n+1)`
-/

namespace A177494.P1221860568160245209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A125556 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A177494.P1221860568160245209

/-! ## A177494.P9266742424789742197

`A003958(A125556(n+1))/A000027(n+1)`
-/

namespace A177494.P9266742424789742197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (A125556 (n + 1)).toNat : ℚ) / (A000027 (n + 1) : ℚ)

end

end A177494.P9266742424789742197

/-! ## A177494.P216647471888839668

`A003958(A125556(n+1))/A130446(n+1)`
-/

namespace A177494.P216647471888839668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (A125556 (n + 1)).toNat : ℚ) / (A130446 (n + 1) : ℚ)

end

end A177494.P216647471888839668

/-! ## A177494.P17467019858823132144

`A003958(A125556(n+1))/A008620(3*n)`
-/

namespace A177494.P17467019858823132144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (A125556 (n + 1)).toNat : ℚ) / (A008620 (3 * n) : ℚ)

end

end A177494.P17467019858823132144

/-!
# A177499: Period 4: repeat [1, 16, 4, 16].

The programs for A177499, the canonical program `A177499.P16889079834931337514` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177499 has offset 0).

The definition of A177499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177499.P16889079834931337514

`a(n-4)` with `a(0)=1, a(1)=16, a(2)=4, a(3)=16`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177499

/-- `a(n-4)` -/
def P16889079834931337514.Spec : Prop :=
  ∀ n, (P16889079834931337514.a n : ℤ) = A177499 n

theorem P16889079834931337514.correct : P16889079834931337514.Spec := by
  intro n
  simp only [A177499]

end A177499

