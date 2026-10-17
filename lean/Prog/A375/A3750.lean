import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
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
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A375000: Position of the last requested element when the elements of the n-th composition (in standard order) are requested from a self-organizing list initialized to (1, 2, 3, ...), where a requested element at position i is moved to position floor((i+1)/2).

The programs for A375000, there is no canonical definition to state claims against.
-/

/-! ## A375000.P12547843132276001727

`A374995(n+1)-A374995(-ceil(n/xor(n, -(n+2))))`
-/

namespace A375000.P12547843132276001727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 (n + 1) - A374995 (-⌈(n : ℚ) / (Int.xor (n : ℤ) (-(n + 2 : ℤ)) : ℚ)⌉).toNat

end

end A375000.P12547843132276001727

/-! ## A375000.P9381434796637474906

`A374995(n+1)-A374995(floor(n/2^val(n+1, 2))/2)`
-/

namespace A375000.P9381434796637474906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 (n + 1) - A374995 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2)).toNat

end

end A375000.P9381434796637474906

/-! ## A375000.P6908981431448077354

`A374995(n+1)-A374995(A025480(n))`
-/

namespace A375000.P6908981431448077354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 (n + 1) - A374995 (A025480 n).toNat

end

end A375000.P6908981431448077354

/-! ## A375000.P12018356957809728285

`A374995(n+1)-A374995(A153733(n)/2)`
-/

namespace A375000.P12018356957809728285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 (n + 1) - A374995 (SequenceMachineLib.roundAway ((A153733 n : ℚ) / 2)).toNat

end

end A375000.P12018356957809728285

/-! ## A375000.P9101883195662422995

`A374995(n+1)-A374995(floor(A322250(n+1)/2))`
-/

namespace A375000.P9101883195662422995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 (n + 1) - A374995 ⌊(A322250 (n + 1) : ℚ) / 2⌋.toNat

end

end A375000.P9101883195662422995

/-! ## A375000.P4728491110879110572

`A374995(n+1)-A374995(floor(A166466(n+1)/6))`
-/

namespace A375000.P4728491110879110572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 (n + 1) - A374995 ⌊(A166466 (n + 1) : ℚ) / 6⌋.toNat

end

end A375000.P4728491110879110572

/-! ## A375000.P3504283381485150316

`or(A124761(A098158(n)), A374998(n+1))`
-/

namespace A375000.P3504283381485150316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124761 (A098158 n).toNat) (A374998 (n + 1))

end

end A375000.P3504283381485150316

/-!
# A375001: Square array read by antidiagonals: T(n,k) is the position of the last requested element when the elements of the k-th composition (in standard order) are requested from a self-organizing list initialized to (1, 2, 3, ...), using the move-ahead(n) updating strategy; n >= 0, k >= 1.

The programs for A375001, there is no canonical definition to state claims against.
-/

/-! ## A375001.P9847226159504457698

`A273568(gcd(A094416(n+1), A215914(2*n+3)))`
-/

namespace A375001.P9847226159504457698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273568 (Int.gcd (A094416 (n + 1)) (A215914 (2 * n + 3)))

end

end A375001.P9847226159504457698

/-! ## A375001.P1176900397692434009

`A391925(gcd(A381810(3*(n+1)), A391925(n+1)))`
-/

namespace A375001.P1176900397692434009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391925 (Int.gcd (A381810 (3 * (n + 1))) (A391925 (n + 1)))

end

end A375001.P1176900397692434009

/-! ## A375001.P12074432539463655636

`A004736(gcd(A004736(n+1), A292276(3*(n+1))))`
-/

namespace A375001.P12074432539463655636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (Int.gcd (A004736 (n + 1)) (A292276 (3 * (n + 1))))

end

end A375001.P12074432539463655636

/-! ## A375001.P10921189288534589232

`gcd(A130469(3*n+5), A137948(A025581(n)))`
-/

namespace A375001.P10921189288534589232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130469 (3 * n + 5)) (A137948 (A025581 n).toNat)

end

end A375001.P10921189288534589232

/-! ## A375001.P18291555201290530935

`A364447(A051839(3*n+5)-A363787(n+1))`
-/

namespace A375001.P18291555201290530935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364447 (A051839 (3 * n + 5) - A363787 (n + 1)).toNat

end

end A375001.P18291555201290530935

/-!
# A375003: Number of ordered solutions (x,y,z,w) to x*y + x*z + x*w + y*z + y*w + z*w = n with x,y,z,w >= 1.

The programs for A375003, there is no canonical definition to state claims against.
-/

/-! ## A375003.P2352803682959701751

`A375004(n+1)+A284508(A374995(3*n+1))`
-/

namespace A375003.P2352803682959701751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375004 (n + 1) + A284508 (A374995 (3 * n + 1)).toNat

end

end A375003.P2352803682959701751

/-! ## A375003.P528399234055625081

`∑{d}[n+1, A364278(#-1)*A375004((n+1)/#)]`
-/

namespace A375003.P528399234055625081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A364278 (d - 1) * A375004 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A375003.P528399234055625081

/-! ## A375003.P10576699049109629169

`∑{d}[n+1, A002562(#)*A375004((n+1)/#)]`
-/

namespace A375003.P10576699049109629169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002562 d * A375004 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A375003.P10576699049109629169

/-! ## A375003.P2913273996256870678

`∑{d}[n+1, A350751(#-1)*A375004((n+1)/#)]`
-/

namespace A375003.P2913273996256870678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A350751 (d - 1) * A375004 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A375003.P2913273996256870678

/-! ## A375003.P17290655438069593672

`∑{d}[n+1, A101126(#-1)*A375004((n+1)/#)]`
-/

namespace A375003.P17290655438069593672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101126 (d - 1) * A375004 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A375003.P17290655438069593672

/-!
# A375004: Number of ordered primitive solutions (x,y,z,w) to x*y + x*z + x*w + y*z + y*w + z*w = n with x,y,z,w >= 1.

The programs for A375004, there is no canonical definition to state claims against.
-/

/-! ## A375004.P4995899673550754676

`∑{d}[n+1, A271102(#)*A375003((n+1)/#)]`
-/

namespace A375004.P4995899673550754676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A375003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A375004.P4995899673550754676

/-! ## A375004.P12347879240768545535

`and(A123121(n+1), A375003(n+1))`
-/

namespace A375004.P12347879240768545535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123121 (n + 1)) (A375003 (n + 1))

end

end A375004.P12347879240768545535

/-! ## A375004.P651710988838352075

`A375003(n+1)-A105563(A374995(3*n+1))`
-/

namespace A375004.P651710988838352075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375003 (n + 1) - A105563 (A374995 (3 * n + 1)).toNat

end

end A375004.P651710988838352075

/-! ## A375004.P16862739508782974866

`A375003(n+1)-A286044(A304682(3*(n+2)))`
-/

namespace A375004.P16862739508782974866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375003 (n + 1) - A286044 (A304682 (3 * (n + 2))).toNat

end

end A375004.P16862739508782974866

/-!
# A375005: Lexicographically earliest infinite sequence of distinct positive integers such that two consecutive terms always have some common prime factor and for any prime number p, any run of consecutive multiples of p has length exactly 2.

The programs for A375005, there is no canonical definition to state claims against.
-/

/-! ## A375005.P5190365892208163103

`A349984(A076084(n+2))`
-/

namespace A375005.P5190365892208163103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349984 (A076084 (n + 2)).toNat

end

end A375005.P5190365892208163103

/-! ## A375005.P13740170628800898152

`A349984(A151764(n+2))`
-/

namespace A375005.P13740170628800898152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349984 (A151764 (n + 2)).toNat

end

end A375005.P13740170628800898152

/-! ## A375005.P15125571823501387762

`A349984(A043320(n+1)+1)`
-/

namespace A375005.P15125571823501387762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349984 (A043320 (n + 1) + 1).toNat

end

end A375005.P15125571823501387762

/-! ## A375005.P12589563478432285321

`A349984(A044917(n+1)+1)`
-/

namespace A375005.P12589563478432285321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349984 (A044917 (n + 1) + 1).toNat

end

end A375005.P12589563478432285321

/-! ## A375005.P15117085490337794762

`A349984(A161953(n+1)+1)`
-/

namespace A375005.P15117085490337794762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349984 (A161953 (n + 1) + 1).toNat

end

end A375005.P15117085490337794762

/-!
# A375006: Numbers whose Collatz trajectory is a Sidon sequence.

The programs for A375006, there is no canonical definition to state claims against.
-/

/-! ## A375006.P10673329463244466533

`∩[A161989(n+1), A320020(n+1)]`
-/

namespace A375006.P10673329463244466533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375006.P10673329463244466533

/-! ## A375006.P12482497876473949486

`∩[A308149(n+1), A320020(n+1)]`
-/

namespace A375006.P12482497876473949486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375006.P12482497876473949486

/-! ## A375006.P11689564187860607461

`∩[A087686(n+1), A308149(n+1)]`
-/

namespace A375006.P11689564187860607461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375006.P11689564187860607461

/-! ## A375006.P5037298559305781340

`∩[A095381(n+1), A384500(n+1)]`
-/

namespace A375006.P5037298559305781340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375006.P5037298559305781340

/-! ## A375006.P16443100943822330817

`∩[A196871(n+1), A333764(n+1)]`
-/

namespace A375006.P16443100943822330817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375006.P16443100943822330817

/-!
# A375008: Products m of k = 3 consecutive primes p_1..p_k, where only p_1 < m^(1/k).

The programs for A375008, the canonical program `A375008.P4839878587626124872` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375008 has offset 1).

The definition of A375008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375008.P4839878587626124872

`A046301(A333231(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A375008

/-- `A046301(A333231(n+1))` -/
def P4839878587626124872.Spec : Prop :=
  ∀ n, P4839878587626124872.a n = A375008 (n + 1)

theorem P4839878587626124872.correct : P4839878587626124872.Spec := by
  intro n
  simp only [A375008, Nat.add_sub_cancel]

end A375008

/-! ## A375008.P17578857201035975421

`A046301(A046868(n+1)-1)`
-/

namespace A375008.P17578857201035975421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (A046868 (n + 1) - 1).toNat

end

end A375008.P17578857201035975421

namespace A375008

/-- `A046301(A046868(n+1)-1)` -/
def P17578857201035975421.Spec : Prop :=
  ∀ n, P17578857201035975421.a n = A375008 (n + 1)

end A375008

/-! ## A375008.P5755990331817377297

`A046869(n+1)*A090076(A333231(n+1))`
-/

namespace A375008.P5755990331817377297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046869 (n + 1) * A090076 (A333231 (n + 1)).toNat

end

end A375008.P5755990331817377297

namespace A375008

/-- `A046869(n+1)*A090076(A333231(n+1))` -/
def P5755990331817377297.Spec : Prop :=
  ∀ n, P5755990331817377297.a n = A375008 (n + 1)

end A375008

/-!
# A375010: a(n) = prime(n-1) - floor((prime(n-2) + prime(n-1) + prime(n)) / 3).

The programs for A375010, the canonical program `A375010.P8651243061065902656` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375010 has offset 3).

The definition of A375010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375010.P1917209898492804512

`round(A073272(n+1)/3)`
-/

namespace A375010.P1917209898492804512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A073272 (n + 1) : ℚ) / 3)

end

end A375010.P1917209898492804512

namespace A375010

/-- `round(A073272(n+1)/3)` -/
def P1917209898492804512.Spec : Prop :=
  ∀ n, P1917209898492804512.a n = A375010 (n + 3)

end A375010

/-! ## A375010.P8651243061065902656

`-floor(A036263(n+1)/3)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A375010

/-- `-floor(A036263(n+1)/3)` -/
def P8651243061065902656.Spec : Prop :=
  ∀ n, P8651243061065902656.a n = A375010 (n + 3)

theorem P8651243061065902656.correct : P8651243061065902656.Spec := by
  intro n
  simp only [A375010, Nat.add_sub_cancel]

end A375010

/-! ## A375010.P16344048871459351752

`floor((2-Δ[A001223(n+1)])/3)`
-/

namespace A375010.P16344048871459351752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 - (f1 (n + 1) - f1 n) : ℚ) / 3⌋

end

end A375010.P16344048871459351752

namespace A375010

/-- `floor((2-Δ[A001223(n+1)])/3)` -/
def P16344048871459351752.Spec : Prop :=
  ∀ n, P16344048871459351752.a n = A375010 (n + 3)

end A375010

/-! ## A375010.P1085166011952880168

`-floor(Δ[A230846(n+2)]/3)`
-/

namespace A375010.P1085166011952880168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(f1 (n + 1) - f1 n : ℚ) / 3⌋

end

end A375010.P1085166011952880168

namespace A375010

/-- `-floor(Δ[A230846(n+2)]/3)` -/
def P1085166011952880168.Spec : Prop :=
  ∀ n, P1085166011952880168.a n = A375010 (n + 3)

end A375010

/-! ## A375010.P9722857529898320766

`floor(A036263(n+1)/3)/A099837(3*n+2)`
-/

namespace A375010.P9722857529898320766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A036263 (n + 1) : ℚ) / 3⌋ : ℚ) / (A099837 (3 * n + 2) : ℚ)

end

end A375010.P9722857529898320766

namespace A375010

/-- `floor(A036263(n+1)/3)/A099837(3*n+2)` -/
def P9722857529898320766.Spec : Prop :=
  ∀ n, P9722857529898320766.a n = (A375010 (n + 3) : ℚ)

end A375010

/-!
# A375011: a(n) = A373738(n) - A008479(n).

The programs for A375011, there is no canonical definition to state claims against.
-/

/-! ## A375011.P7606676921089251095

`A373738(n+1)-A008479(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A375011.P7606676921089251095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373738 (n + 1) - A008479 (n + 1)

end

end A375011.P7606676921089251095

/-! ## A375011.P13488611762431954962

`A365788(n+1)-A372192(n+1)`
-/

namespace A375011.P13488611762431954962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365788 (n + 1) - A372192 (n + 1)

end

end A375011.P13488611762431954962

/-! ## A375011.P11565166226517595046

`A010846(n+1)-(A372192(n+1)+A008479(n+1))`
-/

namespace A375011.P11565166226517595046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - (A372192 (n + 1) + A008479 (n + 1))

end

end A375011.P11565166226517595046

/-! ## A375011.P466713726116557195

`A365788(n+1)+A373738(n+1)-A010846(n+1)`
-/

namespace A375011.P466713726116557195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365788 (n + 1) + (A373738 (n + 1) - A010846 (n + 1))

end

end A375011.P466713726116557195

/-! ## A375011.P5861681495510649631

`A373738(n+1)-(A000005(n+1)-A372720(n+1))`
-/

namespace A375011.P5861681495510649631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373738 (n + 1) - (A000005 (n + 1) - A372720 (n + 1))

end

end A375011.P5861681495510649631

/-!
# A375016: Number of 1-unbordered words of length n over a 3-letter alphabet beginning with a fixed letter.

The programs for A375016, there is no canonical definition to state claims against.
-/

/-! ## A375016.P11052996036130272368

`A348863(∑[n])`
-/

namespace A375016.P11052996036130272368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348863 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375016.P11052996036130272368

/-! ## A375016.P9920653882683760002

`A156689(A149175(n))`
-/

namespace A375016.P9920653882683760002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A149175 n).toNat

end

end A375016.P9920653882683760002

/-! ## A375016.P233446644947615877

`A156689(A149176(n))`
-/

namespace A375016.P233446644947615877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A149176 n).toNat

end

end A375016.P233446644947615877

/-!
# A375017: Squarefree numbers k such that k is the area of a rational isosceles triangle.

The programs for A375017, there is no canonical definition to state claims against.
-/

/-! ## A375017.P9180105902006176017

`filter[A375474(n+1), A008966(#)]`
-/

namespace A375017.P9180105902006176017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A375017.P9180105902006176017

/-! ## A375017.P14616314129462171079

`∩[A144338(n+1), A375474(n+1)]`
-/

namespace A375017.P14616314129462171079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375017.P14616314129462171079

/-! ## A375017.P8743768861878350613

`∩[A005117(n+1), A375474(n+1)]`
-/

namespace A375017.P8743768861878350613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375017.P8743768861878350613

/-! ## A375017.P15188904648491452123

`∩[A167207(n+1), A375474(n+1)]`
-/

namespace A375017.P15188904648491452123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375017.P15188904648491452123

/-! ## A375017.P48223228679863128

`∩[A210490(n+1), A375474(n+1)]`
-/

namespace A375017.P48223228679863128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375017.P48223228679863128

/-!
# A375018: Numbers k such that repeated application of the Pisano period eventually gives 24.

The programs for A375018, there is no canonical definition to state claims against.
-/

/-! ## A375018.P9473669564788483707

`eq[1, A001179(n+1)]+1`
-/

namespace A375018.P9473669564788483707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375018.P9473669564788483707

/-! ## A375018.P16683009358067370028

`eq[1, A001179(A004277(n)-n)]`
-/

namespace A375018.P16683009358067370028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001179 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375018.P16683009358067370028

/-! ## A375018.P15965028450927205636

`eq[2, A333805(A235249(n+1))]+1`
-/

namespace A375018.P15965028450927205636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (A235249 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375018.P15965028450927205636

/-! ## A375018.P15568103402663306345

`eq[1, A068432(A235249(n+1)+2)]+1`
-/

namespace A375018.P15568103402663306345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (A235249 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375018.P15568103402663306345

/-! ## A375018.P8512865153380523347

`lt[A136522(A323610(2*n+3)), A121361(n+4)]`
-/

namespace A375018.P8512865153380523347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A323610 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121361 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375018.P8512865153380523347

/-!
# A375020: Alternating sum phi(1) - phi(2) + phi(3) - phi(4) + ... + ((-1)^(10^n+1))*phi(10^n).

The programs for A375020, the canonical program `A375020.P9231730803761729613` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375020 has offset 0).

The definition of A375020 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068773, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375020.P9231730803761729613

`A068773(10^n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A375020

/-- `A068773(10^n)` -/
def P9231730803761729613.Spec : Prop :=
  ∀ n, P9231730803761729613.a n = A375020 n

theorem P9231730803761729613.correct : P9231730803761729613.Spec := by
  intro n
  simp only [A375020]

end A375020

/-!
# A375022: Number of permutations of n (distinct) elements from [2n] without consecutive adjacent values.

The programs for A375022, there is no canonical definition to state claims against.
-/

/-! ## A375022.P8856880848369488153

`A338526(∑[4*n])`
-/

namespace A375022.P8856880848369488153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338526 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375022.P8856880848369488153

/-! ## A375022.P7828575961287143295

`A181936(n)*A338526(A046092(n))`
-/

namespace A375022.P7828575961287143295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181936 n * A338526 (A046092 n).toNat

end

end A375022.P7828575961287143295

/-!
# A375028: Primes in A374965 in order of their occurrence.

The programs for A375028, there is no canonical definition to state claims against.
-/

/-! ## A375028.P14610076793959504170

`A374965(A373799(n+1))`
-/

namespace A375028.P14610076793959504170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374965 (A373799 (n + 1)).toNat

end

end A375028.P14610076793959504170

/-! ## A375028.P1018196848275007000

`A374965(∑[A373798(n+1)])`
-/

namespace A375028.P1018196848275007000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374965 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A375028.P1018196848275007000

/-! ## A375028.P58610921950556141

`A374965(eq[A039915(n+1), A374965(n+1)])`
-/

namespace A375028.P58610921950556141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374965 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A375028.P58610921950556141

/-! ## A375028.P9010036955307425747

`A374965(lt[A374965(n+1), A006218(n)+n])`
-/

namespace A375028.P9010036955307425747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374965 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A375028.P9010036955307425747

/-! ## A375028.P10622134792825569243

`A374965(lt[A374965(n+1), A034886(3*(n+1))])`
-/

namespace A375028.P10622134792825569243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374965 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A375028.P10622134792825569243

/-!
# A375029: Lexicographically least increasing sequence such that for any prime number p, any run of consecutive multiples of p has length exactly 2.

The programs for A375029, there is no canonical definition to state claims against.
-/

/-! ## A375029.P1041531010142134499

`A177186(A077168(n))`
-/

namespace A375029.P1041531010142134499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177186 (A077168 n).toNat

end

end A375029.P1041531010142134499

/-! ## A375029.P13016536192462091378

`filter[A177186(n+1), A242718(#)]`
-/

namespace A375029.P13016536192462091378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A375029.P13016536192462091378

/-! ## A375029.P11592863136774122705

`∩[A177186(n+1), A252474(n+1)]`
-/

namespace A375029.P11592863136774122705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375029.P11592863136774122705

/-! ## A375029.P11672829798201346021

`∩[A177186(n+1), A321993(n+1)]`
-/

namespace A375029.P11672829798201346021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375029.P11672829798201346021

/-! ## A375029.P15000238538394529742

`∩[A177186(n+1), A322554(n+1)]`
-/

namespace A375029.P15000238538394529742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375029.P15000238538394529742

/-!
# A375030: Irregular triangle T(n, k), n > 0, k = 1..A373797(n), read by rows; the n-th row corresponds to the lexicographically earliest sequence S of A373797(n) distinct integers in the range 1..n such that for any prime number p, any run of consecutive multiples of p in S has length exactly 2.

The programs for A375030, there is no canonical definition to state claims against.
-/

/-! ## A375030.P10874801978616388303

`gcd(A008998(n), A318305(A008998(n)))`
-/

namespace A375030.P10874801978616388303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008998 n) (A318305 (A008998 n).toNat)

end

end A375030.P10874801978616388303

/-! ## A375030.P8683172559421604646

`A055089(A234658(n+1)%A208452(n))`
-/

namespace A375030.P8683172559421604646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 (Int.tmod (A234658 (n + 1)) (A208452 n)).toNat

end

end A375030.P8683172559421604646

/-!
# A375031: Numbers whose prime factorization has at least one exponent that equals 2 and no higher even exponent.

The programs for A375031, the canonical program `A375031.P13943005656695956466` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375031 has offset 1).

The definition of A375031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2424 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375031.P13943005656695956466

`eq[2, A375033(n+1)]+1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A375031

/-- `eq[2, A375033(n+1)]+1` -/
def P13943005656695956466.Spec : Prop :=
  ∀ n, (P13943005656695956466.a n : ℤ) = A375031 (n + 1)

theorem P13943005656695956466.correct : P13943005656695956466.Spec := by
  intro n
  simp only [A375031, Nat.add_sub_cancel]

end A375031

/-! ## A375031.P7020147060885191812

`eq[2, A375033(A028310(n))]`
-/

namespace A375031.P7020147060885191812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375033 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375031.P7020147060885191812

namespace A375031

/-- `eq[2, A375033(A028310(n))]` -/
def P7020147060885191812.Spec : Prop :=
  ∀ n, (P7020147060885191812.a n : ℤ) = A375031 (n + 1)

end A375031

/-! ## A375031.P15553468689764665353

`∩[A038109(n+1), A355571(n+1)]`
-/

namespace A375031.P15553468689764665353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375031.P15553468689764665353

namespace A375031

/-- `∩[A038109(n+1), A355571(n+1)]` -/
def P15553468689764665353.Spec : Prop :=
  ∀ n, (P15553468689764665353.a n : ℤ) = A375031 (n + 1)

end A375031

/-! ## A375031.P14467495025347009002

`∩[A304365(n+1), A355571(n+1)]`
-/

namespace A375031.P14467495025347009002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375031.P14467495025347009002

namespace A375031

/-- `∩[A304365(n+1), A355571(n+1)]` -/
def P14467495025347009002.Spec : Prop :=
  ∀ n, (P14467495025347009002.a n : ℤ) = A375031 (n + 1)

end A375031

/-!
# A375032: The maximum odd exponent in the prime factorization of n, or 0 if no such exponent exists.

The programs for A375032, the canonical program `A375032.P9183128720752084141` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375032 has offset 1).

The definition of A375032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375032.P9183128720752084141

`A051903(A350389(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A375032

/-- `A051903(A350389(n+1))` -/
def P9183128720752084141.Spec : Prop :=
  ∀ n, P9183128720752084141.a n = A375032 (n + 1)

theorem P9183128720752084141.correct : P9183128720752084141.Spec := by
  intro n
  simp only [A375032, Nat.add_sub_cancel]

end A375032

/-! ## A375032.P15150117821939735982

`A375034(n+1)+A375033(n+1)`
-/

namespace A375032.P15150117821939735982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375034 (n + 1) + A375033 (n + 1)

end

end A375032.P15150117821939735982

namespace A375032

/-- `A375034(n+1)+A375033(n+1)` -/
def P15150117821939735982.Spec : Prop :=
  ∀ n, P15150117821939735982.a n = A375032 (n + 1)

end A375032

/-! ## A375032.P4816792282422505451

`A051903((n+1)/A350388(n+1))`
-/

namespace A375032.P4816792282422505451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350388 (n + 1) : ℚ))).toNat

end

end A375032.P4816792282422505451

namespace A375032

/-- `A051903((n+1)/A350388(n+1))` -/
def P4816792282422505451.Spec : Prop :=
  ∀ n, P4816792282422505451.a n = A375032 (n + 1)

end A375032

/-! ## A375032.P1633009619755327190

`A375034((n+1)/A350388(n+1))`
-/

namespace A375032.P1633009619755327190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375034 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350388 (n + 1) : ℚ))).toNat

end

end A375032.P1633009619755327190

namespace A375032

/-- `A375034((n+1)/A350388(n+1))` -/
def P1633009619755327190.Spec : Prop :=
  ∀ n, P1633009619755327190.a n = A375032 (n + 1)

end A375032

/-! ## A375032.P1183490686846184867

`A372601(A350389(2*n+1-n))`
-/

namespace A375032.P1183490686846184867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372601 (A350389 (2 * n + 1 - n)).toNat

end

end A375032.P1183490686846184867

namespace A375032

/-- `A372601(A350389(2*n+1-n))` -/
def P1183490686846184867.Spec : Prop :=
  ∀ n, P1183490686846184867.a n = A375032 (n + 1)

end A375032

/-! ## A375032.P8078251563984891077

`A375034(n+1)-A375034(A350388(n+1))`
-/

namespace A375032.P8078251563984891077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375034 (n + 1) - A375034 (A350388 (n + 1)).toNat

end

end A375032.P8078251563984891077

namespace A375032

/-- `A375034(n+1)-A375034(A350388(n+1))` -/
def P8078251563984891077.Spec : Prop :=
  ∀ n, P8078251563984891077.a n = A375032 (n + 1)

end A375032

/-! ## A375032.P1444463620243521793

`A370079(n+1)%A059903(n+1)`
-/

namespace A375032.P1444463620243521793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370079 (n + 1)) (A059903 (n + 1))

end

end A375032.P1444463620243521793

namespace A375032

/-- `A370079(n+1)%A059903(n+1)` -/
def P1444463620243521793.Spec : Prop :=
  ∀ n, P1444463620243521793.a n = A375032 (n + 1)

end A375032

/-! ## A375032.P517558834053099019

`A372601(A331737(A350389(n+1)²))`
-/

namespace A375032.P517558834053099019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372601 (A331737 (A350389 (n + 1) ^ 2).toNat).toNat

end

end A375032.P517558834053099019

namespace A375032

/-- `A372601(A331737(A350389(n+1)²))` -/
def P517558834053099019.Spec : Prop :=
  ∀ n, P517558834053099019.a n = A375032 (n + 1)

end A375032

/-! ## A375032.P7592829558276753787

`A375033(A350389(n+1)²)/2`
-/

namespace A375032.P7592829558276753787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375033 (A350389 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A375032.P7592829558276753787

namespace A375032

/-- `A375033(A350389(n+1)²)/2` -/
def P7592829558276753787.Spec : Prop :=
  ∀ n, P7592829558276753787.a n = (A375032 (n + 1) : ℚ)

end A375032

/-! ## A375032.P7474963394758471968

`and(A320390(n+1), A370079(n+1))`
-/

namespace A375032.P7474963394758471968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A320390 (n + 1)) (A370079 (n + 1))

end

end A375032.P7474963394758471968

namespace A375032

/-- `and(A320390(n+1), A370079(n+1))` -/
def P7474963394758471968.Spec : Prop :=
  ∀ n, P7474963394758471968.a n = A375032 (n + 1)

end A375032

/-!
# A375033: The maximum even exponent in the prime factorization of n, or 0 if no such exponent exists.

The programs for A375033, the canonical program `A375033.P7336156441965577288` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375033 has offset 1).

The definition of A375033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375033.P7202399145950353671

`A051903(A350388(n+1))`
-/

namespace A375033.P7202399145950353671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A350388 (n + 1)).toNat

end

end A375033.P7202399145950353671

namespace A375033

/-- `A051903(A350388(n+1))` -/
def P7202399145950353671.Spec : Prop :=
  ∀ n, P7202399145950353671.a n = A375033 (n + 1)

end A375033

/-! ## A375033.P6772992349286193529

`A051903(A071974(n+1)²)`
-/

namespace A375033.P6772992349286193529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A071974 (n + 1) ^ 2).toNat

end

end A375033.P6772992349286193529

namespace A375033

/-- `A051903(A071974(n+1)²)` -/
def P6772992349286193529.Spec : Prop :=
  ∀ n, P6772992349286193529.a n = A375033 (n + 1)

end A375033

/-! ## A375033.P13604599867910514280

`A375032(n+1)-A375034(n+1)`
-/

namespace A375033.P13604599867910514280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375032 (n + 1) - A375034 (n + 1)

end

end A375033.P13604599867910514280

namespace A375033

/-- `A375032(n+1)-A375034(n+1)` -/
def P13604599867910514280.Spec : Prop :=
  ∀ n, P13604599867910514280.a n = A375033 (n + 1)

end A375033

/-! ## A375033.P7336156441965577288

`A051903((n+1)/A350389(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A375033

/-- `A051903((n+1)/A350389(n+1))` -/
def P7336156441965577288.Spec : Prop :=
  ∀ n, P7336156441965577288.a n = A375033 (n + 1)

theorem P7336156441965577288.correct : P7336156441965577288.Spec := by
  intro n
  simp only [A375033, Nat.add_sub_cancel]

end A375033

/-! ## A375033.P4926841878062196110

`A375034(A350389(n+1))-A375034(n+1)`
-/

namespace A375033.P4926841878062196110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375034 (A350389 (n + 1)).toNat - A375034 (n + 1)

end

end A375033.P4926841878062196110

namespace A375033

/-- `A375034(A350389(n+1))-A375034(n+1)` -/
def P4926841878062196110.Spec : Prop :=
  ∀ n, P4926841878062196110.a n = A375033 (n + 1)

end A375033

/-! ## A375033.P5668499207919203867

`val(A137901(A046523(n+1)), 2)`
-/

namespace A375033.P5668499207919203867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A137901 (A046523 (n + 1)).toNat).toNat 2

end

end A375033.P5668499207919203867

namespace A375033

/-- `val(A137901(A046523(n+1)), 2)` -/
def P5668499207919203867.Spec : Prop :=
  ∀ n, (P5668499207919203867.a n : ℤ) = A375033 (n + 1)

end A375033

/-! ## A375033.P1433483668888491489

`A087732(n+1)%A365401(n+1)`
-/

namespace A375033.P1433483668888491489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087732 (n + 1)) (A365401 (n + 1))

end

end A375033.P1433483668888491489

namespace A375033

/-- `A087732(n+1)%A365401(n+1)` -/
def P1433483668888491489.Spec : Prop :=
  ∀ n, P1433483668888491489.a n = A375033 (n + 1)

end A375033

/-! ## A375033.P15309988947501187964

`A028629(A112622(n+1))`
-/

namespace A375033.P15309988947501187964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028629 (A112622 (n + 1)).toNat

end

end A375033.P15309988947501187964

namespace A375033

/-- `A028629(A112622(n+1))` -/
def P15309988947501187964.Spec : Prop :=
  ∀ n, P15309988947501187964.a n = A375033 (n + 1)

end A375033

/-!
# A375034: The difference between the maximum odd exponent and the maximum even exponent in the prime factorization of n, where 0 is assigned to each maximum exponent if no such exponent exists.

The programs for A375034, the canonical program `A375034.P14557958102364292036` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375034 has offset 1).

The definition of A375034 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375032, A375033, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375034.P14557958102364292036

`A375032(n+1)-A375033(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A375034

/-- `A375032(n+1)-A375033(n+1)` -/
def P14557958102364292036.Spec : Prop :=
  ∀ n, P14557958102364292036.a n = A375034 (n + 1)

theorem P14557958102364292036.correct : P14557958102364292036.Spec := by
  intro n
  simp only [A375034, Nat.add_sub_cancel]

end A375034

/-! ## A375034.P15319882119078516400

`A051903(A350389(n+1))-A375033(n+1)`
-/

namespace A375034.P15319882119078516400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A350389 (n + 1)).toNat - A375033 (n + 1)

end

end A375034.P15319882119078516400

namespace A375034

/-- `A051903(A350389(n+1))-A375033(n+1)` -/
def P15319882119078516400.Spec : Prop :=
  ∀ n, P15319882119078516400.a n = A375034 (n + 1)

end A375034

/-! ## A375034.P17520402942390171342

`A375032(n+1)-A051903(A350388(n+1))`
-/

namespace A375034.P17520402942390171342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375032 (n + 1) - A051903 (A350388 (n + 1)).toNat

end

end A375034.P17520402942390171342

namespace A375034

/-- `A375032(n+1)-A051903(A350388(n+1))` -/
def P17520402942390171342.Spec : Prop :=
  ∀ n, P17520402942390171342.a n = A375034 (n + 1)

end A375034

/-! ## A375034.P10521184366578445024

`A332422(A181819(n+1))%A091175(n)`
-/

namespace A375034.P10521184366578445024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332422 (A181819 (n + 1)).toNat) (A091175 n)

end

end A375034.P10521184366578445024

namespace A375034

/-- `A332422(A181819(n+1))%A091175(n)` -/
def P10521184366578445024.Spec : Prop :=
  ∀ n, P10521184366578445024.a n = A375034 (n + 1)

end A375034

/-! ## A375034.P16396798594239149739

`A051904(n+1)/A098417(A247513(n+1))`
-/

namespace A375034.P16396798594239149739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051904 (n + 1) : ℚ) / (A098417 (A247513 (n + 1)).toNat : ℚ)

end

end A375034.P16396798594239149739

namespace A375034

/-- `A051904(n+1)/A098417(A247513(n+1))` -/
def P16396798594239149739.Spec : Prop :=
  ∀ n, P16396798594239149739.a n = (A375034 (n + 1) : ℚ)

end A375034

/-!
# A375037: Irregular triangle read by rows T(n,k), n >= 1, k >= 1, in which row n lists the divisors of n but every middle divisor is replaced with zero.

The programs for A375037, there is no canonical definition to state claims against.
-/

/-! ## A375037.P4869476921800043083

`A005171(A053699(n+1))*A027750(n+1)`
-/

namespace A375037.P4869476921800043083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A053699 (n + 1)).toNat * A027750 (n + 1)

end

end A375037.P4869476921800043083

/-! ## A375037.P8615015235095620813

`A027750(n+1)%A322865(A051915(n+4))`
-/

namespace A375037.P8615015235095620813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027750 (n + 1)) (A322865 (A051915 (n + 4)).toNat)

end

end A375037.P8615015235095620813

/-! ## A375037.P11507554514493350886

`A027750(n+1)*A096270(A263656(n))`
-/

namespace A375037.P11507554514493350886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) * A096270 (A263656 n).toNat

end

end A375037.P11507554514493350886

/-! ## A375037.P10047248537004243160

`A027750(n+1)-A067742(A033484(n))`
-/

namespace A375037.P10047248537004243160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) - A067742 (A033484 n).toNat

end

end A375037.P10047248537004243160

/-! ## A375037.P7070770280691451635

`and(A000040(A001006(n)), A027750(n+1))`
-/

namespace A375037.P7070770280691451635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (A001006 n).toNat) (A027750 (n + 1))

end

end A375037.P7070770280691451635

/-!
# A375038: Irregular triangle read by rows T(n,k), n >= 2, k >= 1, in which row n lists the nonmiddle divisors of n.

The programs for A375038, there is no canonical definition to state claims against.
-/

/-! ## A375038.P6506964254569710691

`A001511(A287607(n)+1)`
-/

namespace A375038.P6506964254569710691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A287607 n + 1).toNat

end

end A375038.P6506964254569710691

/-! ## A375038.P9393922397435797521

`A007376(A047843(n)+5)`
-/

namespace A375038.P9393922397435797521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A047843 n + 5).toNat

end

end A375038.P9393922397435797521

/-! ## A375038.P6752530386868613657

`A007814(A287607(n)+1)+1`
-/

namespace A375038.P6752530386868613657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A287607 n + 1).toNat + 1

end

end A375038.P6752530386868613657

/-! ## A375038.P3972953018326334993

`gcd(A027656(n)+1, A333916(n+1))`
-/

namespace A375038.P3972953018326334993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027656 n + 1) (A333916 (n + 1))

end

end A375038.P3972953018326334993

/-! ## A375038.P17552729246509447643

`A228179(n+2)+A059841(A128155(n+1))`
-/

namespace A375038.P17552729246509447643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228179 (n + 2) + A059841 (A128155 (n + 1)).toNat

end

end A375038.P17552729246509447643

/-!
# A375039: The maximum exponent in the prime factorization of 2*n-1.

The programs for A375039, the canonical program `A375039.P1824785250283838263` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375039 has offset 1).

The definition of A375039 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375039.P1824785250283838263

`A051903(2*n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A375039

/-- `A051903(2*n+1)` -/
def P1824785250283838263.Spec : Prop :=
  ∀ n, P1824785250283838263.a n = A375039 (n + 1)

theorem P1824785250283838263.correct : P1824785250283838263.Spec := by
  intro n
  simp only [A375039, Nat.add_sub_cancel]

end A375039

/-! ## A375039.P4237322409237692000

`A329885(Δ[n²])`
-/

namespace A375039.P4237322409237692000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329885 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A375039.P4237322409237692000

namespace A375039

/-- `A329885(Δ[n²])` -/
def P4237322409237692000.Spec : Prop :=
  ∀ n, P4237322409237692000.a n = A375039 (n + 1)

end A375039

/-! ## A375039.P1758715190050052220

`val(A278223(n+1), 2)`
-/

namespace A375039.P1758715190050052220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278223 (n + 1)).toNat 2

end

end A375039.P1758715190050052220

namespace A375039

/-- `val(A278223(n+1), 2)` -/
def P1758715190050052220.Spec : Prop :=
  ∀ n, (P1758715190050052220.a n : ℤ) = A375039 (n + 1)

end A375039

/-! ## A375039.P9524443823951221926

`dr(A329885(2*n+1))`
-/

namespace A375039.P9524443823951221926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A329885 (2 * n + 1))

end

end A375039.P9524443823951221926

namespace A375039

/-- `dr(A329885(2*n+1))` -/
def P9524443823951221926.Spec : Prop :=
  ∀ n, (P9524443823951221926.a n : ℤ) = A375039 (n + 1)

end A375039

/-! ## A375039.P18378711442069306787

`val(A336158(2*n+1), 2)`
-/

namespace A375039.P18378711442069306787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336158 (2 * n + 1)).toNat 2

end

end A375039.P18378711442069306787

namespace A375039

/-- `val(A336158(2*n+1), 2)` -/
def P18378711442069306787.Spec : Prop :=
  ∀ n, (P18378711442069306787.a n : ℤ) = A375039 (n + 1)

end A375039

/-! ## A375039.P4785676293060410419

`val(A097272(2*n+1), 3)`
-/

namespace A375039.P4785676293060410419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A097272 (2 * n + 1)).toNat 3

end

end A375039.P4785676293060410419

namespace A375039

/-- `val(A097272(2*n+1), 3)` -/
def P4785676293060410419.Spec : Prop :=
  ∀ n, (P4785676293060410419.a n : ℤ) = A375039 (n + 1)

end A375039

/-! ## A375039.P2992184463873917281

`A007814(A278223(n+1))`
-/

namespace A375039.P2992184463873917281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A278223 (n + 1)).toNat

end

end A375039.P2992184463873917281

namespace A375039

/-- `A007814(A278223(n+1))` -/
def P2992184463873917281.Spec : Prop :=
  ∀ n, P2992184463873917281.a n = A375039 (n + 1)

end A375039

/-! ## A375039.P3019171360396957235

`A051282(A101296(2*n+1))`
-/

namespace A375039.P3019171360396957235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051282 (A101296 (2 * n + 1)).toNat

end

end A375039.P3019171360396957235

namespace A375039

/-- `A051282(A101296(2*n+1))` -/
def P3019171360396957235.Spec : Prop :=
  ∀ n, P3019171360396957235.a n = A375039 (n + 1)

end A375039

/-! ## A375039.P14003966224663260336

`A007814(A336158(2*n+1))`
-/

namespace A375039.P14003966224663260336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A336158 (2 * n + 1)).toNat

end

end A375039.P14003966224663260336

namespace A375039

/-- `A007814(A336158(2*n+1))` -/
def P14003966224663260336.Spec : Prop :=
  ∀ n, P14003966224663260336.a n = A375039 (n + 1)

end A375039

/-! ## A375039.P13033496616000053878

`val(A328400(2*n+1), 2)`
-/

namespace A375039.P13033496616000053878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328400 (2 * n + 1)).toNat 2

end

end A375039.P13033496616000053878

namespace A375039

/-- `val(A328400(2*n+1), 2)` -/
def P13033496616000053878.Spec : Prop :=
  ∀ n, (P13033496616000053878.a n : ℤ) = A375039 (n + 1)

end A375039

/-! ## A375039.P12538468814763820846

`A067029(A328400(2*n+1))`
-/

namespace A375039.P12538468814763820846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A328400 (2 * n + 1)).toNat

end

end A375039.P12538468814763820846

namespace A375039

/-- `A067029(A328400(2*n+1))` -/
def P12538468814763820846.Spec : Prop :=
  ∀ n, P12538468814763820846.a n = A375039 (n + 1)

end A375039

/-! ## A375039.P714067249762873050

`A007949(A097272(2*n+1))`
-/

namespace A375039.P714067249762873050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A097272 (2 * n + 1)).toNat

end

end A375039.P714067249762873050

namespace A375039

/-- `A007949(A097272(2*n+1))` -/
def P714067249762873050.Spec : Prop :=
  ∀ n, P714067249762873050.a n = A375039 (n + 1)

end A375039

/-! ## A375039.P18231260489128704161

`A375669(Δ[n²])`
-/

namespace A375039.P18231260489128704161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375669 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A375039.P18231260489128704161

namespace A375039

/-- `A375669(Δ[n²])` -/
def P18231260489128704161.Spec : Prop :=
  ∀ n, P18231260489128704161.a n = A375039 (n + 1)

end A375039

/-! ## A375039.P13420539590085474271

`A376645(Δ[n²])`
-/

namespace A375039.P13420539590085474271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376645 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A375039.P13420539590085474271

namespace A375039

/-- `A376645(Δ[n²])` -/
def P13420539590085474271.Spec : Prop :=
  ∀ n, P13420539590085474271.a n = A375039 (n + 1)

end A375039

/-! ## A375039.P9658719335552379437

`A067132(Δ[n²])-1`
-/

namespace A375039.P9658719335552379437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A375039.P9658719335552379437

namespace A375039

/-- `A067132(Δ[n²])-1` -/
def P9658719335552379437.Spec : Prop :=
  ∀ n, P9658719335552379437.a n = A375039 (n + 1)

end A375039

/-! ## A375039.P5287752100507340979

`dr(A375669(2*n+1))`
-/

namespace A375039.P5287752100507340979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A375669 (2 * n + 1))

end

end A375039.P5287752100507340979

namespace A375039

/-- `dr(A375669(2*n+1))` -/
def P5287752100507340979.Spec : Prop :=
  ∀ n, (P5287752100507340979.a n : ℤ) = A375039 (n + 1)

end A375039

/-! ## A375039.P2235828966828323987

`dr(A376645(2*n+1))`
-/

namespace A375039.P2235828966828323987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A376645 (2 * n + 1))

end

end A375039.P2235828966828323987

namespace A375039

/-- `dr(A376645(2*n+1))` -/
def P2235828966828323987.Spec : Prop :=
  ∀ n, (P2235828966828323987.a n : ℤ) = A375039 (n + 1)

end A375039

/-!
# A375040: The maximum exponent in the prime factorization of 2*n.

The programs for A375040, the canonical program `A375040.P3424596127254957025` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375040 has offset 1).

The definition of A375040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375040.P3424596127254957025

`A051903(2*(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A375040

/-- `A051903(2*(n+1))` -/
def P3424596127254957025.Spec : Prop :=
  ∀ n, P3424596127254957025.a n = A375040 (n + 1)

theorem P3424596127254957025.correct : P3424596127254957025.Spec := by
  intro n
  simp only [A375040, Nat.add_sub_cancel]

end A375040

/-! ## A375040.P16096247065165855467

`A067132(A357689(n+1))`
-/

namespace A375040.P16096247065165855467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (A357689 (n + 1)).toNat

end

end A375040.P16096247065165855467

namespace A375040

/-- `A067132(A357689(n+1))` -/
def P16096247065165855467.Spec : Prop :=
  ∀ n, P16096247065165855467.a n = A375040 (n + 1)

end A375040

/-! ## A375040.P5030089380540076860

`A051282(A101296(2*(n+1)))`
-/

namespace A375040.P5030089380540076860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051282 (A101296 (2 * (n + 1))).toNat

end

end A375040.P5030089380540076860

namespace A375040

/-- `A051282(A101296(2*(n+1)))` -/
def P5030089380540076860.Spec : Prop :=
  ∀ n, P5030089380540076860.a n = A375040 (n + 1)

end A375040

/-! ## A375040.P5038824513202882194

`A373252(n+1)+A051903(n+1)`
-/

namespace A375040.P5038824513202882194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373252 (n + 1) + A051903 (n + 1)

end

end A375040.P5038824513202882194

namespace A375040

/-- `A373252(n+1)+A051903(n+1)` -/
def P5038824513202882194.Spec : Prop :=
  ∀ n, P5038824513202882194.a n = A375040 (n + 1)

end A375040

/-! ## A375040.P1280002549398715475

`val(A328400(2*(n+1)), 2)`
-/

namespace A375040.P1280002549398715475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328400 (2 * (n + 1))).toNat 2

end

end A375040.P1280002549398715475

namespace A375040

/-- `val(A328400(2*(n+1)), 2)` -/
def P1280002549398715475.Spec : Prop :=
  ∀ n, (P1280002549398715475.a n : ℤ) = A375040 (n + 1)

end A375040

/-! ## A375040.P6308743816928784852

`A067029(A328400(2*(n+1)))`
-/

namespace A375040.P6308743816928784852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A328400 (2 * (n + 1))).toNat

end

end A375040.P6308743816928784852

namespace A375040

/-- `A067029(A328400(2*(n+1)))` -/
def P6308743816928784852.Spec : Prop :=
  ∀ n, P6308743816928784852.a n = A375040 (n + 1)

end A375040

/-! ## A375040.P2123280816318863065

`A066301(2*(n+1))+1`
-/

namespace A375040.P2123280816318863065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (2 * (n + 1)) + 1

end

end A375040.P2123280816318863065

namespace A375040

/-- `A066301(2*(n+1))+1` -/
def P2123280816318863065.Spec : Prop :=
  ∀ n, P2123280816318863065.a n = A375040 (n + 1)

end A375040

/-! ## A375040.P10246119218224765163

`A067132(2*(n+1))-1`
-/

namespace A375040.P10246119218224765163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (2 * (n + 1)) - 1

end

end A375040.P10246119218224765163

namespace A375040

/-- `A067132(2*(n+1))-1` -/
def P10246119218224765163.Spec : Prop :=
  ∀ n, P10246119218224765163.a n = A375040 (n + 1)

end A375040

/-! ## A375040.P13128589731338836946

`val(A046523(2*(n+1)), 2)`
-/

namespace A375040.P13128589731338836946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (2 * (n + 1))).toNat 2

end

end A375040.P13128589731338836946

namespace A375040

/-- `val(A046523(2*(n+1)), 2)` -/
def P13128589731338836946.Spec : Prop :=
  ∀ n, (P13128589731338836946.a n : ℤ) = A375040 (n + 1)

end A375040

/-! ## A375040.P13477436252292797493

`val(A066638(2*(n+1)), 2)`
-/

namespace A375040.P13477436252292797493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A066638 (2 * (n + 1))).toNat 2

end

end A375040.P13477436252292797493

namespace A375040

/-- `val(A066638(2*(n+1)), 2)` -/
def P13477436252292797493.Spec : Prop :=
  ∀ n, (P13477436252292797493.a n : ℤ) = A375040 (n + 1)

end A375040

/-! ## A375040.P10753574965667927661

`val(A089247(2*(n+1)), 2)`
-/

namespace A375040.P10753574965667927661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A089247 (2 * (n + 1))).toNat 2

end

end A375040.P10753574965667927661

namespace A375040

/-- `val(A089247(2*(n+1)), 2)` -/
def P10753574965667927661.Spec : Prop :=
  ∀ n, (P10753574965667927661.a n : ℤ) = A375040 (n + 1)

end A375040

/-! ## A375040.P11452799316760621815

`∑{e}[A238745(2*(n+1)), #]`
-/

namespace A375040.P11452799316760621815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A375040.P11452799316760621815

namespace A375040

/-- `∑{e}[A238745(2*(n+1)), #]` -/
def P11452799316760621815.Spec : Prop :=
  ∀ n, (P11452799316760621815.a n : ℤ) = A375040 (n + 1)

end A375040

/-! ## A375040.P4591835462296503809

`A007814(A046523(2*(n+1)))`
-/

namespace A375040.P4591835462296503809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A046523 (2 * (n + 1))).toNat

end

end A375040.P4591835462296503809

namespace A375040

/-- `A007814(A046523(2*(n+1)))` -/
def P4591835462296503809.Spec : Prop :=
  ∀ n, P4591835462296503809.a n = A375040 (n + 1)

end A375040

/-! ## A375040.P3171558846227239347

`A023443(A067132(2*(n+1)))`
-/

namespace A375040.P3171558846227239347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A067132 (2 * (n + 1))).toNat

end

end A375040.P3171558846227239347

namespace A375040

/-- `A023443(A067132(2*(n+1)))` -/
def P3171558846227239347.Spec : Prop :=
  ∀ n, P3171558846227239347.a n = A375040 (n + 1)

end A375040

/-! ## A375040.P3939191149668272502

`A007814(A089247(2*(n+1)))`
-/

namespace A375040.P3939191149668272502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A089247 (2 * (n + 1))).toNat

end

end A375040.P3939191149668272502

namespace A375040

/-- `A007814(A089247(2*(n+1)))` -/
def P3939191149668272502.Spec : Prop :=
  ∀ n, P3939191149668272502.a n = A375040 (n + 1)

end A375040

/-! ## A375040.P10483893873281185109

`A001222(A238745(2*(n+1)))`
-/

namespace A375040.P10483893873281185109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A238745 (2 * (n + 1))).toNat

end

end A375040.P10483893873281185109

namespace A375040

/-- `A001222(A238745(2*(n+1)))` -/
def P10483893873281185109.Spec : Prop :=
  ∀ n, P10483893873281185109.a n = A375040 (n + 1)

end A375040

/-! ## A375040.P16021269624934322509

`A061395(A181819(2*(n+1)))`
-/

namespace A375040.P16021269624934322509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A181819 (2 * (n + 1))).toNat

end

end A375040.P16021269624934322509

namespace A375040

/-- `A061395(A181819(2*(n+1)))` -/
def P16021269624934322509.Spec : Prop :=
  ∀ n, P16021269624934322509.a n = A375040 (n + 1)

end A375040

/-! ## A375040.P18307954733293909934

`A333352(2*A181819(2*(n+1)))`
-/

namespace A375040.P18307954733293909934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333352 (2 * A181819 (2 * (n + 1))).toNat

end

end A375040.P18307954733293909934

namespace A375040

/-- `A333352(2*A181819(2*(n+1)))` -/
def P18307954733293909934.Spec : Prop :=
  ∀ n, P18307954733293909934.a n = A375040 (n + 1)

end A375040

/-! ## A375040.P1494657833845350702

`∏{e}[A304180(2*(n+1)), #]`
-/

namespace A375040.P1494657833845350702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304180 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A375040.P1494657833845350702

namespace A375040

/-- `∏{e}[A304180(2*(n+1)), #]` -/
def P1494657833845350702.Spec : Prop :=
  ∀ n, (P1494657833845350702.a n : ℤ) = A375040 (n + 1)

end A375040

/-!
# A375050: Obverse convolution (n(n+1)/2)**(n(n+1)/2); see Comments.

The programs for A375050, there is no canonical definition to state claims against.
-/

/-! ## A375050.P8812102952699373595

`∑[n]*A374437(n)`
-/

namespace A375050.P8812102952699373595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A374437 n

end

end A375050.P8812102952699373595

/-! ## A375050.P14737896694457252239

`floor(A002378(n)/2*A374437(n))`
-/

namespace A375050.P14737896694457252239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002378 n : ℚ) / 2 * (A374437 n : ℚ)⌋

end

end A375050.P14737896694457252239

/-! ## A375050.P10475312372035328614

`A375058(n)/A011782(n)`
-/

namespace A375050.P10475312372035328614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375058 n : ℚ) / (A011782 n : ℚ)

end

end A375050.P10475312372035328614

/-! ## A375050.P15606896717533997281

`A375058(n)/∑[A034008(n)]`
-/

namespace A375050.P15606896717533997281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375058 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A375050.P15606896717533997281

/-! ## A375050.P11094248709036851198

`A375058(n)/A000010(A000079(n))`
-/

namespace A375050.P11094248709036851198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375058 n : ℚ) / (A000010 (A000079 n).toNat : ℚ)

end

end A375050.P11094248709036851198

/-!
# A375052: Number of n X 4 matrices whose values cover an initial interval of positive integers and whose rows and columns have values which are strictly increasing.

The programs for A375052, there is no canonical definition to state claims against.
-/

/-! ## A375052.P1374766472859353225

`A374985(eq[4, A025581(n)])`
-/

namespace A375052.P1374766472859353225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A375052.P1374766472859353225

/-! ## A375052.P4677863238431126899

`A374985(eq[4, A258651(n)])`
-/

namespace A375052.P4677863238431126899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A375052.P4677863238431126899

/-! ## A375052.P4469798481504067686

`A374985(A055998(n+3)-2)`
-/

namespace A375052.P4469798481504067686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374985 (A055998 (n + 3) - 2).toNat

end

end A375052.P4469798481504067686

/-! ## A375052.P5712303698630927902

`A374985(eq[4, A128307(n+1)])`
-/

namespace A375052.P5712303698630927902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374985 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A375052.P5712303698630927902

/-! ## A375052.P1574058990876879795

`A374985(A000217(n+4)+n)`
-/

namespace A375052.P1574058990876879795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374985 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A375052.P1574058990876879795

/-!
# A375053: a(n) = least k such that (n Pi)^(2 k + 1)/(2 k + 1)! < 1.

The programs for A375053, there is no canonical definition to state claims against.
-/

/-! ## A375053.P1744390867380260557

`A376957(2*n)`
-/

namespace A375053.P1744390867380260557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376957 (2 * n)

end

end A375053.P1744390867380260557

/-! ## A375053.P501674920367753477

`A376958(3*n)`
-/

namespace A375053.P501674920367753477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376958 (3 * n)

end

end A375053.P501674920367753477

/-! ## A375053.P3087364546963697601

`record[A376957(n)/(-1)^n]`
-/

namespace A375053.P3087364546963697601
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376957 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375053.P3087364546963697601

/-! ## A375053.P7614130309391238326

`record[A376957((n-1)^(n%2))]`
-/

namespace A375053.P7614130309391238326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376957 (((n : ℤ) - 1) ^ (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375053.P7614130309391238326

/-! ## A375053.P8483260335424649157

`record[A376958(A006368(n))]`
-/

namespace A375053.P8483260335424649157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376958 (A006368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375053.P8483260335424649157

/-! ## A375053.P6981014180303373291

`record[A376957(A029578(n))]`
-/

namespace A375053.P6981014180303373291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376957 (A029578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375053.P6981014180303373291

/-!
# A375054: Let M(n,x) denote the Maclaurin polynomial of degree 2n for cos x. Let u(n) be the number of nonreal zeros of M(n,x) and v(n) the number of real zeros of M(n,x). Then a(n) = u(n) - v(n).

The programs for A375054, there is no canonical definition to state claims against.
-/

/-! ## A375054.P9732688268068089435

`A049085(A000070(n+1))-A010877(3*n+4)`
-/

namespace A375054.P9732688268068089435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049085 (A000070 (n + 1)).toNat - A010877 (3 * n + 4)

end

end A375054.P9732688268068089435

/-! ## A375054.P6868555383884825245

`A099777(A000079(n))-A010877(3*n+4)`
-/

namespace A375054.P6868555383884825245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (A000079 n).toNat - A010877 (3 * n + 4)

end

end A375054.P6868555383884825245

/-!
# A375055: Nonsquarefree numbers k divisible by at least 3 distinct primes.

The programs for A375055, the canonical program `A375055.P17814751730417792502` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375055 has offset 1).

The definition of A375055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375055.P17814751730417792502

`filter[A000977(n+1), A087049(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A375055

/-- `filter[A000977(n+1), A087049(#)]` -/
def P17814751730417792502.Spec : Prop :=
  ∀ n, P17814751730417792502.a n = A375055 (n + 1)

theorem P17814751730417792502.correct : P17814751730417792502.Spec := by
  intro n
  simp only [A375055, Nat.add_sub_cancel]

end A375055

/-! ## A375055.P7139851798223209888

`filter[A000977(n+1), A355447(#)]`
-/

namespace A375055.P7139851798223209888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A375055.P7139851798223209888

namespace A375055

/-- `filter[A000977(n+1), A355447(#)]` -/
def P7139851798223209888.Spec : Prop :=
  ∀ n, P7139851798223209888.a n = A375055 (n + 1)

end A375055

/-! ## A375055.P5460381806383895634

`∩[A000977(n+1), A013929(n+1)]`
-/

namespace A375055.P5460381806383895634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375055.P5460381806383895634

namespace A375055

/-- `∩[A000977(n+1), A013929(n+1)]` -/
def P5460381806383895634.Spec : Prop :=
  ∀ n, (P5460381806383895634.a n : ℤ) = A375055 (n + 1)

end A375055

/-! ## A375055.P4175408712557115875

`∩[A000977(n+1), A049199(n+1)]`
-/

namespace A375055.P4175408712557115875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375055.P4175408712557115875

namespace A375055

/-- `∩[A000977(n+1), A049199(n+1)]` -/
def P4175408712557115875.Spec : Prop :=
  ∀ n, (P4175408712557115875.a n : ℤ) = A375055 (n + 1)

end A375055

/-! ## A375055.P12990381176347585682

`∩[A000977(n+1), A062171(n+1)]`
-/

namespace A375055.P12990381176347585682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375055.P12990381176347585682

namespace A375055

/-- `∩[A000977(n+1), A062171(n+1)]` -/
def P12990381176347585682.Spec : Prop :=
  ∀ n, (P12990381176347585682.a n : ℤ) = A375055 (n + 1)

end A375055

/-! ## A375055.P14976904150863189187

`∩[A000977(n+1), A080756(n+1)]`
-/

namespace A375055.P14976904150863189187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375055.P14976904150863189187

namespace A375055

/-- `∩[A000977(n+1), A080756(n+1)]` -/
def P14976904150863189187.Spec : Prop :=
  ∀ n, (P14976904150863189187.a n : ℤ) = A375055 (n + 1)

end A375055

/-! ## A375055.P15818836652690224358

`∩[A000977(n+1), A126706(n+1)]`
-/

namespace A375055.P15818836652690224358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375055.P15818836652690224358

namespace A375055

/-- `∩[A000977(n+1), A126706(n+1)]` -/
def P15818836652690224358.Spec : Prop :=
  ∀ n, (P15818836652690224358.a n : ℤ) = A375055 (n + 1)

end A375055

/-! ## A375055.P17805211876728682536

`∩[A000977(n+1), A162966(n+1)]`
-/

namespace A375055.P17805211876728682536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375055.P17805211876728682536

namespace A375055

/-- `∩[A000977(n+1), A162966(n+1)]` -/
def P17805211876728682536.Spec : Prop :=
  ∀ n, (P17805211876728682536.a n : ℤ) = A375055 (n + 1)

end A375055

/-! ## A375055.P9844743901117105206

`∩[A000977(n+1), A244723(n+1)]`
-/

namespace A375055.P9844743901117105206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375055.P9844743901117105206

namespace A375055

/-- `∩[A000977(n+1), A244723(n+1)]` -/
def P9844743901117105206.Spec : Prop :=
  ∀ n, (P9844743901117105206.a n : ℤ) = A375055 (n + 1)

end A375055

/-! ## A375055.P6817309438612165663

`∩[A000977(n+1), A255199(n+1)]`
-/

namespace A375055.P6817309438612165663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375055.P6817309438612165663

namespace A375055

/-- `∩[A000977(n+1), A255199(n+1)]` -/
def P6817309438612165663.Spec : Prop :=
  ∀ n, (P6817309438612165663.a n : ℤ) = A375055 (n + 1)

end A375055

/-! ## A375055.P5898750862685128511

`∩[A000977(n+1), A376271(n+1)]`
-/

namespace A375055.P5898750862685128511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375055.P5898750862685128511

namespace A375055

/-- `∩[A000977(n+1), A376271(n+1)]` -/
def P5898750862685128511.Spec : Prop :=
  ∀ n, (P5898750862685128511.a n : ℤ) = A375055 (n + 1)

end A375055

/-! ## A375055.P595275532207487951

`∩[A000977(n+1), A379336(n+1)]`
-/

namespace A375055.P595275532207487951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375055.P595275532207487951

namespace A375055

/-- `∩[A000977(n+1), A379336(n+1)]` -/
def P595275532207487951.Spec : Prop :=
  ∀ n, (P595275532207487951.a n : ℤ) = A375055 (n + 1)

end A375055

/-! ## A375055.P2244944412459515368

`∩[A000977(n+1), A363597(n+1)]`
-/

namespace A375055.P2244944412459515368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375055.P2244944412459515368

namespace A375055

/-- `∩[A000977(n+1), A363597(n+1)]` -/
def P2244944412459515368.Spec : Prop :=
  ∀ n, (P2244944412459515368.a n : ℤ) = A375055 (n + 1)

end A375055

/-! ## A375055.P1432463963271898924

`lt[2, A158210(n+1)]+1`
-/

namespace A375055.P1432463963271898924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A375055.P1432463963271898924

namespace A375055

/-- `lt[2, A158210(n+1)]+1` -/
def P1432463963271898924.Spec : Prop :=
  ∀ n, (P1432463963271898924.a n : ℤ) = A375055 (n + 1)

end A375055

/-! ## A375055.P560731678482653691

`filter[A000977(n+1), A107078(#)]`
-/

namespace A375055.P560731678482653691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A375055.P560731678482653691

namespace A375055

/-- `filter[A000977(n+1), A107078(#)]` -/
def P560731678482653691.Spec : Prop :=
  ∀ n, P560731678482653691.a n = A375055 (n + 1)

end A375055

/-!
# A375056: Obverse convolution (n^2 - n)**(n^2 - n); see Comments.

The programs for A375056, there is no canonical definition to state claims against.
-/

/-! ## A375056.P8223376550370785780

`2^(n+1)*A323425(n+1)`
-/

namespace A375056.P8223376550370785780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A323425 (n + 1)

end

end A375056.P8223376550370785780

/-! ## A375056.P5394107987627839296

`A000290(A049705(n+1)*A259212(n+1))`
-/

namespace A375056.P5394107987627839296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A049705 (n + 1) * A259212 (n + 1)).toNat

end

end A375056.P5394107987627839296

/-!
# A375057: a(n) = least k such that (n*pi)^(2k)/(2 k)! < 1.

The programs for A375057, there is no canonical definition to state claims against.
-/

/-! ## A375057.P8289668148491388602

`A376952(2*n)`
-/

namespace A375057.P8289668148491388602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376952 (2 * n)

end

end A375057.P8289668148491388602

/-! ## A375057.P7193028556746353194

`A376953(3*n)`
-/

namespace A375057.P7193028556746353194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376953 (3 * n)

end

end A375057.P7193028556746353194

/-! ## A375057.P15274560003369731320

`record[A376952(n%4+n)]`
-/

namespace A375057.P15274560003369731320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376952 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375057.P15274560003369731320

/-! ## A375057.P15498784220000731040

`record[A376952(A093178(n)-1)]`
-/

namespace A375057.P15498784220000731040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376952 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375057.P15498784220000731040

/-! ## A375057.P9940927884604920915

`record[A376952(n)/A010685(n)]`
-/

namespace A375057.P9940927884604920915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376952 n : ℚ) / (A010685 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375057.P9940927884604920915

/-! ## A375057.P16806344722610666806

`A376952(A005843(n))%A001359(n+1)`
-/

namespace A375057.P16806344722610666806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376952 (A005843 n).toNat) (A001359 (n + 1))

end

end A375057.P16806344722610666806

/-!
# A375058: (1/4)*(obverse convolution (n^2 + n)**(n^2 + n)); see Comments.

The programs for A375058, there is no canonical definition to state claims against.
-/

/-! ## A375058.P2827752427163611439

`A011782(n)*A375050(n)`
-/

namespace A375058.P2827752427163611439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A375050 n

end

end A375058.P2827752427163611439

/-! ## A375058.P8552576684780289771

`A000079(n)/2*A375050(n)`
-/

namespace A375058.P8552576684780289771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / 2 * (A375050 n : ℚ)

end

end A375058.P8552576684780289771

/-! ## A375058.P2312283157646965114

`A000010(A000079(n))*A375050(n)`
-/

namespace A375058.P2312283157646965114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 n).toNat * A375050 n

end

end A375058.P2312283157646965114

/-!
# A375060: Values of k for which A374966(k) = 0.

The programs for A375060, there is no canonical definition to state claims against.
-/

/-! ## A375060.P18303907890980689866

`eq[0, A374966(n)]`
-/

namespace A375060.P18303907890980689866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374966 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375060.P18303907890980689866

/-! ## A375060.P9163661219955041225

`lt[A374966(n), A070939(n)]`
-/

namespace A375060.P9163661219955041225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375060.P9163661219955041225

/-! ## A375060.P8956536459613742710

`lt[A374966(n), A046951(n+1)]`
-/

namespace A375060.P8956536459613742710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375060.P8956536459613742710

/-! ## A375060.P15134845816474796251

`lt[(A001468(n)*A374966(n))², 1]`
-/

namespace A375060.P15134845816474796251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001468 n * A374966 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A375060.P15134845816474796251

/-! ## A375060.P17928747874928139709

`lt[(A275901(n)*A374966(n))², 1]`
-/

namespace A375060.P17928747874928139709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A275901 n * A374966 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A375060.P17928747874928139709

/-! ## A375060.P282926332279611420

`lt[(A000005(n+1)*A374966(n))², 1]`
-/

namespace A375060.P282926332279611420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A374966 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A375060.P282926332279611420

/-! ## A375060.P4525599683371322388

`lt[(A003627(n+1)*A374966(n))², 1]`
-/

namespace A375060.P4525599683371322388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003627 (n + 1) * A374966 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A375060.P4525599683371322388

/-! ## A375060.P4561339247088577281

`lt[(A020639(n+1)*A374966(n))², 1]`
-/

namespace A375060.P4561339247088577281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) * A374966 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A375060.P4561339247088577281

/-! ## A375060.P2703669061662383333

`lt[(A048673(n+1)*A374966(n))², 1]`
-/

namespace A375060.P2703669061662383333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048673 (n + 1) * A374966 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A375060.P2703669061662383333

/-! ## A375060.P2644091582916245811

`lt[A374966(n), A058207(2*n+3)]`
-/

namespace A375060.P2644091582916245811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375060.P2644091582916245811

/-! ## A375060.P4698831360122815181

`lt[(A315335(n)*A374966(n))², 1]`
-/

namespace A375060.P4698831360122815181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A315335 n * A374966 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A375060.P4698831360122815181

/-! ## A375060.P3112146646666744285

`lt[(A051222(n+1)*A374966(n))², 1]`
-/

namespace A375060.P3112146646666744285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051222 (n + 1) * A374966 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A375060.P3112146646666744285

/-!
# A375069: Decimal expansion of the sagitta of a regular hexagon with unit side length.

The programs for A375069, there is no canonical definition to state claims against.
-/

/-! ## A375069.P14480298694394307407

`9-A010527(n)`
-/

namespace A375069.P14480298694394307407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A010527 n

end

end A375069.P14480298694394307407

/-! ## A375069.P864235930533747298

`9-A375193(n+1)`
-/

namespace A375069.P864235930533747298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A375193 (n + 1 + 1)

end

end A375069.P864235930533747298

/-!
# A375071: Smallest k such that Product_{i=1..k} (n+i) divides Product_{i=1..k} (n+k+i), or 0 if there is no such k.

The programs for A375071, there is no canonical definition to state claims against.
-/

/-! ## A375071.P13970431373752840573

`A358137(4^ceil(n/2))-n`
-/

namespace A375071.P13970431373752840573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358137 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat - (n : ℤ)

end

end A375071.P13970431373752840573

/-!
# A375072: Biquadratefree numbers (A046100) that are not cubefree (A004709).

The programs for A375072, the canonical program `A375072.P124892896223991445` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375072 has offset 1).

The definition of A375072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375072.P9682218471155527564

`∩[A046099(n+1), A382967(n+1)]`
-/

namespace A375072.P9682218471155527564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375072.P9682218471155527564

namespace A375072

/-- `∩[A046099(n+1), A382967(n+1)]` -/
def P9682218471155527564.Spec : Prop :=
  ∀ n, (P9682218471155527564.a n : ℤ) = A375072 (n + 1)

end A375072

/-! ## A375072.P124892896223991445

`∩[A060476(n+1), A382967(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A375072

/-- `∩[A060476(n+1), A382967(n+1)]` -/
def P124892896223991445.Spec : Prop :=
  ∀ n, (P124892896223991445.a n : ℤ) = A375072 (n + 1)

theorem P124892896223991445.correct : P124892896223991445.Spec := by
  intro n
  simp only [A375072, Nat.add_sub_cancel]

end A375072

/-! ## A375072.P10093270379395649756

`∩[A176297(n+1), A382967(n+1)]`
-/

namespace A375072.P10093270379395649756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375072.P10093270379395649756

namespace A375072

/-- `∩[A176297(n+1), A382967(n+1)]` -/
def P10093270379395649756.Spec : Prop :=
  ∀ n, (P10093270379395649756.a n : ℤ) = A375072 (n + 1)

end A375072

/-! ## A375072.P8463034180244139498

`∩[A295661(n+1), A382967(n+1)]`
-/

namespace A375072.P8463034180244139498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375072.P8463034180244139498

namespace A375072

/-- `∩[A295661(n+1), A382967(n+1)]` -/
def P8463034180244139498.Spec : Prop :=
  ∀ n, (P8463034180244139498.a n : ℤ) = A375072 (n + 1)

end A375072

/-! ## A375072.P2123011934269836359

`∩[A382967(n+1), A366761(n+1)]`
-/

namespace A375072.P2123011934269836359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375072.P2123011934269836359

namespace A375072

/-- `∩[A382967(n+1), A366761(n+1)]` -/
def P2123011934269836359.Spec : Prop :=
  ∀ n, (P2123011934269836359.a n : ℤ) = A375072 (n + 1)

end A375072

/-! ## A375072.P13722088146631657643

`∩[A046099(n+1), A046100(n+1)]`
-/

namespace A375072.P13722088146631657643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375072.P13722088146631657643

namespace A375072

/-- `∩[A046099(n+1), A046100(n+1)]` -/
def P13722088146631657643.Spec : Prop :=
  ∀ n, (P13722088146631657643.a n : ℤ) = A375072 (n + 1)

end A375072

/-! ## A375072.P4282432431854455073

`∩[A046100(n+1), A295661(n+1)]`
-/

namespace A375072.P4282432431854455073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375072.P4282432431854455073

namespace A375072

/-- `∩[A046100(n+1), A295661(n+1)]` -/
def P4282432431854455073.Spec : Prop :=
  ∀ n, (P4282432431854455073.a n : ℤ) = A375072 (n + 1)

end A375072

/-! ## A375072.P6208531955456541814

`∩[A046100(n+1), A336593(n+1)]`
-/

namespace A375072.P6208531955456541814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375072.P6208531955456541814

namespace A375072

/-- `∩[A046100(n+1), A336593(n+1)]` -/
def P6208531955456541814.Spec : Prop :=
  ∀ n, (P6208531955456541814.a n : ℤ) = A375072 (n + 1)

end A375072

/-! ## A375072.P10499583513978485923

`∩[A046100(n+1), A366761(n+1)]`
-/

namespace A375072.P10499583513978485923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375072.P10499583513978485923

namespace A375072

/-- `∩[A046100(n+1), A366761(n+1)]` -/
def P10499583513978485923.Spec : Prop :=
  ∀ n, (P10499583513978485923.a n : ℤ) = A375072 (n + 1)

end A375072

/-! ## A375072.P14178962578436039567

`∩[A046100(n+1), A374590(n+1)]`
-/

namespace A375072.P14178962578436039567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375072.P14178962578436039567

namespace A375072

/-- `∩[A046100(n+1), A374590(n+1)]` -/
def P14178962578436039567.Spec : Prop :=
  ∀ n, (P14178962578436039567.a n : ℤ) = A375072 (n + 1)

end A375072

/-! ## A375072.P7362757185757830631

`∩[A046100(n+1), A375432(n+1)]`
-/

namespace A375072.P7362757185757830631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375072.P7362757185757830631

namespace A375072

/-- `∩[A046100(n+1), A375432(n+1)]` -/
def P7362757185757830631.Spec : Prop :=
  ∀ n, (P7362757185757830631.a n : ℤ) = A375072 (n + 1)

end A375072

/-! ## A375072.P15870975277372786568

`∩[A046100(n+1), A376142(n+1)]`
-/

namespace A375072.P15870975277372786568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375072.P15870975277372786568

namespace A375072

/-- `∩[A046100(n+1), A376142(n+1)]` -/
def P15870975277372786568.Spec : Prop :=
  ∀ n, (P15870975277372786568.a n : ℤ) = A375072 (n + 1)

end A375072

/-! ## A375072.P9759354731671223508

`eq[2, A066301(n+1)]+1`
-/

namespace A375072.P9759354731671223508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375072.P9759354731671223508

namespace A375072

/-- `eq[2, A066301(n+1)]+1` -/
def P9759354731671223508.Spec : Prop :=
  ∀ n, (P9759354731671223508.a n : ℤ) = A375072 (n + 1)

end A375072

/-! ## A375072.P12793545200723733723

`eq[2, A066301(A028310(n))]`
-/

namespace A375072.P12793545200723733723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375072.P12793545200723733723

namespace A375072

/-- `eq[2, A066301(A028310(n))]` -/
def P12793545200723733723.Spec : Prop :=
  ∀ n, (P12793545200723733723.a n : ℤ) = A375072 (n + 1)

end A375072

/-! ## A375072.P4576639910159272381

`filter[A046099(n+1), A307430(#)]`
-/

namespace A375072.P4576639910159272381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A375072.P4576639910159272381

namespace A375072

/-- `filter[A046099(n+1), A307430(#)]` -/
def P4576639910159272381.Spec : Prop :=
  ∀ n, P4576639910159272381.a n = A375072 (n + 1)

end A375072

/-! ## A375072.P9526164895764721438

`filter[A176297(n+1), A307430(#)]`
-/

namespace A375072.P9526164895764721438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A375072.P9526164895764721438

namespace A375072

/-- `filter[A176297(n+1), A307430(#)]` -/
def P9526164895764721438.Spec : Prop :=
  ∀ n, P9526164895764721438.a n = A375072 (n + 1)

end A375072

/-! ## A375072.P15400429071068476118

`filter[A295661(n+1), A307430(#)]`
-/

namespace A375072.P15400429071068476118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A375072.P15400429071068476118

namespace A375072

/-- `filter[A295661(n+1), A307430(#)]` -/
def P15400429071068476118.Spec : Prop :=
  ∀ n, P15400429071068476118.a n = A375072 (n + 1)

end A375072

/-! ## A375072.P5370607928874899156

`filter[A336593(n+1), A307430(#)]`
-/

namespace A375072.P5370607928874899156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A375072.P5370607928874899156

namespace A375072

/-- `filter[A336593(n+1), A307430(#)]` -/
def P5370607928874899156.Spec : Prop :=
  ∀ n, P5370607928874899156.a n = A375072 (n + 1)

end A375072

/-! ## A375072.P5342659797805614105

`filter[A366761(n+1), A307430(#)]`
-/

namespace A375072.P5342659797805614105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A375072.P5342659797805614105

namespace A375072

/-- `filter[A366761(n+1), A307430(#)]` -/
def P5342659797805614105.Spec : Prop :=
  ∀ n, P5342659797805614105.a n = A375072 (n + 1)

end A375072

/-! ## A375072.P8722147942513623787

`filter[A374590(n+1), A307430(#)]`
-/

namespace A375072.P8722147942513623787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A375072.P8722147942513623787

namespace A375072

/-- `filter[A374590(n+1), A307430(#)]` -/
def P8722147942513623787.Spec : Prop :=
  ∀ n, P8722147942513623787.a n = A375072 (n + 1)

end A375072

/-!
# A375073: Numbers whose prime factorization exponents include at least one 2, at least one 3 and no other exponents.

The programs for A375073, there is no canonical definition to state claims against.
-/

/-! ## A375073.P5497123463329441990

`∩[A375143(n+1), A390539(n+1)]`
-/

namespace A375073.P5497123463329441990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P5497123463329441990

/-! ## A375073.P12708768782776394737

`∩[A052486(n+1), A338325(n+1)]`
-/

namespace A375073.P12708768782776394737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P12708768782776394737

/-! ## A375073.P1631088075760797515

`∩[A338325(n+1), A375143(n+1)]`
-/

namespace A375073.P1631088075760797515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P1631088075760797515

/-! ## A375073.P6251104970250404215

`∩[A338325(n+1), A389959(n+1)]`
-/

namespace A375073.P6251104970250404215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P6251104970250404215

/-! ## A375073.P8949712465962497704

`∩[A338325(n+1), A390539(n+1)]`
-/

namespace A375073.P8949712465962497704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P8949712465962497704

/-! ## A375073.P14909044722822201655

`∩[A216426(n+1), A338325(n+1)]`
-/

namespace A375073.P14909044722822201655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P14909044722822201655

/-! ## A375073.P963731883615485363

`∩[A216427(n+1), A338325(n+1)]`
-/

namespace A375073.P963731883615485363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P963731883615485363

/-! ## A375073.P8250722349776983320

`∩[A338325(n+1), A389558(n+1)]`
-/

namespace A375073.P8250722349776983320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P8250722349776983320

/-! ## A375073.P17321165682065656659

`∩[A375143(n+1), A389558(n+1)]`
-/

namespace A375073.P17321165682065656659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P17321165682065656659

/-! ## A375073.P17090874427724192527

`∩[A056166(n+1), A375143(n+1)]`
-/

namespace A375073.P17090874427724192527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P17090874427724192527

/-! ## A375073.P1005365672457382979

`∩[A338325(n+1), A359280(n+1)]`
-/

namespace A375073.P1005365672457382979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P1005365672457382979

/-! ## A375073.P18210391788147807567

`∩[A375143(n+1), A387256(n+1)]`
-/

namespace A375073.P18210391788147807567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P18210391788147807567

/-! ## A375073.P14486325711232035745

`∩[A325240(n+1), A375143(n+1)]`
-/

namespace A375073.P14486325711232035745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P14486325711232035745

/-! ## A375073.P645820713297399932

`∩[A338325(n+1), A389753(n+1)]`
-/

namespace A375073.P645820713297399932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P645820713297399932

/-! ## A375073.P4855068974998019210

`∩[A338325(n+1), A389752(n+1)]`
-/

namespace A375073.P4855068974998019210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P4855068974998019210

/-! ## A375073.P5311078351272574204

`∩[A001694(n+1), A375074(n+1)]`
-/

namespace A375073.P5311078351272574204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P5311078351272574204

/-! ## A375073.P16544781417277990146

`∩[A052486(n+1), A375074(n+1)]`
-/

namespace A375073.P16544781417277990146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P16544781417277990146

/-! ## A375073.P8190044878908638283

`∩[A056166(n+1), A375074(n+1)]`
-/

namespace A375073.P8190044878908638283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P8190044878908638283

/-! ## A375073.P4121371425205379077

`∩[A102834(n+1), A375074(n+1)]`
-/

namespace A375073.P4121371425205379077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P4121371425205379077

/-! ## A375073.P1208804299497792711

`∩[A216426(n+1), A375074(n+1)]`
-/

namespace A375073.P1208804299497792711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375073.P1208804299497792711

/-!
# A375074: Numbers whose prime factorization exponents include at least one 2, at least one 3 and no higher exponents.

The programs for A375074, there is no canonical definition to state claims against.
-/

/-! ## A375074.P10441867969989417531

`∪[A375073(n+1), A375075(n+1)]`
-/

namespace A375074.P10441867969989417531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P10441867969989417531

/-! ## A375074.P16375503836896553555

`∩[A072412(n+1), A391497(n+1)]`
-/

namespace A375074.P16375503836896553555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P16375503836896553555

/-! ## A375074.P1555463385574335367

`∩[A072412(n+1), A375072(n+1)]`
-/

namespace A375074.P1555463385574335367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P1555463385574335367

/-! ## A375074.P11911197006308926629

`filter[A375072(n+1), A353470(#)]`
-/

namespace A375074.P11911197006308926629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A375074.P11911197006308926629

/-! ## A375074.P1497699271696166979

`filter[A391497(n+1), A353470(#)]`
-/

namespace A375074.P1497699271696166979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A375074.P1497699271696166979

/-! ## A375074.P9380808924461174242

`∩[A375072(n+1), A376251(n+1)]`
-/

namespace A375074.P9380808924461174242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P9380808924461174242

/-! ## A375074.P15890475958897002964

`∩[A375031(n+1), A375072(n+1)]`
-/

namespace A375074.P15890475958897002964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P15890475958897002964

/-! ## A375074.P18265734224578110013

`∩[A038109(n+1), A375072(n+1)]`
-/

namespace A375074.P18265734224578110013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P18265734224578110013

/-! ## A375074.P14673957554294563450

`∩[A038109(n+1), A391497(n+1)]`
-/

namespace A375074.P14673957554294563450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P14673957554294563450

/-! ## A375074.P212611874593087240

`∩[A369209(n+1), A375072(n+1)]`
-/

namespace A375074.P212611874593087240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P212611874593087240

/-! ## A375074.P14891053910889561204

`∩[A369209(n+1), A391497(n+1)]`
-/

namespace A375074.P14891053910889561204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P14891053910889561204

/-! ## A375074.P10037249339690541627

`∩[A059269(n+1), A375072(n+1)]`
-/

namespace A375074.P10037249339690541627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P10037249339690541627

/-! ## A375074.P273285709714602294

`∩[A059269(n+1), A391497(n+1)]`
-/

namespace A375074.P273285709714602294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P273285709714602294

/-! ## A375074.P12788578278004943390

`∩[A048944(n+1), A391497(n+1)]`
-/

namespace A375074.P12788578278004943390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P12788578278004943390

/-! ## A375074.P9179936910442901897

`∩[A177880(n+1), A375072(n+1)]`
-/

namespace A375074.P9179936910442901897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P9179936910442901897

/-! ## A375074.P16776993678635763312

`∩[A177880(n+1), A391497(n+1)]`
-/

namespace A375074.P16776993678635763312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P16776993678635763312

/-! ## A375074.P13179624185309441626

`∩[A072588(n+1), A375072(n+1)]`
-/

namespace A375074.P13179624185309441626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P13179624185309441626

/-! ## A375074.P1100327997165442087

`∩[A072588(n+1), A391497(n+1)]`
-/

namespace A375074.P1100327997165442087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P1100327997165442087

/-! ## A375074.P13713215999754868514

`∩[A072587(n+1), A375072(n+1)]`
-/

namespace A375074.P13713215999754868514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P13713215999754868514

/-! ## A375074.P1257130041060257706

`∩[A072587(n+1), A391497(n+1)]`
-/

namespace A375074.P1257130041060257706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375074.P1257130041060257706

/-!
# A375075: Numbers whose prime factorization exponents include at least one 1, at least one 2, at least one 3 and no other exponents.

The programs for A375075, there is no canonical definition to state claims against.
-/

/-! ## A375075.P14153374296425311744

`∩[A072414(n+1), A375074(n+1)]`
-/

namespace A375075.P14153374296425311744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375075.P14153374296425311744

/-! ## A375075.P14029508250118801871

`∩[A323024(n+1), A375074(n+1)]`
-/

namespace A375075.P14029508250118801871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375075.P14029508250118801871

/-! ## A375075.P14745290541845239068

`∩[A072412(n+1), A390128(n+1)]`
-/

namespace A375075.P14745290541845239068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375075.P14745290541845239068

/-! ## A375075.P16853662258988231437

`∩[A072414(n+1), A390128(n+1)]`
-/

namespace A375075.P16853662258988231437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375075.P16853662258988231437

/-! ## A375075.P3986228572259107126

`∩[A323024(n+1), A390128(n+1)]`
-/

namespace A375075.P3986228572259107126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375075.P3986228572259107126

/-! ## A375075.P9072415487859813723

`∩[A375074(n+1), A390128(n+1)]`
-/

namespace A375075.P9072415487859813723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375075.P9072415487859813723

/-! ## A375075.P18188845765942565407

`∩[A072414(n+1), A391497(n+1)]`
-/

namespace A375075.P18188845765942565407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375075.P18188845765942565407

/-! ## A375075.P5497488469553413977

`∩[A323024(n+1), A391497(n+1)]`
-/

namespace A375075.P5497488469553413977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375075.P5497488469553413977

/-! ## A375075.P3815433991953850252

`∩[A072414(n+1), A375072(n+1)]`
-/

namespace A375075.P3815433991953850252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375075.P3815433991953850252

/-! ## A375075.P13315195588289878831

`∩[A323024(n+1), A375072(n+1)]`
-/

namespace A375075.P13315195588289878831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375075.P13315195588289878831

/-! ## A375075.P3256011802082490487

`∩[A375074(n+1), A396323(n+1)]`
-/

namespace A375075.P3256011802082490487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375075.P3256011802082490487

/-! ## A375075.P10915520780816225759

`filter[A375074(n+1), A389905(#)]`
-/

namespace A375075.P10915520780816225759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A375075.P10915520780816225759

/-! ## A375075.P9225909718478673513

`∩[A375074(n+1), A391319(n+1)]`
-/

namespace A375075.P9225909718478673513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375075.P9225909718478673513

/-! ## A375075.P730955391051547494

`filter[A072414(n+1), A307430(#)]`
-/

namespace A375075.P730955391051547494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A375075.P730955391051547494

/-! ## A375075.P810791247800687258

`filter[A323024(n+1), A307430(#)]`
-/

namespace A375075.P810791247800687258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A375075.P810791247800687258

/-!
# A375076: Numbers whose prime factorization exponents include at least one 1, at least one 3 and no other exponents.

The programs for A375076, the canonical program `A375076.P5343439789459528226` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375076 has offset 1).

The definition of A375076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375076.P7731231230694208532

`∩[A175496(n+1), A390128(n+1)]`
-/

namespace A375076.P7731231230694208532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375076.P7731231230694208532

namespace A375076

/-- `∩[A175496(n+1), A390128(n+1)]` -/
def P7731231230694208532.Spec : Prop :=
  ∀ n, (P7731231230694208532.a n : ℤ) = A375076 (n + 1)

end A375076

/-! ## A375076.P14659096853650672194

`∩[A175496(n+1), A391497(n+1)]`
-/

namespace A375076.P14659096853650672194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375076.P14659096853650672194

namespace A375076

/-- `∩[A175496(n+1), A391497(n+1)]` -/
def P14659096853650672194.Spec : Prop :=
  ∀ n, (P14659096853650672194.a n : ℤ) = A375076 (n + 1)

end A375076

/-! ## A375076.P16138179622412877142

`filter[A390128(n+1), A359473(#)]`
-/

namespace A375076.P16138179622412877142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A375076.P16138179622412877142

namespace A375076

/-- `filter[A390128(n+1), A359473(#)]` -/
def P16138179622412877142.Spec : Prop :=
  ∀ n, P16138179622412877142.a n = A375076 (n + 1)

end A375076

/-! ## A375076.P16569957869326139337

`filter[A391497(n+1), A359473(#)]`
-/

namespace A375076.P16569957869326139337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A375076.P16569957869326139337

namespace A375076

/-- `filter[A391497(n+1), A359473(#)]` -/
def P16569957869326139337.Spec : Prop :=
  ∀ n, P16569957869326139337.a n = A375076 (n + 1)

end A375076

/-! ## A375076.P12718054846068909145

`filter[A390128(n+1), A295316(#)]`
-/

namespace A375076.P12718054846068909145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A375076.P12718054846068909145

namespace A375076

/-- `filter[A390128(n+1), A295316(#)]` -/
def P12718054846068909145.Spec : Prop :=
  ∀ n, P12718054846068909145.a n = A375076 (n + 1)

end A375076

/-! ## A375076.P5343439789459528226

`filter[A391497(n+1), A295316(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A375076

/-- `filter[A391497(n+1), A295316(#)]` -/
def P5343439789459528226.Spec : Prop :=
  ∀ n, P5343439789459528226.a n = A375076 (n + 1)

theorem P5343439789459528226.correct : P5343439789459528226.Spec := by
  intro n
  simp only [A375076, Nat.add_sub_cancel]

end A375076

/-! ## A375076.P8502023890447965615

`filter[A392537(n+1), A295316(#)]`
-/

namespace A375076.P8502023890447965615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A375076.P8502023890447965615

namespace A375076

/-- `filter[A392537(n+1), A295316(#)]` -/
def P8502023890447965615.Spec : Prop :=
  ∀ n, P8502023890447965615.a n = A375076 (n + 1)

end A375076

/-! ## A375076.P18434242973711053977

`filter[A392537(n+1), A359473(#)]`
-/

namespace A375076.P18434242973711053977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A375076.P18434242973711053977

namespace A375076

/-- `filter[A392537(n+1), A359473(#)]` -/
def P18434242973711053977.Spec : Prop :=
  ∀ n, P18434242973711053977.a n = A375076 (n + 1)

end A375076

/-! ## A375076.P9098883334231956387

`∩[A175496(n+1), A392537(n+1)]`
-/

namespace A375076.P9098883334231956387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375076.P9098883334231956387

namespace A375076

/-- `∩[A175496(n+1), A392537(n+1)]` -/
def P9098883334231956387.Spec : Prop :=
  ∀ n, (P9098883334231956387.a n : ℤ) = A375076 (n + 1)

end A375076

/-! ## A375076.P13878782508872290864

`∩[A375142(n+1), A390128(n+1)]`
-/

namespace A375076.P13878782508872290864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375076.P13878782508872290864

namespace A375076

/-- `∩[A375142(n+1), A390128(n+1)]` -/
def P13878782508872290864.Spec : Prop :=
  ∀ n, (P13878782508872290864.a n : ℤ) = A375076 (n + 1)

end A375076

/-! ## A375076.P15485734501796510465

`∩[A375142(n+1), A391497(n+1)]`
-/

namespace A375076.P15485734501796510465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375076.P15485734501796510465

namespace A375076

/-- `∩[A375142(n+1), A391497(n+1)]` -/
def P15485734501796510465.Spec : Prop :=
  ∀ n, (P15485734501796510465.a n : ℤ) = A375076 (n + 1)

end A375076

/-! ## A375076.P13492727072344963541

`∩[A365535(n+1), A390128(n+1)]`
-/

namespace A375076.P13492727072344963541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375076.P13492727072344963541

namespace A375076

/-- `∩[A365535(n+1), A390128(n+1)]` -/
def P13492727072344963541.Spec : Prop :=
  ∀ n, (P13492727072344963541.a n : ℤ) = A375076 (n + 1)

end A375076

/-! ## A375076.P17112838428396905687

`∩[A365535(n+1), A391497(n+1)]`
-/

namespace A375076.P17112838428396905687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375076.P17112838428396905687

namespace A375076

/-- `∩[A365535(n+1), A391497(n+1)]` -/
def P17112838428396905687.Spec : Prop :=
  ∀ n, (P17112838428396905687.a n : ℤ) = A375076 (n + 1)

end A375076

/-! ## A375076.P7173860664848544690

`∩[A365535(n+1), A392537(n+1)]`
-/

namespace A375076.P7173860664848544690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375076.P7173860664848544690

namespace A375076

/-- `∩[A365535(n+1), A392537(n+1)]` -/
def P7173860664848544690.Spec : Prop :=
  ∀ n, (P7173860664848544690.a n : ℤ) = A375076 (n + 1)

end A375076

/-! ## A375076.P10566361026611421590

`∩[A059404(n+1), A336591(n+1)]`
-/

namespace A375076.P10566361026611421590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375076.P10566361026611421590

namespace A375076

/-- `∩[A059404(n+1), A336591(n+1)]` -/
def P10566361026611421590.Spec : Prop :=
  ∀ n, (P10566361026611421590.a n : ℤ) = A375076 (n + 1)

end A375076

/-! ## A375076.P9955149816352589331

`∩[A074451(n+1), A336591(n+1)]`
-/

namespace A375076.P9955149816352589331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375076.P9955149816352589331

namespace A375076

/-- `∩[A074451(n+1), A336591(n+1)]` -/
def P9955149816352589331.Spec : Prop :=
  ∀ n, (P9955149816352589331.a n : ℤ) = A375076 (n + 1)

end A375076

/-! ## A375076.P6776351044934216604

`∩[A317616(n+1), A336591(n+1)]`
-/

namespace A375076.P6776351044934216604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375076.P6776351044934216604

namespace A375076

/-- `∩[A317616(n+1), A336591(n+1)]` -/
def P6776351044934216604.Spec : Prop :=
  ∀ n, (P6776351044934216604.a n : ℤ) = A375076 (n + 1)

end A375076

/-! ## A375076.P2643441777672119036

`∩[A002035(n+1), A390128(n+1)]`
-/

namespace A375076.P2643441777672119036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375076.P2643441777672119036

namespace A375076

/-- `∩[A002035(n+1), A390128(n+1)]` -/
def P2643441777672119036.Spec : Prop :=
  ∀ n, (P2643441777672119036.a n : ℤ) = A375076 (n + 1)

end A375076

/-!
# A375080: a(n) is the numerator of ( Sum_{d|n} (n - d) )/tau(n).

The programs for A375080, there is no canonical definition to state claims against.
-/

/-! ## A375080.P15141963196911947489

`∑{d}[n+1, 1-#+n]/gcd(∑{d}[n+1, #], ∏{e}[n+1, #+1])`
-/

namespace A375080.P15141963196911947489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ) + (n : ℤ)) : ℤ) : ℚ) / (Nat.gcd (∑ d ∈ Nat.divisors (f2 n), d) (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)) : ℚ)

end

end A375080.P15141963196911947489

/-! ## A375080.P16916736841603455485

`A094471(n+1)/A009205(n+1)`
-/

namespace A375080.P16916736841603455485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094471 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

end

end A375080.P16916736841603455485

/-! ## A375080.P13813617969118292843

`(A349680(n+1)-A049820(n+1))/A009205(n+1)`
-/

namespace A375080.P13813617969118292843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349680 (n + 1) - A049820 (n + 1) : ℚ) / (A009205 (n + 1) : ℚ)

end

end A375080.P13813617969118292843

/-!
# A375082: a(n) = binomial(A349958(n),A374959(n))/n.

The programs for A375082, there is no canonical definition to state claims against.
-/

/-! ## A375082.P15377297295586014970

`A396114(n+1)/(n+1)`
-/

namespace A375082.P15377297295586014970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396114 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A375082.P15377297295586014970

/-!
# A375083: Numbers k such that k is not the first multiple of k that appears in Pascal's triangle (read by rows), i.e., such that A375082(k) > 1.

The programs for A375083, there is no canonical definition to state claims against.
-/

/-! ## A375083.P1747038147401811974

`lt[1, A375082(n+1)]+1`
-/

namespace A375083.P1747038147401811974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375082 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A375083.P1747038147401811974

/-! ## A375083.P18040132096611713357

`lt[2, A375082(A028310(n))²]`
-/

namespace A375083.P18040132096611713357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375082 (A028310 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A375083.P18040132096611713357

/-! ## A375083.P8600490705176176509

`lt[A339659(2*n+3), A261079(n+1)]+1`
-/

namespace A375083.P8600490705176176509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339659 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A375083.P8600490705176176509

/-! ## A375083.P10259116279701790050

`record[A129493(n+3)/A116371(n+1)]`
-/

namespace A375083.P10259116279701790050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129493 (n + 3) : ℚ) / (A116371 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375083.P10259116279701790050

/-! ## A375083.P6813714204676571343

`lt[9, ratio[A092892((n+1)*A095370(n+5))]]`
-/

namespace A375083.P6813714204676571343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092892 ((n + 1 : ℤ) * A095370 (n + 5)).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A375083.P6813714204676571343

/-!
# A375086: Row sums of A375085.

The programs for A375086, there is no canonical definition to state claims against.
-/

/-! ## A375086.P12322727296159469493

`A321018(A155179(n))`
-/

namespace A375086.P12322727296159469493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321018 (A155179 n).toNat

end

end A375086.P12322727296159469493

/-! ## A375086.P13848508389455855751

`A097882(A219260(n+1))`
-/

namespace A375086.P13848508389455855751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (A219260 (n + 1)).toNat

end

end A375086.P13848508389455855751

/-! ## A375086.P4865792890892049665

`A321018(A302288(n+1))`
-/

namespace A375086.P4865792890892049665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321018 (A302288 (n + 1)).toNat

end

end A375086.P4865792890892049665

/-!
# A375087: Numbers added to cumulative correction term in order for prime numbers to resemble a recursive sequence.

The programs for A375087, the canonical program `A375087.P8456723521891746720` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375087 has offset 1).

The definition of A375087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375087.P8456723521891746720

`A075526(n)-A036263(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A375087

/-- `A075526(n)-A036263(n+1)` -/
def P8456723521891746720.Spec : Prop :=
  ∀ n, P8456723521891746720.a n = A375087 (n + 1)

theorem P8456723521891746720.correct : P8456723521891746720.Spec := by
  intro n
  simp only [A375087, Nat.add_sub_cancel]

end A375087

/-! ## A375087.P675527964701117800

`A075527(n)-A001223(n+2)`
-/

namespace A375087.P675527964701117800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n - A001223 (n + 2)

end

end A375087.P675527964701117800

namespace A375087

/-- `A075527(n)-A001223(n+2)` -/
def P675527964701117800.Spec : Prop :=
  ∀ n, P675527964701117800.a n = A375087 (n + 1)

end A375087

/-! ## A375087.P11462446586186269100

`A001223(A028310(n))-Δ[A001223(n+1)]`
-/

namespace A375087.P11462446586186269100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A028310 n).toNat - (f1 (n + 1) - f1 n)

end

end A375087.P11462446586186269100

namespace A375087

/-- `A001223(A028310(n))-Δ[A001223(n+1)]` -/
def P11462446586186269100.Spec : Prop :=
  ∀ n, P11462446586186269100.a n = A375087 (n + 1)

end A375087

/-! ## A375087.P2401771434656908493

`A001223(n+1)+A075526(n)-A001223(n+2)`
-/

namespace A375087.P2401771434656908493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A075526 n - A001223 (n + 2))

end

end A375087.P2401771434656908493

namespace A375087

/-- `A001223(n+1)+A075526(n)-A001223(n+2)` -/
def P2401771434656908493.Spec : Prop :=
  ∀ n, P2401771434656908493.a n = A375087 (n + 1)

end A375087

/-! ## A375087.P16706473424243714667

`A135731(n+1)-(A299763(n+1)+A001223(n+2))`
-/

namespace A375087.P16706473424243714667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1) - (A299763 (n + 1) + A001223 (n + 2))

end

end A375087.P16706473424243714667

namespace A375087

/-- `A135731(n+1)-(A299763(n+1)+A001223(n+2))` -/
def P16706473424243714667.Spec : Prop :=
  ∀ n, P16706473424243714667.a n = A375087 (n + 1)

end A375087

/-! ## A375087.P16850610065235503880

`Δ[A008578(n+1)-A001223(n+1)]`
-/

namespace A375087.P16850610065235503880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375087.P16850610065235503880

namespace A375087

/-- `Δ[A008578(n+1)-A001223(n+1)]` -/
def P16850610065235503880.Spec : Prop :=
  ∀ n, P16850610065235503880.a n = A375087 (n + 1)

end A375087

/-! ## A375087.P4858983935721121073

`A008578(n+2)-(A036263(n+1)+A008578(n+1))`
-/

namespace A375087.P4858983935721121073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - (A036263 (n + 1) + A008578 (n + 1))

end

end A375087.P4858983935721121073

namespace A375087

/-- `A008578(n+2)-(A036263(n+1)+A008578(n+1))` -/
def P4858983935721121073.Spec : Prop :=
  ∀ n, P4858983935721121073.a n = A375087 (n + 1)

end A375087

/-! ## A375087.P741835037205843462

`A001223(n+1)+A159461(n+1)-A159461(n+2)`
-/

namespace A375087.P741835037205843462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A159461 (n + 1) - A159461 (n + 2))

end

end A375087.P741835037205843462

namespace A375087

/-- `A001223(n+1)+A159461(n+1)-A159461(n+2)` -/
def P741835037205843462.Spec : Prop :=
  ∀ n, P741835037205843462.a n = A375087 (n + 1)

end A375087

/-! ## A375087.P12025145613110324814

`A000040(n+2)-(A008578(n+1)+A001223(n+2))`
-/

namespace A375087.P12025145613110324814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - (A008578 (n + 1) + A001223 (n + 2))

end

end A375087.P12025145613110324814

namespace A375087

/-- `A000040(n+2)-(A008578(n+1)+A001223(n+2))` -/
def P12025145613110324814.Spec : Prop :=
  ∀ n, P12025145613110324814.a n = A375087 (n + 1)

end A375087

/-! ## A375087.P6832744719029595727

`A000040(n+2)-(A158611(n+2)+A001223(n+2))`
-/

namespace A375087.P6832744719029595727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - (A158611 (n + 2) + A001223 (n + 2))

end

end A375087.P6832744719029595727

namespace A375087

/-- `A000040(n+2)-(A158611(n+2)+A001223(n+2))` -/
def P6832744719029595727.Spec : Prop :=
  ∀ n, P6832744719029595727.a n = A375087 (n + 1)

end A375087

/-! ## A375087.P16372372096673222034

`A075527(n)-A075526(n+2)`
-/

namespace A375087.P16372372096673222034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n - A075526 (n + 2)

end

end A375087.P16372372096673222034

namespace A375087

/-- `A075527(n)-A075526(n+2)` -/
def P16372372096673222034.Spec : Prop :=
  ∀ n, P16372372096673222034.a n = A375087 (n + 1)

end A375087

/-! ## A375087.P18377617692390236471

`A075527(n)-A054541(n+3)`
-/

namespace A375087.P18377617692390236471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n - A054541 (n + 3)

end

end A375087.P18377617692390236471

namespace A375087

/-- `A075527(n)-A054541(n+3)` -/
def P18377617692390236471.Spec : Prop :=
  ∀ n, P18377617692390236471.a n = A375087 (n + 1)

end A375087

/-! ## A375087.P9205609043560011982

`Δ[A008578(n+1)-Δ[A000040(n+1)]]`
-/

namespace A375087.P9205609043560011982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375087.P9205609043560011982

namespace A375087

/-- `Δ[A008578(n+1)-Δ[A000040(n+1)]]` -/
def P9205609043560011982.Spec : Prop :=
  ∀ n, P9205609043560011982.a n = A375087 (n + 1)

end A375087

/-! ## A375087.P2432594711252636250

`Δ[A008578(n+1)-Δ[A008864(n+1)]]`
-/

namespace A375087.P2432594711252636250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375087.P2432594711252636250

namespace A375087

/-- `Δ[A008578(n+1)-Δ[A008864(n+1)]]` -/
def P2432594711252636250.Spec : Prop :=
  ∀ n, P2432594711252636250.a n = A375087 (n + 1)

end A375087

/-! ## A375087.P3384818366181435872

`Δ[A008578(n+1)-Δ[A131733(n+1)]]`
-/

namespace A375087.P3384818366181435872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375087.P3384818366181435872

namespace A375087

/-- `Δ[A008578(n+1)-Δ[A131733(n+1)]]` -/
def P3384818366181435872.Spec : Prop :=
  ∀ n, P3384818366181435872.a n = A375087 (n + 1)

end A375087

/-!
# A375089: Number of positive integers with Pisano period equal to 2n.

The programs for A375089, there is no canonical definition to state claims against.
-/

/-! ## A375089.P15216863159742163158

`A375519(2*(n+2))+A059841(A094136(2*n+1))`
-/

namespace A375089.P15216863159742163158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375519 (2 * (n + 2)) + A059841 (A094136 (2 * n + 1)).toNat

end

end A375089.P15216863159742163158

/-! ## A375089.P17460850641332495094

`A009194(A286520(2*(n+3)))*A375519(2*(n+2))`
-/

namespace A375089.P17460850641332495094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A286520 (2 * (n + 3))).toNat * A375519 (2 * (n + 2))

end

end A375089.P17460850641332495094

/-! ## A375089.P15438050287746022210

`A055396(A266538(3*n+4))*A375519(2*(n+2))`
-/

namespace A375089.P15438050287746022210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A266538 (3 * n + 4)).toNat * A375519 (2 * (n + 2))

end

end A375089.P15438050287746022210

/-!
# A375090: Omit the trailing 4 from the terms of the Lucas-Lehmer sequence A003010.

The programs for A375090, the canonical program `A375090.P11228353597567828703` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375090 has offset 0).

The definition of A375090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375090.P11228353597567828703

`(A003010(n)-4)/10`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A375090

/-- `(A003010(n)-4)/10` -/
def P11228353597567828703.Spec : Prop :=
  ∀ n, P11228353597567828703.a n = (A375090 n : ℚ)

end A375090

/-! ## A375090.P2193328027957870067

`(A002812(n)-2)/5`
-/

namespace A375090.P2193328027957870067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002812 n - 2 : ℚ) / 5

end

end A375090.P2193328027957870067

namespace A375090

/-- `(A002812(n)-2)/5` -/
def P2193328027957870067.Spec : Prop :=
  ∀ n, P2193328027957870067.a n = (A375090 n : ℚ)

end A375090

/-!
# A375091: First element p of sexy prime pairs (p,p+6) whose concatenation is also prime.

The programs for A375091, there is no canonical definition to state claims against.
-/

/-! ## A375091.P18367119128922525990

`∩[A015914(n+1), A032621(n+1)]`
-/

namespace A375091.P18367119128922525990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375091.P18367119128922525990

/-! ## A375091.P16604471568201671113

`∩[A023201(n+1), A032621(n+1)]`
-/

namespace A375091.P16604471568201671113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375091.P16604471568201671113

/-! ## A375091.P7533643897791888129

`∩[A032621(n+1), A262084(n+1)]`
-/

namespace A375091.P7533643897791888129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375091.P7533643897791888129

/-!
# A375092: Number of permutations p of the multiset {0,0,1,1,2,2,...,n,n} such that p(1) = 0, p(2n+2) = n, and |p(i) - p(i-1)| is always 1 or 2.

The programs for A375092, there is no canonical definition to state claims against.
-/

/-! ## A375092.P10431877660070288975

`A086719(A128588(n+1))*A128588(n+1)`
-/

namespace A375092.P10431877660070288975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086719 (A128588 (n + 1)).toNat * A128588 (n + 1)

end

end A375092.P10431877660070288975

/-!
# A375093: Numbers for which the number of squares in their Collatz trajectory sets a new record.

The programs for A375093, there is no canonical definition to state claims against.
-/

/-! ## A375093.P8752951305019513915

`filter[A275160(n+1), A127266(#)]`
-/

namespace A375093.P8752951305019513915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127266 (f1 j).toNat = 1) n)

end

end A375093.P8752951305019513915

/-!
# A375095: Primes p such that the difference between the average of the next 2 primes after p and p sets a new record.

The programs for A375095, there is no canonical definition to state claims against.
-/

/-! ## A375095.P1678801765004600347

`∩[A082984(n+1), A118371(n+1)]`
-/

namespace A375095.P1678801765004600347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375095.P1678801765004600347

/-! ## A375095.P3433385236835099593

`∩[A082984(n+1), A391411(n+1)]`
-/

namespace A375095.P3433385236835099593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375095.P3433385236835099593

/-! ## A375095.P1128679361708914267

`∩[A082984(n+1), A395012(n+1)]`
-/

namespace A375095.P1128679361708914267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375095.P1128679361708914267

/-!
# A375097: a(n) = prime(n+2) - (prime(n) + prime(n+1))/2.

The programs for A375097, the canonical program `A375097.P16198997814863634870` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375097 has offset 2).

The definition of A375097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375097.P9577033032396467779

`A305748(n+1)+A261470(n+1)`
-/

namespace A375097.P9577033032396467779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305748 (n + 1) + A261470 (n + 1)

end

end A375097.P9577033032396467779

namespace A375097

/-- `A305748(n+1)+A261470(n+1)` -/
def P9577033032396467779.Spec : Prop :=
  ∀ n, P9577033032396467779.a n = A375097 (n + 2)

end A375097

/-! ## A375097.P16198997814863634870

`A031165(n+1)-A305748(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A375097

/-- `A031165(n+1)-A305748(n+1)` -/
def P16198997814863634870.Spec : Prop :=
  ∀ n, P16198997814863634870.a n = A375097 (n + 2)

theorem P16198997814863634870.correct : P16198997814863634870.Spec := by
  intro n
  simp only [A375097, Nat.add_sub_cancel]

end A375097

/-! ## A375097.P11743530851009083981

`A028334(n+2)+A001223(n+3)`
-/

namespace A375097.P11743530851009083981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2) + A001223 (n + 3)

end

end A375097.P11743530851009083981

namespace A375097

/-- `A028334(n+2)+A001223(n+3)` -/
def P11743530851009083981.Spec : Prop :=
  ∀ n, P11743530851009083981.a n = A375097 (n + 2)

end A375097

/-! ## A375097.P16422512105648880465

`A191472(n+2)/2`
-/

namespace A375097.P16422512105648880465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191472 (n + 2) : ℚ) / 2

end

end A375097.P16422512105648880465

namespace A375097

/-- `A191472(n+2)/2` -/
def P16422512105648880465.Spec : Prop :=
  ∀ n, P16422512105648880465.a n = (A375097 (n + 2) : ℚ)

end A375097

/-! ## A375097.P15545101068690881653

`A001281(A191472(n+2))`
-/

namespace A375097.P15545101068690881653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A191472 (n + 2)).toNat

end

end A375097.P15545101068690881653

namespace A375097

/-- `A001281(A191472(n+2))` -/
def P15545101068690881653.Spec : Prop :=
  ∀ n, P15545101068690881653.a n = A375097 (n + 2)

end A375097

/-! ## A375097.P15489938010772321747

`A024675(n+1)-A096379(n+2)`
-/

namespace A375097.P15489938010772321747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - A096379 (n + 2)

end

end A375097.P15489938010772321747

namespace A375097

/-- `A024675(n+1)-A096379(n+2)` -/
def P15489938010772321747.Spec : Prop :=
  ∀ n, P15489938010772321747.a n = A375097 (n + 2)

end A375097

/-! ## A375097.P9119287861949376099

`A024675(n+2)+A028334(n+3)-A024675(n+1)`
-/

namespace A375097.P9119287861949376099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 2) + (A028334 (n + 3) - A024675 (n + 1))

end

end A375097.P9119287861949376099

namespace A375097

/-- `A024675(n+2)+A028334(n+3)-A024675(n+1)` -/
def P9119287861949376099.Spec : Prop :=
  ∀ n, P9119287861949376099.a n = A375097 (n + 2)

end A375097

/-! ## A375097.P9597081685609810248

`A028334(n+3)+A028334(n+2)+A028334(n+3)`
-/

namespace A375097.P9597081685609810248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 3) + (A028334 (n + 2) + A028334 (n + 3))

end

end A375097.P9597081685609810248

namespace A375097

/-- `A028334(n+3)+A028334(n+2)+A028334(n+3)` -/
def P9597081685609810248.Spec : Prop :=
  ∀ n, P9597081685609810248.a n = A375097 (n + 2)

end A375097

/-! ## A375097.P16791945106408042445

`Δ[A364411(n+2)/2]`
-/

namespace A375097.P16791945106408042445
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364411 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375097.P16791945106408042445

namespace A375097

/-- `Δ[A364411(n+2)/2]` -/
def P16791945106408042445.Spec : Prop :=
  ∀ n, P16791945106408042445.a n = (A375097 (n + 2) : ℚ)

end A375097

/-! ## A375097.P8012764165441314921

`A115061(n+3)+A028334(n+3)`
-/

namespace A375097.P8012764165441314921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 3) + A028334 (n + 3)

end

end A375097.P8012764165441314921

namespace A375097

/-- `A115061(n+3)+A028334(n+3)` -/
def P8012764165441314921.Spec : Prop :=
  ∀ n, P8012764165441314921.a n = A375097 (n + 2)

end A375097

/-! ## A375097.P10829695861866587748

`A105161(A024675(n+1))`
-/

namespace A375097.P10829695861866587748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105161 (A024675 (n + 1)).toNat

end

end A375097.P10829695861866587748

namespace A375097

/-- `A105161(A024675(n+1))` -/
def P10829695861866587748.Spec : Prop :=
  ∀ n, P10829695861866587748.a n = A375097 (n + 2)

end A375097

/-! ## A375097.P10974763075500238443

`A105161(A162735(n+2))`
-/

namespace A375097.P10974763075500238443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105161 (A162735 (n + 2)).toNat

end

end A375097.P10974763075500238443

namespace A375097

/-- `A105161(A162735(n+2))` -/
def P10974763075500238443.Spec : Prop :=
  ∀ n, P10974763075500238443.a n = A375097 (n + 2)

end A375097

/-! ## A375097.P521404721153448980

`A099909(n+2)%A152527(n+1)`
-/

namespace A375097.P521404721153448980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099909 (n + 2)) (A152527 (n + 1))

end

end A375097.P521404721153448980

namespace A375097

/-- `A099909(n+2)%A152527(n+1)` -/
def P521404721153448980.Spec : Prop :=
  ∀ n, P521404721153448980.a n = A375097 (n + 2)

end A375097

/-!
# A375098: Diagonals of a Euclidian solid such that there exists a Pythagorean quadruple d^2=a^2+b^2+c^2 that is more cube-like than any prior value of d.

The programs for A375098, there is no canonical definition to state claims against.
-/

/-! ## A375098.P17961415826203680967

`∑[∏{p}[A048617(n)+A038505(3*n+2), #]]`
-/

namespace A375098.P17961415826203680967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048617 n + A038505 (3 * n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375098.P17961415826203680967

/-!
# A375099: Number of partitions of [n] into blocks whose element sum is <= n.

The programs for A375099, there is no canonical definition to state claims against.
-/

/-! ## A375099.P13309599057991566660

`floor(A369614(n)/4)+1`
-/

namespace A375099.P13309599057991566660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A369614 n : ℚ) / 4⌋ + 1

end

end A375099.P13309599057991566660

/-! ## A375099.P3156997123149951060

`ceil(sqrt(A323928(n+1)+1))`
-/

namespace A375099.P3156997123149951060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A323928 (n + 1) + 1 : ℝ)⌉

end

end A375099.P3156997123149951060

/-! ## A375099.P8283824291272789456

`round(sqrt(A364839((1-n)²)))+1`
-/

namespace A375099.P8283824291272789456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A364839 ((1 - (n : ℤ)) ^ 2).toNat : ℝ)) + 1

end

end A375099.P8283824291272789456

/-! ## A375099.P5808161495041031973

`A114516((n+1)²)-a(n-1)+1` with `a(0)=1`
-/

namespace A375099.P5808161495041031973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A114516 ((n + 1) ^ 2) - a (n - 1) + 1

end

end A375099.P5808161495041031973

/-! ## A375099.P14416715178812383596

`A078129(A036590(n))`
-/

namespace A375099.P14416715178812383596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (A036590 n).toNat

end

end A375099.P14416715178812383596

