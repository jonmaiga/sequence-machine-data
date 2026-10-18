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
import Seq.B000.C020
import Seq.B000.C021
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A059900: Successively interleaved alternate bits in binary expansion of n gives vector of exponents in prime factorization of a(n).

The programs for A059900, there is no canonical definition to state claims against.
-/

/-! ## A059900.P14123745517737652629

`filter[A344535(n), A168182(#)]`
-/

namespace A059900.P14123745517737652629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A059900.P14123745517737652629

/-! ## A059900.P2388525999077587729

`filter[A344535(n), A336477(#)]`
-/

namespace A059900.P2388525999077587729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336477 (f1 j).toNat = 1) n)

end

end A059900.P2388525999077587729

/-! ## A059900.P12979593519031390822

`A184964(A009998(n))+A052330(n)`
-/

namespace A059900.P12979593519031390822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 (A009998 n).toNat + A052330 n

end

end A059900.P12979593519031390822

/-! ## A059900.P8056149464935612431

`A185255(A004275(n))+A121663(n)`
-/

namespace A059900.P8056149464935612431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A004275 n).toNat + A121663 n

end

end A059900.P8056149464935612431

/-! ## A059900.P14773117664942099988

`A319290(A184955(n))+A052330(n)`
-/

namespace A059900.P14773117664942099988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319290 (A184955 n).toNat + A052330 n

end

end A059900.P14773117664942099988

/-!
# A059901: Partitions encoded by prime factorization. The partition [P1+P2+P3+...] with P1>=P2>=P3>=... is encoded as 2^P1 * 3^P2 * 5^P3 *...

The programs for A059901, there is no canonical definition to state claims against.
-/

/-! ## A059901.P12350563516985293420

`A181821(A334438(n))`
-/

namespace A059901.P12350563516985293420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A334438 n).toNat

end

end A059901.P12350563516985293420

/-!
# A059903: Periodic part of continued fraction for sqrt(n), encoded by raising successive primes to the terms. If sqrt(n)=c0+[c1,c2,c3...] then a(n)=2^c1*3^c2*5^c3*...

The programs for A059903, there is no canonical definition to state claims against.
-/

/-! ## A059903.P15111401018142780976

`A348593(A076408(n+1))`
-/

namespace A059903.P15111401018142780976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348593 (A076408 (n + 1)).toNat

end

end A059903.P15111401018142780976

/-! ## A059903.P11990092514425624565

`A348593(∑[A025475(n+1)])`
-/

namespace A059903.P11990092514425624565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348593 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059903.P11990092514425624565

/-!
# A059905: Index of first half of decomposition of integers into pairs based on A000695.

The programs for A059905, there is no canonical definition to state claims against.
-/

/-! ## A059905.P14489422328765625098

`A059906(2*n)`
-/

namespace A059905.P14489422328765625098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (2 * n)

end

end A059905.P14489422328765625098

/-! ## A059905.P13218523255382211224

`val(A059900(n), 2)`
-/

namespace A059905.P13218523255382211224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A059900 n).toNat 2

end

end A059905.P13218523255382211224

/-! ## A059905.P1873928051297680002

`A059252(A004514(n))`
-/

namespace A059905.P1873928051297680002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A004514 n).toNat

end

end A059905.P1873928051297680002

/-! ## A059905.P1264776208307670290

`A059261(A063694(n))`
-/

namespace A059905.P1264776208307670290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A063694 n).toNat

end

end A059905.P1264776208307670290

/-! ## A059905.P5446072626252073170

`A059253(A163355(n))`
-/

namespace A059905.P5446072626252073170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A163355 n).toNat

end

end A059905.P5446072626252073170

/-! ## A059905.P5145321463130746569

`A309952(A163486(n))`
-/

namespace A059905.P5145321463130746569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A163486 n).toNat

end

end A059905.P5145321463130746569

/-! ## A059905.P17705435806810275642

`A059252(A163355(2*n))`
-/

namespace A059905.P17705435806810275642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A163355 (2 * n)).toNat

end

end A059905.P17705435806810275642

/-! ## A059905.P599882366539939760

`A292372(A053985(n)+n)`
-/

namespace A059905.P599882366539939760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A053985 n + (n : ℤ)).toNat

end

end A059905.P599882366539939760

/-! ## A059905.P6115118005040677129

`A292373(n)+A292371(n)`
-/

namespace A059905.P6115118005040677129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n + A292371 n

end

end A059905.P6115118005040677129

/-! ## A059905.P5998591275981486609

`A371442(n-A063695(n))`
-/

namespace A059905.P5998591275981486609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371442 ((n : ℤ) - A063695 n).toNat

end

end A059905.P5998591275981486609

/-! ## A059905.P481789539438162439

`A393253(n)-A059906(n)`
-/

namespace A059905.P481789539438162439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393253 n - A059906 n

end

end A059905.P481789539438162439

/-! ## A059905.P12861833936927788431

`xor(A059252(n), A059253(n))`
-/

namespace A059905.P12861833936927788431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059252 n) (A059253 n)

end

end A059905.P12861833936927788431

/-! ## A059905.P9220051425995651565

`xor(A059906(n), A309952(n))`
-/

namespace A059905.P9220051425995651565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059906 n) (A309952 n)

end

end A059905.P9220051425995651565

/-! ## A059905.P14843989267722969861

`A059252(2*(n-A063695(n)))`
-/

namespace A059905.P14843989267722969861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (2 * ((n : ℤ) - A063695 n)).toNat

end

end A059905.P14843989267722969861

/-! ## A059905.P9282136695203109358

`A292373(or(n, A053985(n)+n))`
-/

namespace A059905.P9282136695203109358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (Int.lor (n : ℤ) (A053985 n + (n : ℤ))).toNat

end

end A059905.P9282136695203109358

/-! ## A059905.P15178930379061689777

`A292373(2*n)+A292372(2*n)`
-/

namespace A059905.P15178930379061689777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (2 * n) + A292372 (2 * n)

end

end A059905.P15178930379061689777

/-! ## A059905.P9780401218912812434

`or(A292371(2*n-n), A292373(n))`
-/

namespace A059905.P9780401218912812434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A292371 (2 * n - n)) (A292373 n)

end

end A059905.P9780401218912812434

/-! ## A059905.P1778540543937956221

`A059253(A163905(A163356(n)))`
-/

namespace A059905.P1778540543937956221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A163905 (A163356 n).toNat).toNat

end

end A059905.P1778540543937956221

/-! ## A059905.P17708547097409796616

`A059253(A163915(A163906(n)))`
-/

namespace A059905.P17708547097409796616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A163915 (A163906 n).toNat).toNat

end

end A059905.P17708547097409796616

/-! ## A059905.P5619508100196497075

`A059252(A163905(A163356(2*n)))`
-/

namespace A059905.P5619508100196497075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A163905 (A163356 (2 * n)).toNat).toNat

end

end A059905.P5619508100196497075

/-!
# A059906: Index of second half of decomposition of integers into pairs based on A000695.

The programs for A059906, there is no canonical definition to state claims against.
-/

/-! ## A059906.P1892842096491780914

`A059905(A004526(n))`
-/

namespace A059906.P1892842096491780914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A004526 n).toNat

end

end A059906.P1892842096491780914

/-! ## A059906.P18175919475648504172

`A059905(floor(n/2))`
-/

namespace A059906.P18175919475648504172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 ⌊(n : ℚ) / 2⌋.toNat

end

end A059906.P18175919475648504172

/-! ## A059906.P17995867243310457444

`A059252(A063695(n))`
-/

namespace A059906.P17995867243310457444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A063695 n).toNat

end

end A059906.P17995867243310457444

/-! ## A059906.P13762607029739760631

`A059252(A163355(n))`
-/

namespace A059906.P13762607029739760631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A163355 n).toNat

end

end A059906.P13762607029739760631

/-! ## A059906.P12240997066808963399

`A309952(A004468(n))`
-/

namespace A059906.P12240997066808963399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A004468 n).toNat

end

end A059906.P12240997066808963399

/-! ## A059906.P3349143129146274387

`A309952(A048647(n))`
-/

namespace A059906.P3349143129146274387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A048647 n).toNat

end

end A059906.P3349143129146274387

/-! ## A059906.P3361563983661581395

`A309952(A292600(n))`
-/

namespace A059906.P3361563983661581395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A292600 n).toNat

end

end A059906.P3361563983661581395

/-! ## A059906.P3192324083152303051

`A309952(A300839(n))`
-/

namespace A059906.P3192324083152303051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A300839 n).toNat

end

end A059906.P3192324083152303051

/-! ## A059906.P985776163744140536

`A292373(n)+A292372(n)`
-/

namespace A059906.P985776163744140536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n + A292372 n

end

end A059906.P985776163744140536

/-! ## A059906.P9459447282983472020

`A393253(n)-A059905(n)`
-/

namespace A059906.P9459447282983472020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393253 n - A059905 n

end

end A059906.P9459447282983472020

/-! ## A059906.P14642795794781431577

`A371442(n-A380110(n))`
-/

namespace A059906.P14642795794781431577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371442 ((n : ℤ) - A380110 n).toNat

end

end A059906.P14642795794781431577

/-! ## A059906.P927371163891395977

`xor(A059905(n), A309952(n))`
-/

namespace A059906.P927371163891395977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059905 n) (A309952 n)

end

end A059906.P927371163891395977

/-! ## A059906.P12433075822911459958

`A059253(A163355(2*n))/2`
-/

namespace A059906.P12433075822911459958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059253 (A163355 (2 * n)).toNat : ℚ) / 2

end

end A059906.P12433075822911459958

/-! ## A059906.P3604546464980998591

`A292373(2*n-A057300(n))`
-/

namespace A059906.P3604546464980998591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 ((2 * n : ℤ) - A057300 n).toNat

end

end A059906.P3604546464980998591

/-! ## A059906.P11501787843666795876

`A059252(n-A004514(n)/2)`
-/

namespace A059906.P11501787843666795876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (SequenceMachineLib.roundAway ((n : ℚ) - (A004514 n : ℚ) / 2)).toNat

end

end A059906.P11501787843666795876

/-! ## A059906.P1590931675481007105

`A059261((n-A063694(n))/2)`
-/

namespace A059906.P1590931675481007105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (SequenceMachineLib.roundAway (((n : ℤ) - A063694 n : ℚ) / 2)).toNat

end

end A059906.P1590931675481007105

/-! ## A059906.P18423146793674693127

`A292372((n-A053985(n))/2)`
-/

namespace A059906.P18423146793674693127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (SequenceMachineLib.roundAway (((n : ℤ) - A053985 n : ℚ) / 2)).toNat

end

end A059906.P18423146793674693127

/-! ## A059906.P15066845521573956873

`or(A292372(2*n-n), A292373(n))`
-/

namespace A059906.P15066845521573956873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A292372 (2 * n - n)) (A292373 n)

end

end A059906.P15066845521573956873

/-! ## A059906.P11889298007426342523

`(A292373(2*n)+A292371(2*n))/2`
-/

namespace A059906.P11889298007426342523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292373 (2 * n) + A292371 (2 * n) : ℚ) / 2

end

end A059906.P11889298007426342523

/-! ## A059906.P17682160874119080881

`xor(A059252(2*n), A059253(2*n))/2`
-/

namespace A059906.P17682160874119080881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A059252 (2 * n)) (A059253 (2 * n)) : ℚ) / 2

end

end A059906.P17682160874119080881

/-!
# A059907: a(n) = |{m : multiplicative order of n mod m = 2}|.

The programs for A059907, the canonical program `A059907.P15476750235674923959` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059907 has offset 1).

The definition of A059907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059907.P15476750235674923959

`∏{e}[n*(n+2), #+1]-∏{e}[n, #+1]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059907

/-- `∏{e}[n*(n+2), #+1]-∏{e}[n, #+1]` -/
def P15476750235674923959.Spec : Prop :=
  ∀ n, P15476750235674923959.a n = A059907 (n + 1)

theorem P15476750235674923959.correct : P15476750235674923959.Spec := by
  intro n
  simp only [A059907, Nat.add_sub_cancel]

end A059907

/-! ## A059907.P10291244440931003993

`∏{e}[A005563(n), #+1]-A000005(A000007(n)+n)`
-/

namespace A059907.P10291244440931003993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - A000005 (A000007 n + (n : ℤ)).toNat

end

end A059907.P10291244440931003993

namespace A059907

/-- `∏{e}[A005563(n), #+1]-A000005(A000007(n)+n)` -/
def P10291244440931003993.Spec : Prop :=
  ∀ n, P10291244440931003993.a n = A059907 (n + 1)

end A059907

/-! ## A059907.P16672994006085978228

`A000005(A132411(n+1))-A000005(A028310(n))`
-/

namespace A059907.P16672994006085978228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A132411 (n + 1)).toNat - A000005 (A028310 n).toNat

end

end A059907.P16672994006085978228

namespace A059907

/-- `A000005(A132411(n+1))-A000005(A028310(n))` -/
def P16672994006085978228.Spec : Prop :=
  ∀ n, P16672994006085978228.a n = A059907 (n + 1)

end A059907

/-! ## A059907.P14048871539552341589

`A000005(A132411(n+1))-A000005(A000007(n)+n)`
-/

namespace A059907.P14048871539552341589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A132411 (n + 1)).toNat - A000005 (A000007 n + (n : ℤ)).toNat

end

end A059907.P14048871539552341589

namespace A059907

/-- `A000005(A132411(n+1))-A000005(A000007(n)+n)` -/
def P14048871539552341589.Spec : Prop :=
  ∀ n, P14048871539552341589.a n = A059907 (n + 1)

end A059907

/-! ## A059907.P6269379126630275524

`∑{d}[A005563(n), A002262(A000124(n%#))]`
-/

namespace A059907.P6269379126630275524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A002262 (A000124 (n % d)).toNat

end

end A059907.P6269379126630275524

namespace A059907

/-- `∑{d}[A005563(n), A002262(A000124(n%#))]` -/
def P6269379126630275524.Spec : Prop :=
  ∀ n, P6269379126630275524.a n = A059907 (n + 1)

end A059907

/-! ## A059907.P7652945230491485018

`A032741(n*(n+2))-A032741(n)`
-/

namespace A059907.P7652945230491485018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n * (n + 2)) - A032741 n

end

end A059907.P7652945230491485018

namespace A059907

/-- `A032741(n*(n+2))-A032741(n)` -/
def P7652945230491485018.Spec : Prop :=
  ∀ n, P7652945230491485018.a n = A059907 (n + 1)

end A059907

/-! ## A059907.P10342941589216547516

`abs(A032741(A005563(n))-A032741(n))`
-/

namespace A059907.P10342941589216547516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A032741 (A005563 n).toNat - A032741 n|

end

end A059907.P10342941589216547516

namespace A059907

/-- `abs(A032741(A005563(n))-A032741(n))` -/
def P10342941589216547516.Spec : Prop :=
  ∀ n, P10342941589216547516.a n = A059907 (n + 1)

end A059907

/-! ## A059907.P1149278175806768480

`A000005(A060798(n+1)+n)-A000005(A171173((n+1)²))`
-/

namespace A059907.P1149278175806768480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A060798 (n + 1) + (n : ℤ)).toNat - A000005 (A171173 ((n + 1) ^ 2)).toNat

end

end A059907.P1149278175806768480

namespace A059907

/-- `A000005(A060798(n+1)+n)-A000005(A171173((n+1)²))` -/
def P1149278175806768480.Spec : Prop :=
  ∀ n, P1149278175806768480.a n = A059907 (n + 1)

end A059907

/-! ## A059907.P12892534642471026868

`A212957(∑[n+1]+2)`
-/

namespace A059907.P12892534642471026868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A059907.P12892534642471026868

namespace A059907

/-- `A212957(∑[n+1]+2)` -/
def P12892534642471026868.Spec : Prop :=
  ∀ n, P12892534642471026868.a n = A059907 (n + 1)

end A059907

/-!
# A059908: a(n) = |{m : multiplicative order of n mod m = 3}|.

The programs for A059908, there is no canonical definition to state claims against.
-/

/-! ## A059908.P14217520971788833303

`A212957(∑[n+2]+4)`
-/

namespace A059908.P14217520971788833303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A059908.P14217520971788833303

/-! ## A059908.P9177371925364427752

`A212957(A167499(n)+n)%(2*n+1)`
-/

namespace A059908.P9177371925364427752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212957 (A167499 n + (n : ℤ)).toNat) (2 * n + 1 : ℤ)

end

end A059908.P9177371925364427752

/-! ## A059908.P12965264804571822037

`A212957(A167614(n+1))%A000124(n)`
-/

namespace A059908.P12965264804571822037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212957 (A167614 (n + 1)).toNat) (A000124 n)

end

end A059908.P12965264804571822037

/-! ## A059908.P6201606683705785142

`∑{d}[A212957(A167614(n+1)), A000010(#)]`
-/

namespace A059908.P6201606683705785142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A059908.P6201606683705785142

/-! ## A059908.P7138649007683491119

`∑{d}[A212957(A167499(n)+n), A000010(#)]`
-/

namespace A059908.P7138649007683491119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A167499 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A059908.P7138649007683491119

/-! ## A059908.P16923581634610514002

`A212957(A167614(n+1))/(A000038(n)+1)`
-/

namespace A059908.P16923581634610514002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212957 (A167614 (n + 1)).toNat : ℚ) / (A000038 n + 1 : ℚ)

end

end A059908.P16923581634610514002

/-! ## A059908.P8579084833815329589

`A212957(A167614(n+1))^gcd(3, A000040(n+1))`
-/

namespace A059908.P8579084833815329589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A167614 (n + 1)).toNat ^ Int.gcd 3 (A000040 (n + 1))

end

end A059908.P8579084833815329589

/-! ## A059908.P7414520373577964552

`A212957(A167614(n+1))/A000040(or(3, n+1))%2`
-/

namespace A059908.P7414520373577964552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212957 (A167614 (n + 1)).toNat : ℚ) / (Int.tmod (A000040 (Nat.lor 3 (n + 1))) 2 : ℚ)

end

end A059908.P7414520373577964552

/-! ## A059908.P13602084486700466528

`A212957(A167614(n+1))+floor(3/A332543(n+3))%2`
-/

namespace A059908.P13602084486700466528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A167614 (n + 1)).toNat + Int.tmod ⌊3 / (A332543 (n + 3) : ℚ)⌋ 2

end

end A059908.P13602084486700466528

/-! ## A059908.P1013399400646404161

`A063260(A102423(n))*A212957(A167614(n+1))`
-/

namespace A059908.P1013399400646404161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063260 (A102423 n).toNat * A212957 (A167614 (n + 1)).toNat

end

end A059908.P1013399400646404161

/-!
# A059909: a(n) = |{m : multiplicative order of n mod m = 4}|.

The programs for A059909, the canonical program `A059909.P2458430778338620869` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059909 has offset 1).

The definition of A059909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059909.P2458430778338620869

`A059907((n+1)²)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059909

/-- `A059907((n+1)²)` -/
def P2458430778338620869.Spec : Prop :=
  ∀ n, P2458430778338620869.a n = A059909 (n + 1)

theorem P2458430778338620869.correct : P2458430778338620869.Spec := by
  intro n
  simp only [A059909, Nat.add_sub_cancel]

end A059909

/-! ## A059909.P12888259481555533039

`lcm(2, A059907((n+1)^2))`
-/

namespace A059909.P12888259481555533039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A059907 ((n + 1) ^ 2))

end

end A059909.P12888259481555533039

namespace A059909

/-- `lcm(2, A059907((n+1)^2))` -/
def P12888259481555533039.Spec : Prop :=
  ∀ n, (P12888259481555533039.a n : ℤ) = A059909 (n + 1)

end A059909

/-! ## A059909.P6400551810422192488

`and(-2, A059907(record[(1-n)²]))`
-/

namespace A059909.P6400551810422192488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A059907 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A059909.P6400551810422192488

namespace A059909

/-- `and(-2, A059907(record[(1-n)²]))` -/
def P6400551810422192488.Spec : Prop :=
  ∀ n, P6400551810422192488.a n = A059909 (n + 1)

end A059909

/-! ## A059909.P598233169639556912

`and(-2, A059907(∑[2*n+1]))`
-/

namespace A059909.P598233169639556912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A059907 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A059909.P598233169639556912

namespace A059909

/-- `and(-2, A059907(∑[2*n+1]))` -/
def P598233169639556912.Spec : Prop :=
  ∀ n, P598233169639556912.a n = A059909 (n + 1)

end A059909

/-! ## A059909.P16835896958697409245

`or(1, A059907(record[(n-1)²]))-1`
-/

namespace A059909.P16835896958697409245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A059907 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) - 1

end

end A059909.P16835896958697409245

namespace A059909

/-- `or(1, A059907(record[(n-1)²]))-1` -/
def P16835896958697409245.Spec : Prop :=
  ∀ n, P16835896958697409245.a n = A059909 (n + 1)

end A059909

/-! ## A059909.P3907629329039586417

`A001281(2*A059907(record[(1-n)²]))`
-/

namespace A059909.P3907629329039586417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A059907 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A059909.P3907629329039586417

namespace A059909

/-- `A001281(2*A059907(record[(1-n)²]))` -/
def P3907629329039586417.Spec : Prop :=
  ∀ n, P3907629329039586417.a n = A059909 (n + 1)

end A059909

/-! ## A059909.P16020267406561396050

`∑{d}[A059907(record[(1-n)²]), A000010(#)]`
-/

namespace A059909.P16020267406561396050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059907 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A059909.P16020267406561396050

namespace A059909

/-- `∑{d}[A059907(record[(1-n)²]), A000010(#)]` -/
def P16020267406561396050.Spec : Prop :=
  ∀ n, P16020267406561396050.a n = A059909 (n + 1)

end A059909

/-! ## A059909.P18178305220791083689

`∑{d}[A059907(∑[2*n+1]), A000010(#)]`
-/

namespace A059909.P18178305220791083689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059907 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A059909.P18178305220791083689

namespace A059909

/-- `∑{d}[A059907(∑[2*n+1]), A000010(#)]` -/
def P18178305220791083689.Spec : Prop :=
  ∀ n, P18178305220791083689.a n = A059909 (n + 1)

end A059909

/-! ## A059909.P10895659064833274329

`A014963(4*n+2)*A059907(∑[2*n+1])`
-/

namespace A059909.P10895659064833274329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A059907 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059909.P10895659064833274329

namespace A059909

/-- `A014963(4*n+2)*A059907(∑[2*n+1])` -/
def P10895659064833274329.Spec : Prop :=
  ∀ n, P10895659064833274329.a n = A059909 (n + 1)

end A059909

/-! ## A059909.P16397908046869288951

`A212957(A167614(n+2)+1)`
-/

namespace A059909.P16397908046869288951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A167614 (n + 2) + 1).toNat

end

end A059909.P16397908046869288951

namespace A059909

/-- `A212957(A167614(n+2)+1)` -/
def P16397908046869288951.Spec : Prop :=
  ∀ n, P16397908046869288951.a n = A059909 (n + 1)

end A059909

/-!
# A059910: a(n) = |{m : multiplicative order of n mod m = 5}|.

The programs for A059910, there is no canonical definition to state claims against.
-/

/-! ## A059910.P7884313847153531611

`A212957(∑[n+4]+11)`
-/

namespace A059910.P7884313847153531611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A059910.P7884313847153531611

/-! ## A059910.P13241971040287086711

`and(-1, A212957(A056000(n)+15))`
-/

namespace A059910.P13241971040287086711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A212957 (A056000 n + 15).toNat)

end

end A059910.P13241971040287086711

/-! ## A059910.P10427141367751332204

`A212957(A056000(n)+15)+A185012(n+3)`
-/

namespace A059910.P10427141367751332204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A056000 n + 15).toNat + A185012 (n + 3)

end

end A059910.P10427141367751332204

/-! ## A059910.P16285962243878084918

`A212957(A056000(n)+15)%A000041(n+2)`
-/

namespace A059910.P16285962243878084918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212957 (A056000 n + 15).toNat) (A000041 (n + 2))

end

end A059910.P16285962243878084918

/-! ## A059910.P3128282842661198277

`A007318(C(2, n))*A212957(A056000(n)+15)`
-/

namespace A059910.P3128282842661198277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A212957 (A056000 n + 15).toNat

end

end A059910.P3128282842661198277

/-! ## A059910.P8867104138495146510

`A212957(A000217(n+4)+5)+A008683(4*(n+5))`
-/

namespace A059910.P8867104138495146510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000217 (n + 4) + 5).toNat + A008683 (4 * (n + 5))

end

end A059910.P8867104138495146510

/-! ## A059910.P3142609783591361057

`A212957(A000124(n+4)+4)^A014963(8*n+6)`
-/

namespace A059910.P3142609783591361057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212957 (A000124 (n + 4) + 4).toNat : ℚ) ^ (A014963 (8 * n + 6) : ℤ)

end

end A059910.P3142609783591361057

/-! ## A059910.P13670759806728842525

`A000041(gcd(n, n+1))*A212957(A000217(n+4)+5)`
-/

namespace A059910.P13670759806728842525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A212957 (A000217 (n + 4) + 5).toNat

end

end A059910.P13670759806728842525

/-! ## A059910.P1662381558931739895

`A212957(A000217(n+4)+5)/A008683(A005117(n+1))²`
-/

namespace A059910.P1662381558931739895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212957 (A000217 (n + 4) + 5).toNat : ℚ) / (A008683 (A005117 (n + 1)).toNat ^ 2 : ℚ)

end

end A059910.P1662381558931739895

/-!
# A059911: a(n) = |{m : multiplicative order of n mod m = 6}|.

The programs for A059911, there is no canonical definition to state claims against.
-/

/-! ## A059911.P14206466332100031457

`A059908((n+1)²)-A059908(n+1)`
-/

namespace A059911.P14206466332100031457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059908 ((n + 1) ^ 2) - A059908 (n + 1)

end

end A059911.P14206466332100031457

/-! ## A059911.P8665576122610092561

`A212957(C(n+7, 2)-n)`
-/

namespace A059911.P8665576122610092561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (Nat.choose (n + 7) 2 - n)

end

end A059911.P8665576122610092561

/-! ## A059911.P8254010737504530209

`A212957(A166136(n+4))`
-/

namespace A059911.P8254010737504530209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A166136 (n + 4)).toNat

end

end A059911.P8254010737504530209

/-! ## A059911.P17973090328486890701

`A212957(A056115(n)+21)`
-/

namespace A059911.P17973090328486890701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A056115 n + 21).toNat

end

end A059911.P17973090328486890701

/-! ## A059911.P15719500744154020028

`A212957(A167499(n+4)+1)`
-/

namespace A059911.P15719500744154020028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A167499 (n + 4) + 1).toNat

end

end A059911.P15719500744154020028

/-! ## A059911.P14841122276201440629

`A212957(A000096(n+4)+7)`
-/

namespace A059911.P14841122276201440629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000096 (n + 4) + 7).toNat

end

end A059911.P14841122276201440629

/-! ## A059911.P1388218912904963437

`A212957(A000217(n+5)+6)`
-/

namespace A059911.P1388218912904963437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A000217 (n + 5) + 6).toNat

end

end A059911.P1388218912904963437

/-! ## A059911.P12403495852845595117

`A212957(A046691(n+3)+10)`
-/

namespace A059911.P12403495852845595117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A046691 (n + 3) + 10).toNat

end

end A059911.P12403495852845595117

/-! ## A059911.P9867974213394978982

`A212957(A155212(n+1)+14)`
-/

namespace A059911.P9867974213394978982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A155212 (n + 1) + 14).toNat

end

end A059911.P9867974213394978982

/-! ## A059911.P12219514433222013720

`A212957(Δ[A023545(n+1)]+10)`
-/

namespace A059911.P12219514433222013720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (f1 (n + 1) - f1 n + 10).toNat

end

end A059911.P12219514433222013720

/-!
# A059912: Triangle T(n,k) of orders of n degree irreducible polynomials over GF(2) listed in ascending order, k=1..A059499(n).

The programs for A059912, there is no canonical definition to state claims against.
-/

/-! ## A059912.P5280646243806151688

`A212737(∑[n+1])`
-/

namespace A059912.P5280646243806151688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059912.P5280646243806151688

/-! ## A059912.P1170103417104288763

`or(1, A212737(C(n+2, 2)))`
-/

namespace A059912.P1170103417104288763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A212737 (Nat.choose (n + 2) 2))

end

end A059912.P1170103417104288763

/-! ## A059912.P17916330103720599884

`or(1, A212737(∑[-xor(n, -1)]))`
-/

namespace A059912.P17916330103720599884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A212737 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A059912.P17916330103720599884

/-! ## A059912.P15013873576112278481

`or(1, A212737(A000217(n+1)))`
-/

namespace A059912.P15013873576112278481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A212737 (A000217 (n + 1)).toNat)

end

end A059912.P15013873576112278481

/-! ## A059912.P14778743955457857047

`or(1, A212737(A008805(2*n)))`
-/

namespace A059912.P14778743955457857047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A212737 (A008805 (2 * n)).toNat)

end

end A059912.P14778743955457857047

/-! ## A059912.P16499083144770147002

`A033999(n)²*A212737(∑[-xor(n, -1)])`
-/

namespace A059912.P16499083144770147002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A212737 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059912.P16499083144770147002

/-! ## A059912.P7402285633477068180

`A212737(∑[-xor(n, -1)])-A000035(2*n)`
-/

namespace A059912.P7402285633477068180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000035 (2 * n)

end

end A059912.P7402285633477068180

/-! ## A059912.P5329370781071479996

`A212737(A008805(2*n))%A076809(n)`
-/

namespace A059912.P5329370781071479996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212737 (A008805 (2 * n)).toNat) (A076809 n)

end

end A059912.P5329370781071479996

/-! ## A059912.P17979206847661810061

`A157928(n+2)*A212737(A000217(n+1))`
-/

namespace A059912.P17979206847661810061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (n + 2) * A212737 (A000217 (n + 1)).toNat

end

end A059912.P17979206847661810061

/-! ## A059912.P18437575505578636343

`A212737(A000217(n+1))%A000041(n+7)`
-/

namespace A059912.P18437575505578636343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212737 (A000217 (n + 1)).toNat) (A000041 (n + 7))

end

end A059912.P18437575505578636343

/-! ## A059912.P5915967582214074822

`A007318(C(2, n))*A212737(A000217(n+1))`
-/

namespace A059912.P5915967582214074822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A212737 (A000217 (n + 1)).toNat

end

end A059912.P5915967582214074822

/-! ## A059912.P5351273570337675403

`A212737(A000217(n+1))+C(2, A000203(n+2))`
-/

namespace A059912.P5351273570337675403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A000217 (n + 1)).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A059912.P5351273570337675403

/-! ## A059912.P14314540979728846077

`A014963(12*n+10)*A212737(A000217(n+1))`
-/

namespace A059912.P14314540979728846077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 10) * A212737 (A000217 (n + 1)).toNat

end

end A059912.P14314540979728846077

/-! ## A059912.P11565477151460485356

`A007318(A020639(3*(n+1)))*A212737(A000217(n+1))`
-/

namespace A059912.P11565477151460485356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (3 * (n + 1))).toNat * A212737 (A000217 (n + 1)).toNat

end

end A059912.P11565477151460485356

/-!
# A059913: Triangle T(n,k) of numbers of n degree irreducible polynomials over GF(2) which have order A059912(n,k), k=1..A059499(n).

The programs for A059913, there is no canonical definition to state claims against.
-/

/-! ## A059913.P844430469266622196

`A318622(A059912(n+1))+C(2, n+2)`
-/

namespace A059913.P844430469266622196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A059912 (n + 1)).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A059913.P844430469266622196

/-! ## A059913.P14081341605626621399

`A318622(A059912(n+1))+A000007(n)`
-/

namespace A059913.P14081341605626621399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A059912 (n + 1)).toNat + A000007 n

end

end A059913.P14081341605626621399

/-! ## A059913.P9171938336177226381

`A318622(A059912(n+1))+A151878(n)`
-/

namespace A059913.P9171938336177226381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A059912 (n + 1)).toNat + A151878 n

end

end A059913.P9171938336177226381

/-! ## A059913.P3946641682014779240

`A318622(A059912(n+1))+A151933(n)`
-/

namespace A059913.P3946641682014779240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A059912 (n + 1)).toNat + A151933 n

end

end A059913.P3946641682014779240

/-! ## A059913.P7308135254632532005

`A014963(4*n+2)*A318622(A059912(n+1))`
-/

namespace A059913.P7308135254632532005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A318622 (A059912 (n + 1)).toNat

end

end A059913.P7308135254632532005

/-!
# A059914: Primes p such that x^3 = 2 has more than one solution mod p and the sum of the (three) solutions is 2*p.

The programs for A059914, there is no canonical definition to state claims against.
-/

/-! ## A059914.P14940197391382475349

`p?[A300384(n+1)²²*A014752(n+1)]`
-/

namespace A059914.P14940197391382475349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A300384 (n + 1) ^ 2) ^ 2 * A014752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059914.P14940197391382475349

/-! ## A059914.P12226581059209415328

`p?[A300384(n+1)²²*A306787(n+1)]`
-/

namespace A059914.P12226581059209415328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A300384 (n + 1) ^ 2) ^ 2 * A306787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059914.P12226581059209415328

/-! ## A059914.P2917471473344240895

`∩[A040148(n+1), A364186(n+1)]`
-/

namespace A059914.P2917471473344240895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059914.P2917471473344240895

/-! ## A059914.P7194972303372835496

`∩[A106306(n+1), A364186(n+1)]`
-/

namespace A059914.P7194972303372835496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059914.P7194972303372835496

/-!
# A059917: a(n) = (3^(2^n) + 1)/2 = A059919(n)/2, n >= 0.

The programs for A059917, the canonical program `A059917.P13380623229023470054` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059917 has offset 0).

The definition of A059917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059917.P13380623229023470054

`(3^2^n+1)/2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059917

/-- `(3^2^n+1)/2` -/
def P13380623229023470054.Spec : Prop :=
  ∀ n, P13380623229023470054.a n = (A059917 n : ℚ)

end A059917

/-! ## A059917.P16030188688470923805

`A059919(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A059917.P16030188688470923805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059919 n : ℚ) / 2

end

end A059917.P16030188688470923805

namespace A059917

/-- `A059919(n)/2` -/
def P16030188688470923805.Spec : Prop :=
  ∀ n, P16030188688470923805.a n = (A059917 n : ℚ)

end A059917

/-! ## A059917.P18272869778395555685

`4*C(a(n-1), 2)+1` with `a(0)=2`
-/

namespace A059917.P18272869778395555685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  4 * Nat.choose (a (n - 1)) 2 + 1

end

end A059917.P18272869778395555685

namespace A059917

/-- `4*C(a(n-1), 2)+1` -/
def P18272869778395555685.Spec : Prop :=
  ∀ n, (P18272869778395555685.a n : ℤ) = A059917 n

end A059917

/-! ## A059917.P2250285386901347030

`(1-a(n-1))²+a(n-1)²` with `a(0)=2`
-/

namespace A059917.P2250285386901347030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (1 - a (n - 1)) ^ 2 + a (n - 1) ^ 2

end

end A059917.P2250285386901347030

namespace A059917

/-- `(1-a(n-1))²+a(n-1)²` -/
def P2250285386901347030.Spec : Prop :=
  ∀ n, P2250285386901347030.a n = A059917 n

end A059917

/-!
# A059918: a(n) = (3^(2^n)-1)/2.

The programs for A059918, the canonical program `A059918.P610723390599227704` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059918 has offset 0).

The definition of A059918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059918.P610723390599227704

`(3^2^n-1)/2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059918

/-- `(3^2^n-1)/2` -/
def P610723390599227704.Spec : Prop :=
  ∀ n, P610723390599227704.a n = (A059918 n : ℚ)

end A059918

/-! ## A059918.P14745462935487267138

`a(n-1)*(3^2^(n-1)+1)` with `a(0)=1`
-/

namespace A059918.P14745462935487267138
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((3 : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) + 1)

end

end A059918.P14745462935487267138

namespace A059918

/-- `a(n-1)*(3^2^(n-1)+1)` -/
def P14745462935487267138.Spec : Prop :=
  ∀ n, P14745462935487267138.a n = (A059918 n : ℝ)

end A059918

/-! ## A059918.P3306032857569281058

`4*C(a(n-1)+1, 2)` with `a(0)=1`
-/

namespace A059918.P3306032857569281058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * Nat.choose (a (n - 1) + 1) 2

end

end A059918.P3306032857569281058

namespace A059918

/-- `4*C(a(n-1)+1, 2)` -/
def P3306032857569281058.Spec : Prop :=
  ∀ n, (P3306032857569281058.a n : ℤ) = A059918 n

end A059918

/-! ## A059918.P6582168324902618538

`2*(a(n-1)+a(n-1)²)` with `a(0)=1`
-/

namespace A059918.P6582168324902618538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + a (n - 1) ^ 2)

end

end A059918.P6582168324902618538

namespace A059918

/-- `2*(a(n-1)+a(n-1)²)` -/
def P6582168324902618538.Spec : Prop :=
  ∀ n, (P6582168324902618538.a n : ℤ) = A059918 n

end A059918

/-!
# A059919: Generalized Fermat numbers: 3^(2^n)+1, n >= 0.

The programs for A059919, the canonical program `A059919.P9032398222879425866` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059919 has offset 0).

The definition of A059919 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^2^n+1` (program `A059919.P9032398222879425866`, by `A059919.P9032398222879425866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059919.P9032398222879425866

`3^2^n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059919

/-- `3^2^n+1` -/
def P9032398222879425866.Spec : Prop :=
  ∀ n, (P9032398222879425866.a n : ℤ) = A059919 n

theorem P9032398222879425866.correct : P9032398222879425866.Spec := by
  intro n
  simp only [A059919]

end A059919

/-! ## A059919.P11859072440324766561

`xor(3, (1-a(n-1))²)` with `a(0)=4`
-/

namespace A059919.P11859072440324766561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.xor 3 ((1 - a (n - 1)) ^ 2)

end

end A059919.P11859072440324766561

namespace A059919

/-- `xor(3, (1-a(n-1))²)` -/
def P11859072440324766561.Spec : Prop :=
  ∀ n, P11859072440324766561.a n = A059919 n

end A059919

/-! ## A059919.P16917330164496920825

`Δ[∑[a(n-1)²]+n]` with `a(0)=0, a(1)=3`
-/

namespace A059919.P16917330164496920825
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (n - 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059919.P16917330164496920825

namespace A059919

/-- `Δ[∑[a(n-1)²]+n]` -/
def P16917330164496920825.Spec : Prop :=
  ∀ n, P16917330164496920825.a n = A059919 n

end A059919

/-! ## A059919.P10430949057462553843

`floor((a(n-1)²/(a(n-1)+1))²)` with `a(0)=4`
-/

namespace A059919.P10430949057462553843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊((a (n - 1) ^ 2 : ℚ) / (a (n - 1) + 1 : ℚ)) ^ 2⌋

end

end A059919.P10430949057462553843

namespace A059919

/-- `floor((a(n-1)²/(a(n-1)+1))²)` -/
def P10430949057462553843.Spec : Prop :=
  ∀ n, P10430949057462553843.a n = A059919 n

end A059919

/-!
# A059920: If m/n = q + r/n (r < n, n,m >=1), then array a(m,n) = qr (meaning q followed by r). Read by antidiagonals.

The programs for A059920, there is no canonical definition to state claims against.
-/

/-! ## A059920.P5399166078129381776

`A385623(A286156(n+1))`
-/

namespace A059920.P5399166078129381776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385623 (A286156 (n + 1)).toNat

end

end A059920.P5399166078129381776

/-!
# A059921: a(n) = floor(n^((n+1)/n)).

The programs for A059921, the canonical program `A059921.P6179296401503669271` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059921 has offset 1).

The definition of A059921 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)^((n+2)/(n+1)))` (program `A059921.P6497859928274874225`, by `A059921.P6497859928274874225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059921.P6179296401503669271

`floor((n+1)^(1+1/(n+1)))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059921

/-- `floor((n+1)^(1+1/(n+1)))` -/
def P6179296401503669271.Spec : Prop :=
  ∀ n, P6179296401503669271.a n = A059921 (n + 1)

theorem P6179296401503669271.correct : P6179296401503669271.Spec := by
  intro n
  simp only [A059921, Nat.add_sub_cancel]

end A059921

/-! ## A059921.P6497859928274874225

`floor((n+1)^((n+2)/(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A059921.P6497859928274874225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ ((n + 2 : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A059921.P6497859928274874225

namespace A059921

/-- `floor((n+1)^((n+2)/(n+1)))` -/
def P6497859928274874225.Spec : Prop :=
  ∀ n, P6497859928274874225.a n = A059921 (n + 1)

theorem P6497859928274874225.correct : P6497859928274874225.Spec := by
  intro n
  simp only [A059921, Nat.add_sub_cancel, A059921.P6497859928274874225.a, A059921.P6179296401503669271.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A059921

/-! ## A059921.P4498967445129666680

`A008619(A095395(n+1))+n`
-/

namespace A059921.P4498967445129666680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A095395 (n + 1)).toNat + (n : ℤ)

end

end A059921.P4498967445129666680

namespace A059921

/-- `A008619(A095395(n+1))+n` -/
def P4498967445129666680.Spec : Prop :=
  ∀ n, P4498967445129666680.a n = A059921 (n + 1)

end A059921

/-! ## A059921.P17561991253089001033

`A269024(n+1)+A028310(n)`
-/

namespace A059921.P17561991253089001033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269024 (n + 1) + A028310 n

end

end A059921.P17561991253089001033

namespace A059921

/-- `A269024(n+1)+A028310(n)` -/
def P17561991253089001033.Spec : Prop :=
  ∀ n, P17561991253089001033.a n = A059921 (n + 1)

end A059921

/-! ## A059921.P9341816515439133118

`A269020(n+1)+A057428(n)`
-/

namespace A059921.P9341816515439133118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269020 (n + 1) + A057428 n

end

end A059921.P9341816515439133118

namespace A059921

/-- `A269020(n+1)+A057428(n)` -/
def P9341816515439133118.Spec : Prop :=
  ∀ n, P9341816515439133118.a n = A059921 (n + 1)

end A059921

/-! ## A059921.P10350259166776210803

`A269020(n+1)-A057427(n)`
-/

namespace A059921.P10350259166776210803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269020 (n + 1) - A057427 n

end

end A059921.P10350259166776210803

namespace A059921

/-- `A269020(n+1)-A057427(n)` -/
def P10350259166776210803.Spec : Prop :=
  ∀ n, P10350259166776210803.a n = A059921 (n + 1)

end A059921

/-! ## A059921.P417814891006170410

`A065033(A095395(n+1)+1)+n`
-/

namespace A059921.P417814891006170410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A095395 (n + 1) + 1).toNat + (n : ℤ)

end

end A059921.P417814891006170410

namespace A059921

/-- `A065033(A095395(n+1)+1)+n` -/
def P417814891006170410.Spec : Prop :=
  ∀ n, P417814891006170410.a n = A059921 (n + 1)

end A059921

/-! ## A059921.P15752697829068821370

`A095395(n+1)+A095394(n+1)`
-/

namespace A059921.P15752697829068821370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095395 (n + 1) + A095394 (n + 1)

end

end A059921.P15752697829068821370

namespace A059921

/-- `A095395(n+1)+A095394(n+1)` -/
def P15752697829068821370.Spec : Prop :=
  ∀ n, P15752697829068821370.a n = A059921 (n + 1)

end A059921

/-! ## A059921.P3778010399756209820

`A123108(A095395(n+1)+2)+n`
-/

namespace A059921.P3778010399756209820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A095395 (n + 1) + 2).toNat + (n : ℤ)

end

end A059921.P3778010399756209820

namespace A059921

/-- `A123108(A095395(n+1)+2)+n` -/
def P3778010399756209820.Spec : Prop :=
  ∀ n, P3778010399756209820.a n = A059921 (n + 1)

end A059921

/-! ## A059921.P14659012451644728255

`A269020(n+1)-A211666(A269020(n+1)-n)`
-/

namespace A059921.P14659012451644728255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269020 (n + 1) - A211666 (A269020 (n + 1) - (n : ℤ)).toNat

end

end A059921.P14659012451644728255

namespace A059921

/-- `A269020(n+1)-A211666(A269020(n+1)-n)` -/
def P14659012451644728255.Spec : Prop :=
  ∀ n, P14659012451644728255.a n = A059921 (n + 1)

end A059921

/-! ## A059921.P4214061474205737179

`A269020(n+1)-A001222(A008578(n+1))`
-/

namespace A059921.P4214061474205737179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269020 (n + 1) - A001222 (A008578 (n + 1)).toNat

end

end A059921.P4214061474205737179

namespace A059921

/-- `A269020(n+1)-A001222(A008578(n+1))` -/
def P4214061474205737179.Spec : Prop :=
  ∀ n, P4214061474205737179.a n = A059921 (n + 1)

end A059921

/-! ## A059921.P855354952437735039

`A264978(A264978(floor((n+1)*root(n+1, n+1))))`
-/

namespace A059921.P855354952437735039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A264978 ⌊(n + 1 : ℝ) * (n + 1 : ℝ) ^ (1 / (n + 1 : ℝ))⌋.toNat).toNat

end

end A059921.P855354952437735039

namespace A059921

/-- `A264978(A264978(floor((n+1)*root(n+1, n+1))))` -/
def P855354952437735039.Spec : Prop :=
  ∀ n, P855354952437735039.a n = A059921 (n + 1)

end A059921

/-!
# A059922: Each term in the table is the product of the two terms above it + 1.

The programs for A059922, there is no canonical definition to state claims against.
-/

/-! ## A059922.P13035557886044454538

`A092629(A309876(n))`
-/

namespace A059922.P13035557886044454538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092629 (A309876 n).toNat

end

end A059922.P13035557886044454538

/-! ## A059922.P4347138858017775492

`A064295(A026692(n+1))`
-/

namespace A059922.P4347138858017775492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064295 (A026692 (n + 1)).toNat

end

end A059922.P4347138858017775492

/-! ## A059922.P1798232810805468477

`A085714(A378938(n+1))`
-/

namespace A059922.P1798232810805468477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085714 (A378938 (n + 1)).toNat

end

end A059922.P1798232810805468477

/-! ## A059922.P7686162983950243668

`A092629(A309865(n)-1)`
-/

namespace A059922.P7686162983950243668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092629 (A309865 n - 1).toNat

end

end A059922.P7686162983950243668

/-! ## A059922.P11685213468328938871

`A097745(A309865(n)-1)`
-/

namespace A059922.P11685213468328938871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097745 (A309865 n - 1).toNat

end

end A059922.P11685213468328938871

/-!
# A059923: a(n+1) is smallest number with a(n+1)^n > a(n)^(n+1).

The programs for A059923, the canonical program `A059923.P6921987158833483382` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059923 has offset 1).

The definition of A059923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 534 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059923.P6921987158833483382

`ceil(a(n-1)^((n+1)/n))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059923

/-- `ceil(a(n-1)^((n+1)/n))` -/
def P6921987158833483382.Spec : Prop :=
  ∀ n, P6921987158833483382.a n = A059923 (n + 1)

theorem P6921987158833483382.correct : P6921987158833483382.Spec := by
  intro n
  simp only [A059923, Nat.add_sub_cancel]

end A059923

/-! ## A059923.P7890975277628231282

`floor(a(n-1)^((n+1)/n))+1` with `a(0)=1`
-/

namespace A059923.P7890975277628231282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) ^ ((n + 1 : ℚ) / (n : ℚ) : ℝ)⌋ + 1

end

end A059923.P7890975277628231282

namespace A059923

/-- `floor(a(n-1)^((n+1)/n))+1` -/
def P7890975277628231282.Spec : Prop :=
  ∀ n, P7890975277628231282.a n = A059923 (n + 1)

end A059923

/-! ## A059923.P18302175015700278250

`ceil(a(n-1)^(1/n)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A059923.P18302175015700278250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈(a (n - 1) : ℝ) ^ (1 / (n : ℚ) : ℝ) * (a (n - 1) : ℝ)⌉

end

end A059923.P18302175015700278250

namespace A059923

/-- `ceil(a(n-1)^(1/n)*a(n-1))` -/
def P18302175015700278250.Spec : Prop :=
  ∀ n, P18302175015700278250.a n = A059923 (n + 1)

end A059923

/-! ## A059923.P10414044085181883516

`A214041(A077168(n)+2)-1`
-/

namespace A059923.P10414044085181883516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214041 (A077168 n + 2).toNat - 1

end

end A059923.P10414044085181883516

namespace A059923

/-- `A214041(A077168(n)+2)-1` -/
def P10414044085181883516.Spec : Prop :=
  ∀ n, P10414044085181883516.a n = A059923 (n + 1)

end A059923

/-! ## A059923.P10338855364189042984

`A214041(n+3)-A317926(∑[2^(n-char[2])])`
-/

namespace A059923.P10338855364189042984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214041 (n + 3) - A317926 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A059923.P10338855364189042984

namespace A059923

/-- `A214041(n+3)-A317926(∑[2^(n-char[2])])` -/
def P10338855364189042984.Spec : Prop :=
  ∀ n, P10338855364189042984.a n = A059923 (n + 1)

end A059923

/-!
# A059924: Write the numbers from 1 to n^2 in a spiraling square; a(n) is the total of the sums of the two diagonals.

The programs for A059924, the canonical program `A059924.P3417877518361107084` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059924 has offset 0).

The definition of A059924 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059924.P12733139268689746784

`(16*n^3-6*n²+8*n+3-3*(-1)^n)/12`
-/

namespace A059924.P12733139268689746784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 * n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + (8 * n : ℤ) + (3 - 3 * (-1) ^ n) : ℚ) / 12

end

end A059924.P12733139268689746784

namespace A059924

/-- `(16*n^3-6*n²+8*n+3-3*(-1)^n)/12` -/
def P12733139268689746784.Spec : Prop :=
  ∀ n, P12733139268689746784.a n = (A059924 n : ℚ)

theorem P12733139268689746784.correct : P12733139268689746784.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A059924, Nat.add_sub_cancel, A059924.P12733139268689746784.a, A059924.P3417877518361107084.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A059924, Nat.add_sub_cancel, A059924.P12733139268689746784.a, A059924.P3417877518361107084.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A059924

/-! ## A059924.P3417877518361107084

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=10, a(3)=34, a(4)=80`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059924

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P3417877518361107084.Spec : Prop :=
  ∀ n, P3417877518361107084.a n = A059924 n

theorem P3417877518361107084.correct : P3417877518361107084.Spec := by
  intro n
  simp only [A059924]

end A059924

/-! ## A059924.P10618628209295424242

`∑[(1-2*n)²+n]-(∑[comp[or(2, n)]]+1-n)`
-/

namespace A059924.P10618628209295424242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) ^ 2 + (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) - (n : ℤ))

end

end A059924.P10618628209295424242

namespace A059924

/-- `∑[(1-2*n)²+n]-(∑[comp[or(2, n)]]+1-n)` -/
def P10618628209295424242.Spec : Prop :=
  ∀ n, P10618628209295424242.a n = A059924 n

end A059924

/-! ## A059924.P6202510493081448623

`A035597(n)-∑[n-n%2]`
-/

namespace A059924.P6202510493081448623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059924.P6202510493081448623

namespace A059924

/-- `A035597(n)-∑[n-n%2]` -/
def P6202510493081448623.Spec : Prop :=
  ∀ n, P6202510493081448623.a n = A059924 n

end A059924

/-! ## A059924.P8109620224765974825

`A057566(n)+A002413(n)`
-/

namespace A059924.P8109620224765974825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057566 n + A002413 n

end

end A059924.P8109620224765974825

namespace A059924

/-- `A057566(n)+A002413(n)` -/
def P8109620224765974825.Spec : Prop :=
  ∀ n, P8109620224765974825.a n = A059924 n

end A059924

/-! ## A059924.P14500091815904486461

`A171218(n)+A045991(n)`
-/

namespace A059924.P14500091815904486461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171218 n + A045991 n

end

end A059924.P14500091815904486461

namespace A059924

/-- `A171218(n)+A045991(n)` -/
def P14500091815904486461.Spec : Prop :=
  ∀ n, P14500091815904486461.a n = A059924 n

end A059924

/-! ## A059924.P2620546024365354615

`A203552(n)+A036486(n)`
-/

namespace A059924.P2620546024365354615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 n + A036486 n

end

end A059924.P2620546024365354615

namespace A059924

/-- `A203552(n)+A036486(n)` -/
def P2620546024365354615.Spec : Prop :=
  ∀ n, P2620546024365354615.a n = A059924 n

end A059924

/-! ## A059924.P3708671651108757918

`A002492(n)-A032526(n)`
-/

namespace A059924.P3708671651108757918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 n - A032526 n

end

end A059924.P3708671651108757918

namespace A059924

/-- `A002492(n)-A032526(n)` -/
def P3708671651108757918.Spec : Prop :=
  ∀ n, P3708671651108757918.a n = A059924 n

end A059924

/-! ## A059924.P4798671293632839216

`A035597(n)-A007590(n)`
-/

namespace A059924.P4798671293632839216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035597 n - A007590 n

end

end A059924.P4798671293632839216

namespace A059924

/-- `A035597(n)-A007590(n)` -/
def P4798671293632839216.Spec : Prop :=
  ∀ n, P4798671293632839216.a n = A059924 n

end A059924

/-! ## A059924.P231671893585898048

`∑[A054552(n)]-A267682(n)`
-/

namespace A059924.P231671893585898048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A267682 n

end

end A059924.P231671893585898048

namespace A059924

/-- `∑[A054552(n)]-A267682(n)` -/
def P231671893585898048.Spec : Prop :=
  ∀ n, P231671893585898048.a n = A059924 n

end A059924

/-! ## A059924.P17218045112147045725

`A166464(n)-A121509(n+1)`
-/

namespace A059924.P17218045112147045725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166464 n - A121509 (n + 1)

end

end A059924.P17218045112147045725

namespace A059924

/-- `A166464(n)-A121509(n+1)` -/
def P17218045112147045725.Spec : Prop :=
  ∀ n, P17218045112147045725.a n = A059924 n

end A059924

/-! ## A059924.P770172744596698807

`A217873(n)-A183575(n+1)`
-/

namespace A059924.P770172744596698807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217873 n - A183575 (n + 1)

end

end A059924.P770172744596698807

namespace A059924

/-- `A217873(n)-A183575(n+1)` -/
def P770172744596698807.Spec : Prop :=
  ∀ n, P770172744596698807.a n = A059924 n

end A059924

/-! ## A059924.P2316910005225178457

`2*(A005900(n)-A002620(n))`
-/

namespace A059924.P2316910005225178457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005900 n - A002620 n)

end

end A059924.P2316910005225178457

namespace A059924

/-- `2*(A005900(n)-A002620(n))` -/
def P2316910005225178457.Spec : Prop :=
  ∀ n, P2316910005225178457.a n = A059924 n

end A059924

/-! ## A059924.P9339711073671767034

`A032528(n+1)+A000447(n)-A001844(n)`
-/

namespace A059924.P9339711073671767034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 (n + 1) + (A000447 n - A001844 n)

end

end A059924.P9339711073671767034

namespace A059924

/-- `A032528(n+1)+A000447(n)-A001844(n)` -/
def P9339711073671767034.Spec : Prop :=
  ∀ n, P9339711073671767034.a n = A059924 n

end A059924

/-! ## A059924.P4094556590112789154

`A212964(2*n)+A007590(n+1)`
-/

namespace A059924.P4094556590112789154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 (2 * n) + A007590 (n + 1)

end

end A059924.P4094556590112789154

namespace A059924

/-- `A212964(2*n)+A007590(n+1)` -/
def P4094556590112789154.Spec : Prop :=
  ∀ n, P4094556590112789154.a n = A059924 n

end A059924

/-! ## A059924.P12578018472948573568

`A000125(2*n)-A000982(n+1)`
-/

namespace A059924.P12578018472948573568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (2 * n) - A000982 (n + 1)

end

end A059924.P12578018472948573568

namespace A059924

/-- `A000125(2*n)-A000982(n+1)` -/
def P12578018472948573568.Spec : Prop :=
  ∀ n, P12578018472948573568.a n = A059924 n

end A059924

/-! ## A059924.P6490407279139565909

`A212964(2*n)+A000982(n)+n`
-/

namespace A059924.P6490407279139565909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 (2 * n) + (A000982 n + (n : ℤ))

end

end A059924.P6490407279139565909

namespace A059924

/-- `A212964(2*n)+A000982(n)+n` -/
def P6490407279139565909.Spec : Prop :=
  ∀ n, P6490407279139565909.a n = A059924 n

end A059924

/-! ## A059924.P3997006025996620142

`A212964(2*n)+Δ[A212964(n+1)]`
-/

namespace A059924.P3997006025996620142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 (2 * n) + (f1 (n + 1) - f1 n)

end

end A059924.P3997006025996620142

namespace A059924

/-- `A212964(2*n)+Δ[A212964(n+1)]` -/
def P3997006025996620142.Spec : Prop :=
  ∀ n, P3997006025996620142.a n = A059924 n

end A059924

/-! ## A059924.P5172304958866465739

`A212964(2*n)+A099392(n+2)-1`
-/

namespace A059924.P5172304958866465739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 (2 * n) + (A099392 (n + 2) - 1)

end

end A059924.P5172304958866465739

namespace A059924

/-- `A212964(2*n)+A099392(n+2)-1` -/
def P5172304958866465739.Spec : Prop :=
  ∀ n, P5172304958866465739.a n = A059924 n

end A059924

/-! ## A059924.P4015708133324002849

`A000292(2*n)+2*n²-A007590(3*n)`
-/

namespace A059924.P4015708133324002849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n) + ((2 * n ^ 2 : ℤ) - A007590 (3 * n))

end

end A059924.P4015708133324002849

namespace A059924

/-- `A000292(2*n)+2*n²-A007590(3*n)` -/
def P4015708133324002849.Spec : Prop :=
  ∀ n, P4015708133324002849.a n = A059924 n

end A059924

/-!
# A059926: Length of period of the continued fraction expansion of sqrt(2^n+1).

The programs for A059926, there is no canonical definition to state claims against.
-/

/-! ## A059926.P2293603114506231382

`A003285(A000051(n+4))`
-/

namespace A059926.P2293603114506231382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A000051 (n + 4)).toNat

end

end A059926.P2293603114506231382

/-! ## A059926.P18302993893854691929

`A003285(2^(n+4)+1)`
-/

namespace A059926.P18302993893854691929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (2 ^ (n + 4) + 1)

end

end A059926.P18302993893854691929

/-! ## A059926.P15993731332962213611

`A097853(2^(n+4)+1)`
-/

namespace A059926.P15993731332962213611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (2 ^ (n + 4) + 1)

end

end A059926.P15993731332962213611

/-! ## A059926.P12146630806049695679

`A067280(A083318(n+4))-1`
-/

namespace A059926.P12146630806049695679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (A083318 (n + 4)).toNat - 1

end

end A059926.P12146630806049695679

/-!
# A059927: Period of the continued fraction for sqrt(2^(2n+1)).

The programs for A059927, there is no canonical definition to state claims against.
-/

/-! ## A059927.P13696638148724638644

`A064848(2^n)`
-/

namespace A059927.P13696638148724638644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064848 (2 ^ n)

end

end A059927.P13696638148724638644

/-! ## A059927.P18320726585176181180

`A064848(Δ[A000051(n)])%∑[n+3]²`
-/

namespace A059927.P18320726585176181180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064848 (f1 (n + 1) - f1 n).toNat) (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A059927.P18320726585176181180

/-! ## A059927.P3909410533527410815

`A064848(A000079(n))%A000051(n)`
-/

namespace A059927.P3909410533527410815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064848 (A000079 n).toNat) (A000051 n)

end

end A059927.P3909410533527410815

/-! ## A059927.P14864607750410102074

`gcd(A000038(n), A064848(A000079(n)))`
-/

namespace A059927.P14864607750410102074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A064848 (A000079 n).toNat)

end

end A059927.P14864607750410102074

/-! ## A059927.P14236892173245772279

`lcm(A064848(A000079(n)), A275437(n))`
-/

namespace A059927.P14236892173245772279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A064848 (A000079 n).toNat) (A275437 n)

end

end A059927.P14236892173245772279

/-!
# A059928: The periodic point counting sequence for the toral automorphism given by the polynomial of (conjectural) smallest Mahler measure. The map is x -> Ax mod 1 for x in [0,1)^10, where A is the companion matrix for the polynomial x^10+x^9-x^7-x^6-x^5-x^4-x^3+x+1.

The programs for A059928, there is no canonical definition to state claims against.
-/

/-! ## A059928.P6323553369079785002

`A087612(n+1)²`
-/

namespace A059928.P6323553369079785002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087612 (n + 1) ^ 2

end

end A059928.P6323553369079785002

/-! ## A059928.P8261632259940731716

`A087612(A000027(n+1))^2`
-/

namespace A059928.P8261632259940731716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087612 (A000027 (n + 1)).toNat ^ 2

end

end A059928.P8261632259940731716

/-! ## A059928.P1362919076296752726

`A087612(n+1)^A036453(n+1)`
-/

namespace A059928.P1362919076296752726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087612 (n + 1) : ℚ) ^ (A036453 (n + 1) : ℤ)

end

end A059928.P1362919076296752726

/-! ## A059928.P251131119294440861

`A087612(n+1)^A134451(2*n)`
-/

namespace A059928.P251131119294440861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087612 (n + 1) : ℚ) ^ (A134451 (2 * n) : ℤ)

end

end A059928.P251131119294440861

/-! ## A059928.P4279420373067493914

`A087612(n+1)^gcd(2, A035706(n))`
-/

namespace A059928.P4279420373067493914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087612 (n + 1) ^ Int.gcd 2 (A035706 n)

end

end A059928.P4279420373067493914

/-! ## A059928.P17074214219586625243

`A087612(n+1)^A020639(2*(n+1))`
-/

namespace A059928.P17074214219586625243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087612 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A059928.P17074214219586625243

/-! ## A059928.P9024819790674425371

`A087612(n+1)^A000032(C(2, n+2))`
-/

namespace A059928.P9024819790674425371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087612 (n + 1) : ℚ) ^ (A000032 (Nat.choose 2 (n + 2)) : ℤ)

end

end A059928.P9024819790674425371

/-! ## A059928.P6333146572121922708

`A000290(and(-1, A087612(n+1)))`
-/

namespace A059928.P6333146572121922708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.land (-1) (A087612 (n + 1))).toNat

end

end A059928.P6333146572121922708

/-! ## A059928.P8857432092888517259

`A005563(A087612(n+1)-1)+1`
-/

namespace A059928.P8857432092888517259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A087612 (n + 1) - 1).toNat + 1

end

end A059928.P8857432092888517259

/-! ## A059928.P5286135158505827459

`A000463(2*A087612(n+1))`
-/

namespace A059928.P5286135158505827459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A087612 (n + 1)).toNat

end

end A059928.P5286135158505827459

/-!
# A059929: a(n) = Fibonacci(n)*Fibonacci(n+2).

The programs for A059929, the canonical program `A059929.P8456040648123541286` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059929 has offset 0).

The definition of A059929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059929.P8456040648123541286

`A000045(n+1)²-A033999(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059929

/-- `A000045(n+1)²-A033999(n)` -/
def P8456040648123541286.Spec : Prop :=
  ∀ n, P8456040648123541286.a n = A059929 n

theorem P8456040648123541286.correct : P8456040648123541286.Spec := by
  intro n
  simp only [A059929]

end A059929

/-! ## A059929.P2197538166623600600

`A007598(n+1)+A033999(n+1)`
-/

namespace A059929.P2197538166623600600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1) + A033999 (n + 1)

end

end A059929.P2197538166623600600

namespace A059929

/-- `A007598(n+1)+A033999(n+1)` -/
def P2197538166623600600.Spec : Prop :=
  ∀ n, P2197538166623600600.a n = A059929 n

end A059929

/-! ## A059929.P17881838321351392991

`ogf((2x-x^2)/(1-2x-2x^2+x^3))`
-/

namespace A059929.P17881838321351392991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, -2, -2, 1] n

end

end A059929.P17881838321351392991

namespace A059929

/-- `ogf((2x-x^2)/(1-2x-2x^2+x^3))` -/
def P17881838321351392991.Spec : Prop :=
  ∀ n, P17881838321351392991.a n = A059929 n

end A059929

/-! ## A059929.P10280140416198775069

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A059929.P10280140416198775069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A059929.P10280140416198775069

namespace A059929

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P10280140416198775069.Spec : Prop :=
  ∀ n, P10280140416198775069.a n = A059929 n

end A059929

/-! ## A059929.P12144536169446590408

`A208176(n)-1`
-/

namespace A059929.P12144536169446590408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208176 n - 1

end

end A059929.P12144536169446590408

namespace A059929

/-- `A208176(n)-1` -/
def P12144536169446590408.Spec : Prop :=
  ∀ n, P12144536169446590408.a n = A059929 n

end A059929

/-! ## A059929.P12325315193101611009

`∑[A260259(n)]+1`
-/

namespace A059929.P12325315193101611009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A059929.P12325315193101611009

namespace A059929

/-- `∑[A260259(n)]+1` -/
def P12325315193101611009.Spec : Prop :=
  ∀ n, P12325315193101611009.a n = A059929 n

end A059929

/-! ## A059929.P2154596221476901937

`Δ[A059840(n+1)]`
-/

namespace A059929.P2154596221476901937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059929.P2154596221476901937

namespace A059929

/-- `Δ[A059840(n+1)]` -/
def P2154596221476901937.Spec : Prop :=
  ∀ n, P2154596221476901937.a n = A059929 n

end A059929

/-! ## A059929.P13535948137843317473

`round(ϕ*A001654(n))`
-/

namespace A059929.P13535948137843317473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (A001654 n : ℝ))

end

end A059929.P13535948137843317473

namespace A059929

/-- `round(ϕ*A001654(n))` -/
def P13535948137843317473.Spec : Prop :=
  ∀ n, P13535948137843317473.a n = A059929 n

end A059929

/-! ## A059929.P7490188439869991738

`A236165(2*(n+1))`
-/

namespace A059929.P7490188439869991738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 (2 * (n + 1))

end

end A059929.P7490188439869991738

namespace A059929

/-- `A236165(2*(n+1))` -/
def P7490188439869991738.Spec : Prop :=
  ∀ n, P7490188439869991738.a n = A059929 n

end A059929

/-! ## A059929.P14202809288874311334

`∑[A111569(2*n)]+1`
-/

namespace A059929.P14202809288874311334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A059929.P14202809288874311334

namespace A059929

/-- `∑[A111569(2*n)]+1` -/
def P14202809288874311334.Spec : Prop :=
  ∀ n, P14202809288874311334.a n = A059929 n

end A059929

/-! ## A059929.P15802387612257268573

`A295683(2*(n+1))/2`
-/

namespace A059929.P15802387612257268573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295683 (2 * (n + 1)) : ℚ) / 2

end

end A059929.P15802387612257268573

namespace A059929

/-- `A295683(2*(n+1))/2` -/
def P15802387612257268573.Spec : Prop :=
  ∀ n, P15802387612257268573.a n = (A059929 n : ℚ)

end A059929

/-! ## A059929.P8029009730165744578

`A000045(Δ[n²])-a(n-1)` with `a(0)=0`
-/

namespace A059929.P8029009730165744578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - a (n - 1)

end

end A059929.P8029009730165744578

namespace A059929

/-- `A000045(Δ[n²])-a(n-1)` -/
def P8029009730165744578.Spec : Prop :=
  ∀ n, P8029009730165744578.a n = A059929 n

end A059929

/-! ## A059929.P2664382374403300701

`Δ[A000045(2*n)]-a(n-1)` with `a(0)=0`
-/

namespace A059929.P2664382374403300701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A059929.P2664382374403300701

namespace A059929

/-- `Δ[A000045(2*n)]-a(n-1)` -/
def P2664382374403300701.Spec : Prop :=
  ∀ n, P2664382374403300701.a n = A059929 n

end A059929

/-! ## A059929.P1825070078208320741

`floor(A000045(2*n+1)-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A059929.P1825070078208320741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (2 * n + 1) - a (n - 1)

end

end A059929.P1825070078208320741

namespace A059929

/-- `floor(A000045(2*n+1)-a(n-1))` -/
def P1825070078208320741.Spec : Prop :=
  ∀ n, P1825070078208320741.a n = A059929 n

end A059929

/-! ## A059929.P8200356551601160017

`Δ[A000045(n-1+n)+a(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A059929.P8200356551601160017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  A000045 ((n : ℤ) - 1 + (n : ℤ)).toNat + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059929.P8200356551601160017

namespace A059929

/-- `Δ[A000045(n-1+n)+a(n-2)]` -/
def P8200356551601160017.Spec : Prop :=
  ∀ n, P8200356551601160017.a n = A059929 n

end A059929

/-! ## A059929.P410979845749579696

`A001654(n)+A007598(n)`
-/

namespace A059929.P410979845749579696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + A007598 n

end

end A059929.P410979845749579696

namespace A059929

/-- `A001654(n)+A007598(n)` -/
def P410979845749579696.Spec : Prop :=
  ∀ n, P410979845749579696.a n = A059929 n

end A059929

/-! ## A059929.P14478431291189016354

`A064831(n)+A000035(n)`
-/

namespace A059929.P14478431291189016354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 n + A000035 n

end

end A059929.P14478431291189016354

namespace A059929

/-- `A064831(n)+A000035(n)` -/
def P14478431291189016354.Spec : Prop :=
  ∀ n, P14478431291189016354.a n = A059929 n

end A059929

/-! ## A059929.P13002492628691178642

`A081714(n)-A007598(n)`
-/

namespace A059929.P13002492628691178642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081714 n - A007598 n

end

end A059929.P13002492628691178642

namespace A059929

/-- `A081714(n)-A007598(n)` -/
def P13002492628691178642.Spec : Prop :=
  ∀ n, P13002492628691178642.a n = A059929 n

end A059929

/-! ## A059929.P2851881644413830627

`A120718(n)-A001906(n)`
-/

namespace A059929.P2851881644413830627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120718 n - A001906 n

end

end A059929.P2851881644413830627

namespace A059929

/-- `A120718(n)-A001906(n)` -/
def P2851881644413830627.Spec : Prop :=
  ∀ n, P2851881644413830627.a n = A059929 n

end A059929

/-! ## A059929.P11789935028675691658

`A001654(n)+A000045(n)²`
-/

namespace A059929.P11789935028675691658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + A000045 n ^ 2

end

end A059929.P11789935028675691658

namespace A059929

/-- `A001654(n)+A000045(n)²` -/
def P11789935028675691658.Spec : Prop :=
  ∀ n, P11789935028675691658.a n = A059929 n

end A059929

/-!
# A059930: Numbers n such that n and n^2 combined use different digits.

The programs for A059930, there is no canonical definition to state claims against.
-/

/-! ## A059930.P2192187820095456577

`sqrt(A059931(n+1))`
-/

namespace A059930.P2192187820095456577
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059931 (n + 1) : ℝ)

end

end A059930.P2192187820095456577

/-! ## A059930.P6624474946337718542

`∑{d}[root(A059931(n+1), 2), A000010(#)]`
-/

namespace A059930.P6624474946337718542
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059931 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A059930.P6624474946337718542

/-! ## A059930.P3900188615333018195

`root(A059931(n+1), 2)*A007318(∑[n])`
-/

namespace A059930.P3900188615333018195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059931 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A059930.P3900188615333018195

/-! ## A059930.P213877913633339682

`root(A059931(n+1), A020639(2*(n+1)))`
-/

namespace A059930.P213877913633339682
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059931 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A059930.P213877913633339682

/-! ## A059930.P12709911357641800860

`root(A059931(n+1), 2)/A007318(C(2, n))`
-/

namespace A059930.P12709911357641800860
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059931 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) / (A007318 (Nat.choose 2 n) : ℝ)

end

end A059930.P12709911357641800860

/-!
# A059931: Numbers n such that n and n^(1/2) combined use different digits.

The programs for A059931, there is no canonical definition to state claims against.
-/

/-! ## A059931.P7231515229645017494

`A059930(n+1)²`
-/

namespace A059931.P7231515229645017494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059930 (n + 1) ^ 2

end

end A059931.P7231515229645017494

/-! ## A059931.P1188508894821178176

`record[A059930(A046693(n))²]`
-/

namespace A059931.P1188508894821178176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059930 (A046693 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059931.P1188508894821178176

/-! ## A059931.P1606645135294292399

`record[A059930(A059128(n))²]`
-/

namespace A059931.P1606645135294292399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059930 (A059128 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059931.P1606645135294292399

/-! ## A059931.P13202040874150136024

`record[A059930(A126759(n))²]`
-/

namespace A059931.P13202040874150136024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059930 (A126759 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059931.P13202040874150136024

/-! ## A059931.P3975068099148113555

`record[A059930(A133310(n))²]`
-/

namespace A059931.P3975068099148113555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059930 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059931.P3975068099148113555

/-!
# A059934: Third step in Goodstein sequences, i.e., g(5) if g(2)=n: write g(4)=A057650(n) in hereditary representation base 4, bump to base 5, then subtract 1 to produce g(5).

The programs for A059934, there is no canonical definition to state claims against.
-/

/-! ## A059934.P6110871586026775059

`A296441(A046691(n+4))`
-/

namespace A059934.P6110871586026775059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (A046691 (n + 4)).toNat

end

end A059934.P6110871586026775059

/-! ## A059934.P7577753770410804576

`A296441(A056119(n)+17)`
-/

namespace A059934.P7577753770410804576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (A056119 n + 17).toNat

end

end A059934.P7577753770410804576

/-! ## A059934.P6105577322695655333

`A296441(eq[8, A209438(n)])`
-/

namespace A059934.P6105577322695655333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059934.P6105577322695655333

/-! ## A059934.P5963304142220809707

`A296441(eq[3, A066633(n+1)])`
-/

namespace A059934.P5963304142220809707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059934.P5963304142220809707

/-! ## A059934.P15476316642536852670

`A296441(eq[4, A095133(n+1)])`
-/

namespace A059934.P15476316642536852670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059934.P15476316642536852670

/-!
# A059935: Fourth step in Goodstein sequences, i.e., g(6) if g(2)=n: write g(5)=A059934(n) in hereditary representation base 5, bump to base 6, then subtract 1 to produce g(6).

The programs for A059935, there is no canonical definition to state claims against.
-/

/-! ## A059935.P2734203904013353789

`A296441(A055999(n+5)+1)`
-/

namespace A059935.P2734203904013353789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (A055999 (n + 5) + 1).toNat

end

end A059935.P2734203904013353789

/-! ## A059935.P6171853910598489576

`A296441(eq[8, A095133(n+1)])`
-/

namespace A059935.P6171853910598489576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059935.P6171853910598489576

/-!
# A059936: Fifth step in Goodstein sequences, i.e., g(7) if g(2)=n: write g(6)=A059935(n) in hereditary representation base 6, bump to base 7, then subtract 1 to produce g(7).

The programs for A059936, there is no canonical definition to state claims against.
-/

/-! ## A059936.P13580262588082301413

`A296441(A055999(n+6))`
-/

namespace A059936.P13580262588082301413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (A055999 (n + 6)).toNat

end

end A059936.P13580262588082301413

/-! ## A059936.P8954945047335572097

`A296441(A056115(n+4)+9)`
-/

namespace A059936.P8954945047335572097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (A056115 (n + 4) + 9).toNat

end

end A059936.P8954945047335572097

/-! ## A059936.P14560131442592206241

`A296441(eq[13, A168396(n+1)])`
-/

namespace A059936.P14560131442592206241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059936.P14560131442592206241

/-!
# A059937: Sum of binary numbers with n 1's and two (possibly leading) 0's.

The programs for A059937, the canonical program `A059937.P5982117091506827574` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059937 has offset 0).

The definition of A059937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059937.P5982117091506827574

`(2^(n+2)-1)*n*(n+1)/2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059937

/-- `(2^(n+2)-1)*n*(n+1)/2` -/
def P5982117091506827574.Spec : Prop :=
  ∀ n, P5982117091506827574.a n = (A059937 n : ℚ)

end A059937

/-! ## A059937.P922104749758704737

`A059672(n)+A059938(n)`
-/

namespace A059937.P922104749758704737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059672 n + A059938 n

end

end A059937.P922104749758704737

namespace A059937

/-- `A059672(n)+A059938(n)` -/
def P922104749758704737.Spec : Prop :=
  ∀ n, P922104749758704737.a n = A059937 n

end A059937

/-! ## A059937.P7675512220627218663

`floor(∑[2*a(n-1)]*∑[n])` with `a(0)=3, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A059937.P7675512220627218663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  2 * f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A059937.P7675512220627218663

namespace A059937

/-- `floor(∑[2*a(n-1)]*∑[n])` -/
def P7675512220627218663.Spec : Prop :=
  ∀ n, (P7675512220627218663.a n : ℤ) = A059937 n

end A059937

/-! ## A059937.P15252750768627132250

`∑[n]+∑[2*a(n-1)]*∑[n]` with `a(0)=2`
-/

namespace A059937.P15252750768627132250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  2 * f2 (n - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A059937.P15252750768627132250

namespace A059937

/-- `∑[n]+∑[2*a(n-1)]*∑[n]` -/
def P15252750768627132250.Spec : Prop :=
  ∀ n, (P15252750768627132250.a n : ℤ) = A059937 n

end A059937

/-! ## A059937.P15833207956393904053

`C(n+1, 2)+(n²+n)*∑[2^n]`
-/

namespace A059937.P15833207956393904053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + (n ^ 2 + n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059937.P15833207956393904053

namespace A059937

/-- `C(n+1, 2)+(n²+n)*∑[2^n]` -/
def P15833207956393904053.Spec : Prop :=
  ∀ n, (P15833207956393904053.a n : ℤ) = A059937 n

end A059937

/-! ## A059937.P17772222380037252757

`∑[∑[A100312(n)-1]]`
-/

namespace A059937.P17772222380037252757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100312 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059937.P17772222380037252757

namespace A059937

/-- `∑[∑[A100312(n)-1]]` -/
def P17772222380037252757.Spec : Prop :=
  ∀ n, P17772222380037252757.a n = A059937 n

end A059937

/-! ## A059937.P3343006968148286123

`A128796(n+1)-∑[n]`
-/

namespace A059937.P3343006968148286123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128796 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A059937.P3343006968148286123

namespace A059937

/-- `A128796(n+1)-∑[n]` -/
def P3343006968148286123.Spec : Prop :=
  ∀ n, P3343006968148286123.a n = A059937 n

end A059937

/-! ## A059937.P15439365992191200812

`∑[n*∑[A045623(n+1)]]`
-/

namespace A059937.P15439365992191200812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059937.P15439365992191200812

namespace A059937

/-- `∑[n*∑[A045623(n+1)]]` -/
def P15439365992191200812.Spec : Prop :=
  ∀ n, P15439365992191200812.a n = A059937 n

end A059937

/-! ## A059937.P10439673772436380068

`∑[n*(A328890(n+1)+1)]`
-/

namespace A059937.P10439673772436380068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A328890 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059937.P10439673772436380068

namespace A059937

/-- `∑[n*(A328890(n+1)+1)]` -/
def P10439673772436380068.Spec : Prop :=
  ∀ n, P10439673772436380068.a n = A059937 n

end A059937

/-! ## A059937.P4385676620842128792

`(n²+n)/2+A097110(2*n)*(n²+n)`
-/

namespace A059937.P4385676620842128792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℚ) / 2 + (A097110 (2 * n) * (n ^ 2 + n : ℤ) : ℚ)

end

end A059937.P4385676620842128792

namespace A059937

/-- `(n²+n)/2+A097110(2*n)*(n²+n)` -/
def P4385676620842128792.Spec : Prop :=
  ∀ n, P4385676620842128792.a n = (A059937 n : ℚ)

end A059937

/-! ## A059937.P11742724476732372184

`∑[n*(A047860(n)+A005183(n))]`
-/

namespace A059937.P11742724476732372184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A047860 n + A005183 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059937.P11742724476732372184

namespace A059937

/-- `∑[n*(A047860(n)+A005183(n))]` -/
def P11742724476732372184.Spec : Prop :=
  ∀ n, P11742724476732372184.a n = A059937 n

end A059937

/-! ## A059937.P17186824440941905518

`A000079(n)*A046092(n)-∑[n]`
-/

namespace A059937.P17186824440941905518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A046092 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A059937.P17186824440941905518

namespace A059937

/-- `A000079(n)*A046092(n)-∑[n]` -/
def P17186824440941905518.Spec : Prop :=
  ∀ n, P17186824440941905518.a n = A059937 n

end A059937

/-! ## A059937.P16681564973862011688

`n*Δ[A276659(n)]-A276659(n)`
-/

namespace A059937.P16681564973862011688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) - A276659 n

end

end A059937.P16681564973862011688

namespace A059937

/-- `n*Δ[A276659(n)]-A276659(n)` -/
def P16681564973862011688.Spec : Prop :=
  ∀ n, P16681564973862011688.a n = A059937 n

end A059937

/-! ## A059937.P16295095079444502474

`A000225(n)+A059938(n)+A059673(n)`
-/

namespace A059937.P16295095079444502474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A059938 n + A059673 n)

end

end A059937.P16295095079444502474

namespace A059937

/-- `A000225(n)+A059938(n)+A059673(n)` -/
def P16295095079444502474.Spec : Prop :=
  ∀ n, P16295095079444502474.a n = A059937 n

end A059937

/-! ## A059937.P12207273013299153597

`A000217(n)*A020707(n)-A000217(n)`
-/

namespace A059937.P12207273013299153597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A020707 n - A000217 n

end

end A059937.P12207273013299153597

namespace A059937

/-- `A000217(n)*A020707(n)-A000217(n)` -/
def P12207273013299153597.Spec : Prop :=
  ∀ n, P12207273013299153597.a n = A059937 n

end A059937

/-! ## A059937.P6178532768499600332

`A000217(n)*A171497(n)-A000217(n)`
-/

namespace A059937.P6178532768499600332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A171497 n - A000217 n

end

end A059937.P6178532768499600332

namespace A059937

/-- `A000217(n)*A171497(n)-A000217(n)` -/
def P6178532768499600332.Spec : Prop :=
  ∀ n, P6178532768499600332.a n = A059937 n

end A059937

/-! ## A059937.P16386589646625958862

`A007758(n+1)-(A036289(n+1)+A000217(n))`
-/

namespace A059937.P16386589646625958862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 (n + 1) - (A036289 (n + 1) + A000217 n)

end

end A059937.P16386589646625958862

namespace A059937

/-- `A007758(n+1)-(A036289(n+1)+A000217(n))` -/
def P16386589646625958862.Spec : Prop :=
  ∀ n, P16386589646625958862.a n = A059937 n

end A059937

/-! ## A059937.P6339931748690951517

`A100381(n+1)+A100381(n+1)-A000217(n)`
-/

namespace A059937.P6339931748690951517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100381 (n + 1) + (A100381 (n + 1) - A000217 n)

end

end A059937.P6339931748690951517

namespace A059937

/-- `A100381(n+1)+A100381(n+1)-A000217(n)` -/
def P6339931748690951517.Spec : Prop :=
  ∀ n, P6339931748690951517.a n = A059937 n

end A059937

/-! ## A059937.P7948905075525309073

`A000124(n)*A126646(n+1)-A126646(n+1)`
-/

namespace A059937.P7948905075525309073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n * A126646 (n + 1) - A126646 (n + 1)

end

end A059937.P7948905075525309073

namespace A059937

/-- `A000124(n)*A126646(n+1)-A126646(n+1)` -/
def P7948905075525309073.Spec : Prop :=
  ∀ n, P7948905075525309073.a n = A059937 n

end A059937

/-!
# A059938: Sum of binary numbers with n 1's and two (non-leading) 0's.

The programs for A059938, the canonical program `A059938.P8940235657493958396` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059938 has offset 0).

The definition of A059938 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059938.P8940235657493958396

`n²*2^(n+1)-n*(n-1)/2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059938

/-- `n²*2^(n+1)-n*(n-1)/2` -/
def P8940235657493958396.Spec : Prop :=
  ∀ n, P8940235657493958396.a n = (A059938 n : ℚ)

end A059938

/-! ## A059938.P14833197946800822053

`(A048479(n)-n)*n/2`
-/

namespace A059938.P14833197946800822053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048479 n - (n : ℤ) : ℚ) * ((n : ℚ) / 2)

end

end A059938.P14833197946800822053

namespace A059938

/-- `(A048479(n)-n)*n/2` -/
def P14833197946800822053.Spec : Prop :=
  ∀ n, P14833197946800822053.a n = (A059938 n : ℚ)

end A059938

/-! ## A059938.P4610912762438382529

`n/2*∑[A003261(n+1)]`
-/

namespace A059938.P4610912762438382529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A059938.P4610912762438382529

namespace A059938

/-- `n/2*∑[A003261(n+1)]` -/
def P4610912762438382529.Spec : Prop :=
  ∀ n, P4610912762438382529.a n = (A059938 n : ℚ)

end A059938

/-! ## A059938.P8949521785421790833

`(n*(A134067(n)+1)+1)*n/2`
-/

namespace A059938.P8949521785421790833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (A134067 n + 1) + 1 : ℚ) * ((n : ℚ) / 2)

end

end A059938.P8949521785421790833

namespace A059938

/-- `(n*(A134067(n)+1)+1)*n/2` -/
def P8949521785421790833.Spec : Prop :=
  ∀ n, P8949521785421790833.a n = (A059938 n : ℚ)

end A059938

/-! ## A059938.P7802869819341390541

`abs(A059672(n)-A059937(n))`
-/

namespace A059938.P7802869819341390541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059672 n - A059937 n|

end

end A059938.P7802869819341390541

namespace A059938

/-- `abs(A059672(n)-A059937(n))` -/
def P7802869819341390541.Spec : Prop :=
  ∀ n, P7802869819341390541.a n = A059938 n

end A059938

/-! ## A059938.P15018421563282555068

`∑[A014477(n)-A083706(n)]`
-/

namespace A059938.P15018421563282555068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014477 n - A083706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059938.P15018421563282555068

namespace A059938

/-- `∑[A014477(n)-A083706(n)]` -/
def P15018421563282555068.Spec : Prop :=
  ∀ n, P15018421563282555068.a n = A059938 n

end A059938

/-!
# A059939: a(n) = floor(log_2(n+1) - 1).

The programs for A059939, the canonical program `A059939.P14472836675643454889` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059939 has offset 1).

The definition of A059939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059939.P14472836675643454889

`A000523(n+2)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059939

/-- `A000523(n+2)-1` -/
def P14472836675643454889.Spec : Prop :=
  ∀ n, P14472836675643454889.a n = A059939 (n + 1)

theorem P14472836675643454889.correct : P14472836675643454889.Spec := by
  intro n
  simp only [A059939, Nat.add_sub_cancel]

end A059939

/-! ## A059939.P13281668840921755215

`floor(log2(n+2))-1`
-/

namespace A059939.P13281668840921755215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (n + 2) : ℤ) - 1

end

end A059939.P13281668840921755215

namespace A059939

/-- `floor(log2(n+2))-1` -/
def P13281668840921755215.Spec : Prop :=
  ∀ n, P13281668840921755215.a n = A059939 (n + 1)

end A059939

/-! ## A059939.P4174923157098924725

`floor(log2(∑[log2(gcd(2, n))]))`
-/

namespace A059939.P4174923157098924725
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A059939.P4174923157098924725

namespace A059939

/-- `floor(log2(∑[log2(gcd(2, n))]))` -/
def P4174923157098924725.Spec : Prop :=
  ∀ n, P4174923157098924725.a n = A059939 (n + 1)

end A059939

/-! ## A059939.P8667908757305851274

`∑[char[xor(n, n+2)]]`
-/

namespace A059939.P8667908757305851274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059939.P8667908757305851274

namespace A059939

/-- `∑[char[xor(n, n+2)]]` -/
def P8667908757305851274.Spec : Prop :=
  ∀ n, (P8667908757305851274.a n : ℤ) = A059939 (n + 1)

end A059939

/-! ## A059939.P9219514706383372736

`floor(log2(cosh(log(n+2))))`
-/

namespace A059939.P9219514706383372736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.cosh (Real.log (n + 2 : ℝ)))⌋

end

end A059939.P9219514706383372736

namespace A059939

/-- `floor(log2(cosh(log(n+2))))` -/
def P9219514706383372736.Spec : Prop :=
  ∀ n, P9219514706383372736.a n = A059939 (n + 1)

end A059939

/-! ## A059939.P16299762950087543967

`floor(log2(sinh(log(n+3))))`
-/

namespace A059939.P16299762950087543967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.sinh (Real.log (n + 3 : ℝ)))⌋

end

end A059939.P16299762950087543967

namespace A059939

/-- `floor(log2(sinh(log(n+3))))` -/
def P16299762950087543967.Spec : Prop :=
  ∀ n, P16299762950087543967.a n = A059939 (n + 1)

end A059939

/-! ## A059939.P8188254337806076062

`floor(log2(∑[and(1, n+1)]))`
-/

namespace A059939.P8188254337806076062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059939.P8188254337806076062

namespace A059939

/-- `floor(log2(∑[and(1, n+1)]))` -/
def P8188254337806076062.Spec : Prop :=
  ∀ n, (P8188254337806076062.a n : ℤ) = A059939 (n + 1)

end A059939

/-! ## A059939.P12359729182758395302

`floor(log2(cot(2/(n+3))))`
-/

namespace A059939.P12359729182758395302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.cot (2 / (n + 3 : ℚ) : ℝ))⌋

end

end A059939.P12359729182758395302

namespace A059939

/-- `floor(log2(cot(2/(n+3))))` -/
def P12359729182758395302.Spec : Prop :=
  ∀ n, P12359729182758395302.a n = A059939 (n + 1)

end A059939

/-! ## A059939.P5419399490038370614

`∑[char[lcm(2, ∑[2^n])]]`
-/

namespace A059939.P5419399490038370614
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059939.P5419399490038370614

namespace A059939

/-- `∑[char[lcm(2, ∑[2^n])]]` -/
def P5419399490038370614.Spec : Prop :=
  ∀ n, (P5419399490038370614.a n : ℤ) = A059939 (n + 1)

end A059939

/-! ## A059939.P11045417517411733992

`∑[char[Δ[xor(n, n-1)]]]`
-/

namespace A059939.P11045417517411733992
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059939.P11045417517411733992

namespace A059939

/-- `∑[char[Δ[xor(n, n-1)]]]` -/
def P11045417517411733992.Spec : Prop :=
  ∀ n, (P11045417517411733992.a n : ℤ) = A059939 (n + 1)

end A059939

/-! ## A059939.P7621633602465817730

`ceil(log2(ceil((n-tan(2))/4)))`
-/

namespace A059939.P7621633602465817730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (⌈((n : ℝ) - Real.tan (2 : ℝ)) / 4⌉ : ℝ)⌉

end

end A059939.P7621633602465817730

namespace A059939

/-- `ceil(log2(ceil((n-tan(2))/4)))` -/
def P7621633602465817730.Spec : Prop :=
  ∀ n, P7621633602465817730.a n = A059939 (n + 1)

end A059939

/-! ## A059939.P3037322286035953206

`floor(log2(∑[∑[ogf(1/(1+x))]]))`
-/

namespace A059939.P3037322286035953206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059939.P3037322286035953206

namespace A059939

/-- `floor(log2(∑[∑[ogf(1/(1+x))]]))` -/
def P3037322286035953206.Spec : Prop :=
  ∀ n, (P3037322286035953206.a n : ℤ) = A059939 (n + 1)

end A059939

/-! ## A059939.P5049316976677073520

`∑[and(1, char[∑[2^(n+1)]])]`
-/

namespace A059939.P5049316976677073520
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059939.P5049316976677073520

namespace A059939

/-- `∑[and(1, char[∑[2^(n+1)]])]` -/
def P5049316976677073520.Spec : Prop :=
  ∀ n, (P5049316976677073520.a n : ℤ) = A059939 (n + 1)

end A059939

/-! ## A059939.P16387015719977312740

`∑[char[or(2, ∑[2^(n+1)])]]`
-/

namespace A059939.P16387015719977312740
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059939.P16387015719977312740

namespace A059939

/-- `∑[char[or(2, ∑[2^(n+1)])]]` -/
def P16387015719977312740.Spec : Prop :=
  ∀ n, (P16387015719977312740.a n : ℤ) = A059939 (n + 1)

end A059939

/-! ## A059939.P6100888265418580527

`∑[char[∑[2*a(n-1)]]]` with `a(0)=2`
-/

namespace A059939.P6100888265418580527
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059939.P6100888265418580527

namespace A059939

/-- `∑[char[∑[2*a(n-1)]]]` -/
def P6100888265418580527.Spec : Prop :=
  ∀ n, (P6100888265418580527.a n : ℤ) = A059939 (n + 1)

end A059939

/-! ## A059939.P2802461493998253504

`∑[char[∑[2^C(n+1, n)]]]`
-/

namespace A059939.P2802461493998253504
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose (n + 1) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059939.P2802461493998253504

namespace A059939

/-- `∑[char[∑[2^C(n+1, n)]]]` -/
def P2802461493998253504.Spec : Prop :=
  ∀ n, (P2802461493998253504.a n : ℤ) = A059939 (n + 1)

end A059939

/-! ## A059939.P1275599050522767624

`∑[floor(acot(and(n+2, n-2)))]`
-/

namespace A059939.P1275599050522767624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.land (n + 2 : ℤ) ((n : ℤ) - 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059939.P1275599050522767624

namespace A059939

/-- `∑[floor(acot(and(n+2, n-2)))]` -/
def P1275599050522767624.Spec : Prop :=
  ∀ n, P1275599050522767624.a n = A059939 (n + 1)

end A059939

/-! ## A059939.P14664898827205905803

`∑[C(2, and(n+2, n-2)+2)]`
-/

namespace A059939.P14664898827205905803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Int.land (n + 2 : ℤ) ((n : ℤ) - 2) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059939.P14664898827205905803

namespace A059939

/-- `∑[C(2, and(n+2, n-2)+2)]` -/
def P14664898827205905803.Spec : Prop :=
  ∀ n, (P14664898827205905803.a n : ℤ) = A059939 (n + 1)

end A059939

/-! ## A059939.P12346776112519290444

`∑[char[∑[2^(n+1)]]]%(n+1)`
-/

namespace A059939.P12346776112519290444
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A059939.P12346776112519290444

namespace A059939

/-- `∑[char[∑[2^(n+1)]]]%(n+1)` -/
def P12346776112519290444.Spec : Prop :=
  ∀ n, (P12346776112519290444.a n : ℤ) = A059939 (n + 1)

end A059939

/-!
# A059940: Smallest prime p such that x = n is a solution mod p of x^3 = 2, or 0 if no such prime exists.

The programs for A059940, there is no canonical definition to state claims against.
-/

/-! ## A059940.P6975804931044714044

`record[A006530(xor(1, ∑[9^n]+1))]`
-/

namespace A059940.P6975804931044714044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f2 j + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059940.P6975804931044714044

/-!
# A059941: Take the n-th number which is just a sequence of 1's and 2's (A007931): if the first k digits in order are the same as the last k digits in order then put 1 in the k-th from right digit of a(n), otherwise put a zero.

The programs for A059941, there is no canonical definition to state claims against.
-/

/-! ## A059941.P18228305778347270557

`A007088(A059942(n+1))`
-/

namespace A059941.P18228305778347270557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A059942 (n + 1)).toNat

end

end A059941.P18228305778347270557

/-! ## A059941.P15720436682895683948

`A007088(A059943(n+1)/2)`
-/

namespace A059941.P15720436682895683948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A059943 (n + 1) : ℚ) / 2)).toNat

end

end A059941.P15720436682895683948

/-! ## A059941.P16099035856880200470

`A185544(A059943(n+1))`
-/

namespace A059941.P16099035856880200470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A059943 (n + 1)).toNat

end

end A059941.P16099035856880200470

/-! ## A059941.P3692345524826877508

`A185544(2*A059942(n+1))`
-/

namespace A059941.P3692345524826877508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A059942 (n + 1)).toNat

end

end A059941.P3692345524826877508

/-! ## A059941.P3302941135663662991

`A185544(A059942(1-char[1]+n)+A059942(n+1))`
-/

namespace A059941.P3302941135663662991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A059942 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat + A059942 (n + 1)).toNat

end

end A059941.P3302941135663662991

/-!
# A059942: A059941 translated from binary to decimal.

The programs for A059942, there is no canonical definition to state claims against.
-/

/-! ## A059942.P11742421449957342083

`A059943(n+1)/2`
-/

namespace A059942.P11742421449957342083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059943 (n + 1) : ℚ) / 2

end

end A059942.P11742421449957342083

/-! ## A059942.P14431282679184004073

`A001281(A059943(n+1))`
-/

namespace A059942.P14431282679184004073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A059943 (n + 1)).toNat

end

end A059942.P14431282679184004073

/-! ## A059942.P9091698572794198169

`A004524(A059943(n+1)+1)`
-/

namespace A059942.P9091698572794198169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A059943 (n + 1) + 1).toNat

end

end A059942.P9091698572794198169

/-! ## A059942.P8425187919968618460

`A004526(A059943(n+1)+1)`
-/

namespace A059942.P8425187919968618460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A059943 (n + 1) + 1).toNat

end

end A059942.P8425187919968618460

/-! ## A059942.P12478436756309760823

`A057979(A059943(n+1)+1)`
-/

namespace A059942.P12478436756309760823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A059943 (n + 1) + 1).toNat

end

end A059942.P12478436756309760823

/-! ## A059942.P2941897416940501185

`A003602(A059943(n+1)-1)`
-/

namespace A059942.P2941897416940501185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A059943 (n + 1) - 1).toNat

end

end A059942.P2941897416940501185

/-! ## A059942.P12249100953123000929

`A008619(A059943(n+1)-1)`
-/

namespace A059942.P12249100953123000929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A059943 (n + 1) - 1).toNat

end

end A059942.P12249100953123000929

/-! ## A059942.P9981346346931408823

`A065033(A059943(n+1)-1)`
-/

namespace A059942.P9981346346931408823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A059943 (n + 1) - 1).toNat

end

end A059942.P9981346346931408823

/-! ## A059942.P2881041466632236906

`A159481(A059943(n+1)-1)`
-/

namespace A059942.P2881041466632236906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (A059943 (n + 1) - 1).toNat

end

end A059942.P2881041466632236906

/-! ## A059942.P14636460878751463673

`A029579(A059943(n+1)-2)`
-/

namespace A059942.P14636460878751463673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A059943 (n + 1) - 2).toNat

end

end A059942.P14636460878751463673

/-! ## A059942.P10961469343379935083

`A065033(A059943(n+1))%A000040(n+1)`
-/

namespace A059942.P10961469343379935083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A059943 (n + 1)).toNat) (A000040 (n + 1))

end

end A059942.P10961469343379935083

/-! ## A059942.P18129786375692930523

`A002265(2*A059943(n+1))`
-/

namespace A059942.P18129786375692930523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A059943 (n + 1)).toNat

end

end A059942.P18129786375692930523

/-! ## A059942.P7497909352941504925

`A002265(A059943(n+1)+A059943(n+1)+1)`
-/

namespace A059942.P7497909352941504925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A059943 (n + 1) + (A059943 (n + 1) + 1)).toNat

end

end A059942.P7497909352941504925

/-!
# A059943: Toss a fair coin and calculate the expected time until the n-th possible finite sequence of Heads and Tails first appears (ordered by length of sequence and alphabetical order so H, T, HH, HT, TH, TT, HHH, etc.).

The programs for A059943, there is no canonical definition to state claims against.
-/

/-! ## A059943.P1158165248851449755

`2*A059942(n+1)`
-/

namespace A059943.P1158165248851449755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059942 (n + 1)

end

end A059943.P1158165248851449755

/-! ## A059943.P9844041309390467562

`A004277(A059942(n+1))`
-/

namespace A059943.P9844041309390467562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A059942 (n + 1)).toNat

end

end A059943.P9844041309390467562

/-! ## A059943.P11603076419022803315

`A004275(A059942(n+1)+1)`
-/

namespace A059943.P11603076419022803315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A059942 (n + 1) + 1).toNat

end

end A059943.P11603076419022803315

/-! ## A059943.P11736910049225403508

`A059942(1-char[1]+n)+A059942(n+1)`
-/

namespace A059943.P11736910049225403508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059942 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat + A059942 (n + 1)

end

end A059943.P11736910049225403508

/-! ## A059943.P3837252666685787626

`A000265(A059942(n+1)+A059942(n+1)+1)-1`
-/

namespace A059943.P3837252666685787626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A059942 (n + 1) + A059942 (n + 1) + 1).toNat - 1

end

end A059943.P3837252666685787626

/-!
# A059944: Denominators of Maclaurin series coefficients for 2*cos(x/sqrt(3) + arctan(-sqrt(3))) = cos(x/sqrt(3)) + sqrt(3)*sin(x/sqrt(3)).

The programs for A059944, the canonical program `A059944.P3499115717274117684` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059944 has offset 0).

The definition of A059944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059944.P3499115717274117684

`3^floor(n/2)*n!`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059944

/-- `3^floor(n/2)*n!` -/
def P3499115717274117684.Spec : Prop :=
  ∀ n, P3499115717274117684.a n = (A059944 n : ℚ)

end A059944

/-! ## A059944.P124744644255807693

`n!*3^(and(n, -2)/2)`
-/

namespace A059944.P124744644255807693
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) * (3 : ℝ) ^ ((Int.land (n : ℤ) (-2) : ℚ) / 2 : ℝ)

end

end A059944.P124744644255807693

namespace A059944

/-- `n!*3^(and(n, -2)/2)` -/
def P124744644255807693.Spec : Prop :=
  ∀ n, P124744644255807693.a n = (A059944 n : ℝ)

end A059944

/-! ## A059944.P12868313136313670872

`6*a(n-2)*C(n, 2)` with `a(0)=1, a(1)=1`
-/

namespace A059944.P12868313136313670872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  6 * a (n - 2) * Nat.choose n 2

end

end A059944.P12868313136313670872

namespace A059944

/-- `6*a(n-2)*C(n, 2)` -/
def P12868313136313670872.Spec : Prop :=
  ∀ n, (P12868313136313670872.a n : ℤ) = A059944 n

end A059944

/-! ## A059944.P3663755534580823484

`∏[floor(3/acot(n))/3^(n%2)]`
-/

namespace A059944.P3663755534580823484
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ) / (3 ^ (n % 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059944.P3663755534580823484

namespace A059944

/-- `∏[floor(3/acot(n))/3^(n%2)]` -/
def P3663755534580823484.Spec : Prop :=
  ∀ n, P3663755534580823484.a n = (A059944 n : ℚ)

end A059944

/-! ## A059944.P14096726741678888461

`∏[floor(2/acot(n))+n*(-1)^n]`
-/

namespace A059944.P14096726741678888461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + (n : ℤ) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059944.P14096726741678888461

namespace A059944

/-- `∏[floor(2/acot(n))+n*(-1)^n]` -/
def P14096726741678888461.Spec : Prop :=
  ∀ n, P14096726741678888461.a n = A059944 n

end A059944

/-! ## A059944.P10356317441773108237

`3*(n²-n)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A059944.P10356317441773108237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * (((n ^ 2 : ℤ) - (n : ℤ)) * a (n - 2))

end

end A059944.P10356317441773108237

namespace A059944

/-- `3*(n²-n)*a(n-2)` -/
def P10356317441773108237.Spec : Prop :=
  ∀ n, P10356317441773108237.a n = A059944 n

end A059944

/-! ## A059944.P2678455440288818958

`3*(n-1)*n*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A059944.P2678455440288818958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * (((n : ℤ) - 1) * ((n : ℤ) * a (n - 2)))

end

end A059944.P2678455440288818958

namespace A059944

/-- `3*(n-1)*n*a(n-2)` -/
def P2678455440288818958.Spec : Prop :=
  ∀ n, P2678455440288818958.a n = A059944 n

end A059944

/-! ## A059944.P6224711416968858129

`2*∏[A035877(n)/2]`
-/

namespace A059944.P6224711416968858129
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035877 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A059944.P6224711416968858129

namespace A059944

/-- `2*∏[A035877(n)/2]` -/
def P6224711416968858129.Spec : Prop :=
  ∀ n, P6224711416968858129.a n = (A059944 n : ℚ)

end A059944

/-! ## A059944.P10980082755279364954

`∏[A274922(n)+2*n]`
-/

namespace A059944.P10980082755279364954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A059944.P10980082755279364954

namespace A059944

/-- `∏[A274922(n)+2*n]` -/
def P10980082755279364954.Spec : Prop :=
  ∀ n, P10980082755279364954.a n = A059944 n

end A059944

/-!
# A059945: Number of 4-block bicoverings of an n-set.

The programs for A059945, the canonical program `A059945.P7512434586067567609` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059945 has offset 1).

The definition of A059945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059945.P7512434586067567609

`12*a(n-1)-47*a(n-2)+72*a(n-3)-36*a(n-4)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=39`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059945

/-- `12*a(n-1)-47*a(n-2)+72*a(n-3)-36*a(n-4)` -/
def P7512434586067567609.Spec : Prop :=
  ∀ n, P7512434586067567609.a n = A059945 (n + 1)

theorem P7512434586067567609.correct : P7512434586067567609.Spec := by
  intro n
  simp only [A059945, Nat.add_sub_cancel]

end A059945

/-! ## A059945.P5889095455731902373

`(floor(2^(n-1))-1)*floor(3^n/2)`
-/

namespace A059945.P5889095455731902373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - 1) * ⌊(3 ^ n : ℚ) / 2⌋

end

end A059945.P5889095455731902373

namespace A059945

/-- `(floor(2^(n-1))-1)*floor(3^n/2)` -/
def P5889095455731902373.Spec : Prop :=
  ∀ n, P5889095455731902373.a n = A059945 (n + 1)

end A059945

/-! ## A059945.P4883204456043653880

`lcm(ceil(2^(n-1))-1, ∑[floor(3^(n-1))])`
-/

namespace A059945.P4883204456043653880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059945.P4883204456043653880

namespace A059945

/-- `lcm(ceil(2^(n-1))-1, ∑[floor(3^(n-1))])` -/
def P4883204456043653880.Spec : Prop :=
  ∀ n, (P4883204456043653880.a n : ℤ) = A059945 (n + 1)

end A059945

/-! ## A059945.P7336062805096773773

`A003462(n)*A011782(n)-A003462(n)`
-/

namespace A059945.P7336062805096773773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n * A011782 n - A003462 n

end

end A059945.P7336062805096773773

namespace A059945

/-- `A003462(n)*A011782(n)-A003462(n)` -/
def P7336062805096773773.Spec : Prop :=
  ∀ n, P7336062805096773773.a n = A059945 (n + 1)

end A059945

/-! ## A059945.P5078810330543622714

`(3^n-1)*A000918(n)/4`
-/

namespace A059945.P5078810330543622714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 ^ n : ℤ) - 1) * A000918 n : ℚ) / 4

end

end A059945.P5078810330543622714

namespace A059945

/-- `(3^n-1)*A000918(n)/4` -/
def P5078810330543622714.Spec : Prop :=
  ∀ n, P5078810330543622714.a n = (A059945 (n + 1) : ℚ)

end A059945

/-! ## A059945.P12034093215150767174

`(A036551(n)-A000244(n))/2`
-/

namespace A059945.P12034093215150767174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036551 n - A000244 n : ℚ) / 2

end

end A059945.P12034093215150767174

namespace A059945

/-- `(A036551(n)-A000244(n))/2` -/
def P12034093215150767174.Spec : Prop :=
  ∀ n, P12034093215150767174.a n = (A059945 (n + 1) : ℚ)

end A059945

/-! ## A059945.P13226778397906734718

`A000918(n)*A003462(n)/2`
-/

namespace A059945.P13226778397906734718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000918 n * A003462 n : ℚ) / 2

end

end A059945.P13226778397906734718

namespace A059945

/-- `A000918(n)*A003462(n)/2` -/
def P13226778397906734718.Spec : Prop :=
  ∀ n, P13226778397906734718.a n = (A059945 (n + 1) : ℚ)

end A059945

/-!
# A059946: Number of 5-block bicoverings of an n-set.

The programs for A059946, there is no canonical definition to state claims against.
-/

/-! ## A059946.P615375842098375408

`floor(A133236(2*n+3)/24)`
-/

namespace A059946.P615375842098375408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133236 (2 * n + 3) : ℚ) / 24⌋

end

end A059946.P615375842098375408

/-!
# A059947: Number of 6-block bicoverings of an n-set.

The programs for A059947, there is no canonical definition to state claims against.
-/

/-! ## A059947.P15850268761517609838

`n^(a(n-1)+1)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A059947.P15850268761517609838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  n ^ (a (n - 1) + 1)

end

end A059947.P15850268761517609838

/-!
# A059948: Number of 7-block bicoverings of an n-set.

The programs for A059948, there is no canonical definition to state claims against.
-/

/-! ## A059948.P16419795743763746044

`2*A159966(A094035(n))`
-/

namespace A059948.P16419795743763746044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159966 (A094035 n).toNat

end

end A059948.P16419795743763746044

/-! ## A059948.P4036099803945907281

`A047234(xor(1, A094035(n)))`
-/

namespace A059948.P4036099803945907281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047234 (Int.xor 1 (A094035 n)).toNat

end

end A059948.P4036099803945907281

/-!
# A059950: Number of 9-block bicoverings of an n-set.

The programs for A059950, there is no canonical definition to state claims against.
-/

/-! ## A059950.P7659129099142166903

`A116505(n+1)*A238655(A004114(n))`
-/

namespace A059950.P7659129099142166903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116505 (n + 1) * A238655 (A004114 n).toNat

end

end A059950.P7659129099142166903

/-! ## A059950.P11550412975480158130

`lcm(A117956(n+1), A238655(A004114(n)))`
-/

namespace A059950.P11550412975480158130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117956 (n + 1)) (A238655 (A004114 n).toNat)

end

end A059950.P11550412975480158130

/-!
# A059952: Ordering of a deck of 52 cards after an in-shuffle.

The programs for A059952, there is no canonical definition to state claims against.
-/

/-! ## A059952.P14592688325286719880

`(27*(n+1))%53`
-/

namespace A059952.P14592688325286719880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * (n + 1) % 53

end

end A059952.P14592688325286719880

/-! ## A059952.P10495787229442837929

`a(n-2)+1` with `a(0)=27, a(1)=1`
-/

namespace A059952.P10495787229442837929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [27, 1] fun n a =>
  a (n - 2) + 1

end

end A059952.P10495787229442837929

/-! ## A059952.P9952530578079436292

`∑[1-a(n-1)]` with `a(0)=27`
-/

namespace A059952.P9952530578079436292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [27] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059952.P9952530578079436292

/-! ## A059952.P14722726693230896101

`∑[27-53*n%2]`
-/

namespace A059952.P14722726693230896101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 - ((53 * (n % 2) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059952.P14722726693230896101

/-! ## A059952.P10234207957080010767

`∑[80-106/gcd(2, n)]`
-/

namespace A059952.P10234207957080010767
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  80 - 106 / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059952.P10234207957080010767

/-! ## A059952.P17281142883158998577

`27-(a(n-1)-n)` with `a(0)=27`
-/

namespace A059952.P17281142883158998577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [27] fun n a =>
  27 - (a (n - 1) - (n : ℤ))

end

end A059952.P17281142883158998577

/-! ## A059952.P15584435723499173567

`∑[xor(24, A168330(n+1))]`
-/

namespace A059952.P15584435723499173567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 24 (A168330 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059952.P15584435723499173567

/-! ## A059952.P14805285641698613547

`∑[xor(25, A280193(n+2))]`
-/

namespace A059952.P14805285641698613547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 25 (A280193 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059952.P14805285641698613547

/-! ## A059952.P7576299807095656447

`(A040755(n+2)+n)/2`
-/

namespace A059952.P7576299807095656447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040755 (n + 2) + (n : ℤ) : ℚ) / 2

end

end A059952.P7576299807095656447

/-! ## A059952.P1455395895244162002

`A059953(A014681(n+1))`
-/

namespace A059952.P1455395895244162002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059953 (A014681 (n + 1)).toNat

end

end A059952.P1455395895244162002

/-!
# A059953: Ordering of a deck of 52 cards after an out-shuffle.

The programs for A059953, there is no canonical definition to state claims against.
-/

/-! ## A059953.P11036252476251533147

`or(1, 27*n)%53`
-/

namespace A059953.P11036252476251533147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (27 * n) % 53

end

end A059953.P11036252476251533147

/-! ## A059953.P5695221791338545702

`a(n-2)+1` with `a(0)=1, a(1)=27`
-/

namespace A059953.P5695221791338545702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 27] fun n a =>
  a (n - 2) + 1

end

end A059953.P5695221791338545702

/-! ## A059953.P11539583944809992329

`∑[1-a(n-1)]` with `a(0)=1, a(1)=26`
-/

namespace A059953.P11539583944809992329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 26] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059953.P11539583944809992329

/-! ## A059953.P8821642061127311798

`27-(a(n-1)-n)` with `a(0)=1`
-/

namespace A059953.P8821642061127311798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  27 - (a (n - 1) - (n : ℤ))

end

end A059953.P8821642061127311798

/-! ## A059953.P12164782444173275683

`floor(n/2)+27^(n%2)`
-/

namespace A059953.P12164782444173275683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + (27 ^ (n % 2) : ℤ)

end

end A059953.P12164782444173275683

/-! ## A059953.P17414177589792063116

`floor(n/2)+gcd(27, log2(gcd(2, n)))`
-/

namespace A059953.P17414177589792063116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + (Int.gcd 27 (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ))) : ℤ)

end

end A059953.P17414177589792063116

/-! ## A059953.P1450121427419176167

`∑[27-A040701(n)]`
-/

namespace A059953.P1450121427419176167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 - A040701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059953.P1450121427419176167

/-! ## A059953.P16004889185156073360

`n-A023469(a(n-1))` with `a(0)=1`
-/

namespace A059953.P16004889185156073360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - A023469 (a (n - 1)).toNat

end

end A059953.P16004889185156073360

/-! ## A059953.P8744274511293366654

`(A040701(n+1)+n+1)/2`
-/

namespace A059953.P8744274511293366654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040701 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A059953.P8744274511293366654

/-! ## A059953.P3392045232898563661

`(A040719(n+1)+n-1)/2`
-/

namespace A059953.P3392045232898563661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040719 (n + 1) + ((n : ℤ) - 1) : ℚ) / 2

end

end A059953.P3392045232898563661

/-!
# A059954: Number of 2 X 2 matrices with elements from {0,1,2,...,n} and with Nim-Determinant 1. (The Nim-Determinant of the 2 X 2 matrix [a,b; c,d] is defined to be a*d xor b*c, where * denotes Nim-Multiplication.)

The programs for A059954, there is no canonical definition to state claims against.
-/

/-! ## A059954.P12302851509914684733

`A124754(A266736(n))+A071699(n+1)`
-/

namespace A059954.P12302851509914684733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A266736 n).toNat + A071699 (n + 1)

end

end A059954.P12302851509914684733

/-!
# A059955: a(n) = floor( prime(n)!/lcm(1..prime(n)) ) modulo prime(n).

The programs for A059955, there is no canonical definition to state claims against.
-/

/-! ## A059955.P17544113769303198233

`A065091(n+1)-A255010(n+2)`
-/

namespace A059955.P17544113769303198233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A255010 (n + 2)

end

end A059955.P17544113769303198233

/-! ## A059955.P7603538821661560273

`A000040(n+2)-A255010(n+2)`
-/

namespace A059955.P7603538821661560273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A255010 (n + 2)

end

end A059955.P7603538821661560273

/-! ## A059955.P17451860499293632995

`Δ[A007504(n+1)]-A255010(n+2)`
-/

namespace A059955.P17451860499293632995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A255010 (n + 2)

end

end A059955.P17451860499293632995

/-! ## A059955.P11124776067934363251

`p?[A002181(n+1)]-A255010(n+2)`
-/

namespace A059955.P11124776067934363251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A255010 (n + 2)

end

end A059955.P11124776067934363251

/-! ## A059955.P2864411237175503042

`p?[A004273(n)]-A255010(n+2)`
-/

namespace A059955.P2864411237175503042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A255010 (n + 2)

end

end A059955.P2864411237175503042

/-! ## A059955.P12192839083864564887

`p?[A005408(n)]-A255010(n+2)`
-/

namespace A059955.P12192839083864564887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A255010 (n + 2)

end

end A059955.P12192839083864564887

/-! ## A059955.P438396549189795834

`p?[A093178(n)]-A255010(n+2)`
-/

namespace A059955.P438396549189795834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A255010 (n + 2)

end

end A059955.P438396549189795834

/-! ## A059955.P426564855500108103

`A099796(n+2)`
-/

namespace A059955.P426564855500108103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099796 (n + 2)

end

end A059955.P426564855500108103

/-!
# A059956: Decimal expansion of 6/Pi^2.

The programs for A059956, there is no canonical definition to state claims against.
-/

/-! ## A059956.P7962352026963083165

`9-A229099(n)`
-/

namespace A059956.P7962352026963083165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A229099 n

end

end A059956.P7962352026963083165

/-!
# A059957: Sum of number of distinct prime factors of n and n+1, or number of distinct prime factors of n(n+1) or of lcm(n,n+1).

The programs for A059957, the canonical program `A059957.P9254252331213831727` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059957 has offset 1).

The definition of A059957 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059957.P9254252331213831727

`A001221(n+1)+A001221(n+2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059957

/-- `A001221(n+1)+A001221(n+2)` -/
def P9254252331213831727.Spec : Prop :=
  ∀ n, P9254252331213831727.a n = A059957 (n + 1)

theorem P9254252331213831727.correct : P9254252331213831727.Spec := by
  intro n
  simp only [A059957, Nat.add_sub_cancel]

end A059957

/-! ## A059957.P14557997528171553125

`A001221((n+1)*(n+2))`
-/

namespace A059957.P14557997528171553125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1) * (n + 2))

end

end A059957.P14557997528171553125

namespace A059957

/-- `A001221((n+1)*(n+2))` -/
def P14557997528171553125.Spec : Prop :=
  ∀ n, P14557997528171553125.a n = A059957 (n + 1)

end A059957

/-! ## A059957.P10475913490906712844

`A133872(n)+A069903(n+1)`
-/

namespace A059957.P10475913490906712844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n + A069903 (n + 1)

end

end A059957.P10475913490906712844

namespace A059957

/-- `A133872(n)+A069903(n+1)` -/
def P10475913490906712844.Spec : Prop :=
  ∀ n, P10475913490906712844.a n = A059957 (n + 1)

end A059957

/-! ## A059957.P17709596798501672595

`A252489(n+1)-A391449(n+1)`
-/

namespace A059957.P17709596798501672595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252489 (n + 1) - A391449 (n + 1)

end

end A059957.P17709596798501672595

namespace A059957

/-- `A252489(n+1)-A391449(n+1)` -/
def P17709596798501672595.Spec : Prop :=
  ∀ n, P17709596798501672595.a n = A059957 (n + 1)

end A059957

/-! ## A059957.P17246494178213488611

`A001222(A074816(n+1)*A074816(n+2))`
-/

namespace A059957.P17246494178213488611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A074816 (n + 1) * A074816 (n + 2)).toNat

end

end A059957.P17246494178213488611

namespace A059957

/-- `A001222(A074816(n+1)*A074816(n+2))` -/
def P17246494178213488611.Spec : Prop :=
  ∀ n, P17246494178213488611.a n = A059957 (n + 1)

end A059957

/-! ## A059957.P18431815239515357664

`A001222(A329607(n+1)*A329607(n+2))`
-/

namespace A059957.P18431815239515357664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A329607 (n + 1) * A329607 (n + 2)).toNat

end

end A059957.P18431815239515357664

namespace A059957

/-- `A001222(A329607(n+1)*A329607(n+2))` -/
def P18431815239515357664.Spec : Prop :=
  ∀ n, P18431815239515357664.a n = A059957 (n + 1)

end A059957

/-! ## A059957.P10839004530629722603

`A001222(A007947(n+2))+A001222(∏{p}[n+1, #])`
-/

namespace A059957.P10839004530629722603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 2)).toNat + A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A059957.P10839004530629722603

namespace A059957

/-- `A001222(A007947(n+2))+A001222(∏{p}[n+1, #])` -/
def P10839004530629722603.Spec : Prop :=
  ∀ n, P10839004530629722603.a n = A059957 (n + 1)

end A059957

/-! ## A059957.P12078572477749594314

`log2(A034444(n+1)*A034444(n+2))`
-/

namespace A059957.P12078572477749594314
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A034444 (n + 1) * A034444 (n + 2) : ℝ)

end

end A059957.P12078572477749594314

namespace A059957

/-- `log2(A034444(n+1)*A034444(n+2))` -/
def P12078572477749594314.Spec : Prop :=
  ∀ n, P12078572477749594314.a n = (A059957 (n + 1) : ℝ)

end A059957

/-! ## A059957.P2727905008501476270

`A005087(n+1)+A005087(n+2)+1`
-/

namespace A059957.P2727905008501476270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) + (A005087 (n + 2) + 1)

end

end A059957.P2727905008501476270

namespace A059957

/-- `A005087(n+1)+A005087(n+2)+1` -/
def P2727905008501476270.Spec : Prop :=
  ∀ n, P2727905008501476270.a n = A059957 (n + 1)

end A059957

/-! ## A059957.P9289968096928379614

`A000523(A034444(n+1)*A034444(n+2))`
-/

namespace A059957.P9289968096928379614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A034444 (n + 1) * A034444 (n + 2)).toNat

end

end A059957.P9289968096928379614

namespace A059957

/-- `A000523(A034444(n+1)*A034444(n+2))` -/
def P9289968096928379614.Spec : Prop :=
  ∀ n, P9289968096928379614.a n = A059957 (n + 1)

end A059957

/-! ## A059957.P10174392409844107980

`A001222(A034444(n+1)*A034444(n+2))`
-/

namespace A059957.P10174392409844107980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034444 (n + 1) * A034444 (n + 2)).toNat

end

end A059957.P10174392409844107980

namespace A059957

/-- `A001222(A034444(n+1)*A034444(n+2))` -/
def P10174392409844107980.Spec : Prop :=
  ∀ n, P10174392409844107980.a n = A059957 (n + 1)

end A059957

/-! ## A059957.P11555290726840738258

`A032741(A034444(n+2)*A034444(n+1))`
-/

namespace A059957.P11555290726840738258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A034444 (n + 2) * A034444 (n + 1)).toNat

end

end A059957.P11555290726840738258

namespace A059957

/-- `A032741(A034444(n+2)*A034444(n+1))` -/
def P11555290726840738258.Spec : Prop :=
  ∀ n, P11555290726840738258.a n = A059957 (n + 1)

end A059957

/-! ## A059957.P16699957373050703648

`A000005(A068068(n+1)*A068068(n+2))`
-/

namespace A059957.P16699957373050703648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A068068 (n + 1) * A068068 (n + 2)).toNat

end

end A059957.P16699957373050703648

namespace A059957

/-- `A000005(A068068(n+1)*A068068(n+2))` -/
def P16699957373050703648.Spec : Prop :=
  ∀ n, P16699957373050703648.a n = A059957 (n + 1)

end A059957

/-! ## A059957.P12664816348261791558

`A080791(A034444(n+2)*A034444(n+1))`
-/

namespace A059957.P12664816348261791558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A034444 (n + 2) * A034444 (n + 1)).toNat

end

end A059957.P12664816348261791558

namespace A059957

/-- `A080791(A034444(n+2)*A034444(n+1))` -/
def P12664816348261791558.Spec : Prop :=
  ∀ n, P12664816348261791558.a n = A059957 (n + 1)

end A059957

/-! ## A059957.P18071163678544796805

`A082863(2*n+3)`
-/

namespace A059957.P18071163678544796805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (2 * n + 3)

end

end A059957.P18071163678544796805

namespace A059957

/-- `A082863(2*n+3)` -/
def P18071163678544796805.Spec : Prop :=
  ∀ n, P18071163678544796805.a n = A059957 (n + 1)

end A059957

/-! ## A059957.P8831575220852433386

`∑{p}[∑[n+1], #%2]+1`
-/

namespace A059957.P8831575220852433386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p % 2 + 1

end

end A059957.P8831575220852433386

namespace A059957

/-- `∑{p}[∑[n+1], #%2]+1` -/
def P8831575220852433386.Spec : Prop :=
  ∀ n, (P8831575220852433386.a n : ℤ) = A059957 (n + 1)

end A059957

/-! ## A059957.P4018790701582993474

`∑{p}[∑[n+1], and(1, #)]+1`
-/

namespace A059957.P4018790701582993474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.land 1 p + 1

end

end A059957.P4018790701582993474

namespace A059957

/-- `∑{p}[∑[n+1], and(1, #)]+1` -/
def P4018790701582993474.Spec : Prop :=
  ∀ n, (P4018790701582993474.a n : ℤ) = A059957 (n + 1)

end A059957

/-! ## A059957.P10290797510913344917

`∑{e}[A078636(n+1), #]`
-/

namespace A059957.P10290797510913344917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A059957.P10290797510913344917

namespace A059957

/-- `∑{e}[A078636(n+1), #]` -/
def P10290797510913344917.Spec : Prop :=
  ∀ n, (P10290797510913344917.a n : ℤ) = A059957 (n + 1)

end A059957

/-! ## A059957.P17782481064032313167

`∑{e}[∏{p}[∑[2*(n+1)], #], #]`
-/

namespace A059957.P17782481064032313167
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A059957.P17782481064032313167

namespace A059957

/-- `∑{e}[∏{p}[∑[2*(n+1)], #], #]` -/
def P17782481064032313167.Spec : Prop :=
  ∀ n, (P17782481064032313167.a n : ℤ) = A059957 (n + 1)

end A059957

/-! ## A059957.P2630664533112184200

`∑{p}[(n+1)*(n+2), ceil(1/#)]`
-/

namespace A059957.P2630664533112184200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉

end

end A059957.P2630664533112184200

namespace A059957

/-- `∑{p}[(n+1)*(n+2), ceil(1/#)]` -/
def P2630664533112184200.Spec : Prop :=
  ∀ n, P2630664533112184200.a n = A059957 (n + 1)

end A059957

/-!
# A059958: Smallest number m such that m*(m+1) has at least n distinct prime factors.

The programs for A059958, there is no canonical definition to state claims against.
-/

/-! ## A059958.P2333811735992040642

`A069354(n+1)-1`
-/

namespace A059958.P2333811735992040642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069354 (n + 1) - 1

end

end A059958.P2333811735992040642

/-! ## A059958.P10854951580585066202

`A158388(C(n, 64))+A069354(n+1)`
-/

namespace A059958.P10854951580585066202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (Nat.choose n 64) + A069354 (n + 1)

end

end A059958.P10854951580585066202

/-! ## A059958.P13451173963809366581

`A321804(∑{e}[n, #])+A069354(n+1)`
-/

namespace A059958.P13451173963809366581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + A069354 (n + 1)

end

end A059958.P13451173963809366581

/-! ## A059958.P3582906936322196706

`A172157(Δ[floor(ϕ*n)])+A069354(n+1)`
-/

namespace A059958.P3582906936322196706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172157 (f1 (n + 1) - f1 n).toNat + A069354 (n + 1)

end

end A059958.P3582906936322196706

/-! ## A059958.P4990282747070030546

`A321804(A321804(n)²)+A069354(n+1)`
-/

namespace A059958.P4990282747070030546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A321804 n ^ 2).toNat + A069354 (n + 1)

end

end A059958.P4990282747070030546

/-!
# A059959: Distance of 2^n from its nearest prime neighbor and in case of a tie, choose the smaller.

The programs for A059959, there is no canonical definition to state claims against.
-/

/-! ## A059959.P7507654527783047550

`A000079(n)-A117387(n)`
-/

namespace A059959.P7507654527783047550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A117387 n

end

end A059959.P7507654527783047550

/-! ## A059959.P2555599325612453940

`A000225(n)+1-A117387(n)`
-/

namespace A059959.P2555599325612453940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A117387 n)

end

end A059959.P2555599325612453940

/-! ## A059959.P4504873740847063823

`A006127(n)-(A117387(n)+n)`
-/

namespace A059959.P4504873740847063823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 n - (A117387 n + (n : ℤ))

end

end A059959.P4504873740847063823

/-! ## A059959.P10413588519159365373

`A014210(n)-(A117387(n)+A013597(n))`
-/

namespace A059959.P10413588519159365373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 n - (A117387 n + A013597 n)

end

end A059959.P10413588519159365373

/-! ## A059959.P9616931040363558876

`Δ[A000225(n)]-A117387(n)`
-/

namespace A059959.P9616931040363558876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A117387 n

end

end A059959.P9616931040363558876

/-!
# A059960: Smaller term of a pair of twin primes such that prime factors of their average are only 2 and 3.

The programs for A059960, there is no canonical definition to state claims against.
-/

/-! ## A059960.P4494465141058554040

`A027856(n+2)-1`
-/

namespace A059960.P4494465141058554040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027856 (n + 2) - 1

end

end A059960.P4494465141058554040

/-! ## A059960.P3135802864733355765

`A078883(n+2)`
-/

namespace A059960.P3135802864733355765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078883 (n + 2)

end

end A059960.P3135802864733355765

/-! ## A059960.P17925587409105925987

`A060211(n+1)-2`
-/

namespace A059960.P17925587409105925987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060211 (n + 1) - 2

end

end A059960.P17925587409105925987

/-! ## A059960.P8162607447065865079

`A078884(n+2)-2`
-/

namespace A059960.P8162607447065865079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078884 (n + 2) - 2

end

end A059960.P8162607447065865079

/-! ## A059960.P3106816426294393817

`A033999(2*n+1)+A027856(n+2)`
-/

namespace A059960.P3106816426294393817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A027856 (n + 2)

end

end A059960.P3106816426294393817

/-!
# A059964: a(1) = 1, a(2) = 1, a(n) = a(n-p) + a((n+1)-p), n > 2, where p is the largest prime less than n.

The programs for A059964, there is no canonical definition to state claims against.
-/

/-! ## A059964.P5276645458718250875

`A330241(n+1)+A316767(A008578(n+1))`
-/

namespace A059964.P5276645458718250875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330241 (n + 1) + A316767 (A008578 (n + 1)).toNat

end

end A059964.P5276645458718250875

/-! ## A059964.P8252068359134554881

`A175851(A134478(∑[n]))%A289470(n+3)+1`
-/

namespace A059964.P8252068359134554881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175851 (A134478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) (A289470 (n + 3)) + 1

end

end A059964.P8252068359134554881

/-! ## A059964.P9521946947359726429

`A305300(A028310(n))+A049240(A027660(n))`
-/

namespace A059964.P9521946947359726429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305300 (A028310 n).toNat + A049240 (A027660 n).toNat

end

end A059964.P9521946947359726429

/-! ## A059964.P18244415338084060624

`∑{e}[A005578(n), #]+1`
-/

namespace A059964.P18244415338084060624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A059964.P18244415338084060624

/-! ## A059964.P6720304779512714744

`∑{e}[∑[A328284(n+2)], #]+1`
-/

namespace A059964.P6720304779512714744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A059964.P6720304779512714744

/-!
# A059966: a(n) = (1/n) * Sum_{ d divides n } mu(n/d) * (2^d - 1).

The programs for A059966, the canonical program `A059966.P5188141675617584754` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059966 has offset 1).

The definition of A059966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059966.P219797577069964595

`∑{d}[n+1, A318731(#)]`
-/

namespace A059966.P219797577069964595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318731 d

end

end A059966.P219797577069964595

namespace A059966

/-- `∑{d}[n+1, A318731(#)]` -/
def P219797577069964595.Spec : Prop :=
  ∀ n, P219797577069964595.a n = A059966 (n + 1)

end A059966

/-! ## A059966.P3108949660018204935

`A001037(ceil(abs(sin(n)))+n)`
-/

namespace A059966.P3108949660018204935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (⌈|Real.sin (n : ℝ)|⌉ + (n : ℤ)).toNat

end

end A059966.P3108949660018204935

namespace A059966

/-- `A001037(ceil(abs(sin(n)))+n)` -/
def P3108949660018204935.Spec : Prop :=
  ∀ n, P3108949660018204935.a n = A059966 (n + 1)

end A059966

/-! ## A059966.P5188141675617584754

`A001037((n+1)%(2*n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A059966

/-- `A001037((n+1)%(2*n+1))` -/
def P5188141675617584754.Spec : Prop :=
  ∀ n, P5188141675617584754.a n = A059966 (n + 1)

theorem P5188141675617584754.correct : P5188141675617584754.Spec := by
  intro n
  simp only [A059966, Nat.add_sub_cancel]

end A059966

/-! ## A059966.P1341207986119768273

`A001037(floor(2*n/(n+1))+n)`
-/

namespace A059966.P1341207986119768273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (⌊(2 * n : ℚ) / (n + 1 : ℚ)⌋ + (n : ℤ)).toNat

end

end A059966.P1341207986119768273

namespace A059966

/-- `A001037(floor(2*n/(n+1))+n)` -/
def P1341207986119768273.Spec : Prop :=
  ∀ n, P1341207986119768273.a n = A059966 (n + 1)

end A059966

/-! ## A059966.P17369406935884448382

`A065491(n)+A060280(n+1)`
-/

namespace A059966.P17369406935884448382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065491 n + A060280 (n + 1)

end

end A059966.P17369406935884448382

namespace A059966

/-- `A065491(n)+A060280(n+1)` -/
def P17369406935884448382.Spec : Prop :=
  ∀ n, P17369406935884448382.a n = A059966 (n + 1)

end A059966

/-! ## A059966.P7406524446418770299

`A001037(n+1)-A000007(n)`
-/

namespace A059966.P7406524446418770299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) - A000007 n

end

end A059966.P7406524446418770299

namespace A059966

/-- `A001037(n+1)-A000007(n)` -/
def P7406524446418770299.Spec : Prop :=
  ∀ n, P7406524446418770299.a n = A059966 (n + 1)

end A059966

/-! ## A059966.P2919381348139550573

`A060477(n+1)-A000038(n)`
-/

namespace A059966.P2919381348139550573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060477 (n + 1) - A000038 n

end

end A059966.P2919381348139550573

namespace A059966

/-- `A060477(n+1)-A000038(n)` -/
def P2919381348139550573.Spec : Prop :=
  ∀ n, P2919381348139550573.a n = A059966 (n + 1)

end A059966

/-! ## A059966.P18413205309794999645

`and(A060477(n+1), A260196(n))`
-/

namespace A059966.P18413205309794999645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060477 (n + 1)) (A260196 n)

end

end A059966.P18413205309794999645

namespace A059966

/-- `and(A060477(n+1), A260196(n))` -/
def P18413205309794999645.Spec : Prop :=
  ∀ n, P18413205309794999645.a n = A059966 (n + 1)

end A059966

/-! ## A059966.P9418646325181036071

`A056303(n+1)+A051841(n+1)`
-/

namespace A059966.P9418646325181036071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056303 (n + 1) + A051841 (n + 1)

end

end A059966.P9418646325181036071

namespace A059966

/-- `A056303(n+1)+A051841(n+1)` -/
def P9418646325181036071.Spec : Prop :=
  ∀ n, P9418646325181036071.a n = A059966 (n + 1)

end A059966

/-! ## A059966.P6309401638443453994

`A329141(n+1)+A167934(n+1)`
-/

namespace A059966.P6309401638443453994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329141 (n + 1) + A167934 (n + 1)

end

end A059966.P6309401638443453994

namespace A059966

/-- `A329141(n+1)+A167934(n+1)` -/
def P6309401638443453994.Spec : Prop :=
  ∀ n, P6309401638443453994.a n = A059966 (n + 1)

end A059966

/-! ## A059966.P15708852379023027146

`A008965(n+1)-A298971(n+1)`
-/

namespace A059966.P15708852379023027146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) - A298971 (n + 1)

end

end A059966.P15708852379023027146

namespace A059966

/-- `A008965(n+1)-A298971(n+1)` -/
def P15708852379023027146.Spec : Prop :=
  ∀ n, P15708852379023027146.a n = A059966 (n + 1)

end A059966

/-! ## A059966.P7345560240753544914

`A001037(n+1)-A036987(2*n)`
-/

namespace A059966.P7345560240753544914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) - A036987 (2 * n)

end

end A059966.P7345560240753544914

namespace A059966

/-- `A001037(n+1)-A036987(2*n)` -/
def P7345560240753544914.Spec : Prop :=
  ∀ n, P7345560240753544914.a n = A059966 (n + 1)

end A059966

/-! ## A059966.P17072566689653223984

`gcd(A033322(n+1), A060477(n+1))`
-/

namespace A059966.P17072566689653223984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033322 (n + 1)) (A060477 (n + 1))

end

end A059966.P17072566689653223984

namespace A059966

/-- `gcd(A033322(n+1), A060477(n+1))` -/
def P17072566689653223984.Spec : Prop :=
  ∀ n, (P17072566689653223984.a n : ℤ) = A059966 (n + 1)

end A059966

/-! ## A059966.P9725537721251073938

`and(A060477(n+1), A153881(n+1))`
-/

namespace A059966.P9725537721251073938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060477 (n + 1)) (A153881 (n + 1))

end

end A059966.P9725537721251073938

namespace A059966

/-- `and(A060477(n+1), A153881(n+1))` -/
def P9725537721251073938.Spec : Prop :=
  ∀ n, P9725537721251073938.a n = A059966 (n + 1)

end A059966

/-! ## A059966.P1054232373758365094

`A001037(n+1)-A010051(2*(n+1))`
-/

namespace A059966.P1054232373758365094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) - A010051 (2 * (n + 1))

end

end A059966.P1054232373758365094

namespace A059966

/-- `A001037(n+1)-A010051(2*(n+1))` -/
def P1054232373758365094.Spec : Prop :=
  ∀ n, P1054232373758365094.a n = A059966 (n + 1)

end A059966

/-! ## A059966.P14544155609897611926

`A001037(n+1)-A049084(2*(n+1))`
-/

namespace A059966.P14544155609897611926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) - A049084 (2 * (n + 1))

end

end A059966.P14544155609897611926

namespace A059966

/-- `A001037(n+1)-A049084(2*(n+1))` -/
def P14544155609897611926.Spec : Prop :=
  ∀ n, P14544155609897611926.a n = A059966 (n + 1)

end A059966

/-! ## A059966.P1283979960244978525

`A001037(n+1)/(A254667(n+1)-n)`
-/

namespace A059966.P1283979960244978525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001037 (n + 1) : ℚ) / (A254667 (n + 1) - (n : ℤ) : ℚ)

end

end A059966.P1283979960244978525

namespace A059966

/-- `A001037(n+1)/(A254667(n+1)-n)` -/
def P1283979960244978525.Spec : Prop :=
  ∀ n, P1283979960244978525.a n = (A059966 (n + 1) : ℚ)

end A059966

/-! ## A059966.P12509986756526772938

`A001037(n+1)/(A233583(n+2)-n)`
-/

namespace A059966.P12509986756526772938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001037 (n + 1) : ℚ) / (A233583 (n + 2) - (n : ℤ) : ℚ)

end

end A059966.P12509986756526772938

namespace A059966

/-- `A001037(n+1)/(A233583(n+2)-n)` -/
def P12509986756526772938.Spec : Prop :=
  ∀ n, P12509986756526772938.a n = (A059966 (n + 1) : ℚ)

end A059966

/-! ## A059966.P7735066309692826609

`A001037(n+1)-val(A000040(2*n+1), 2)`
-/

namespace A059966.P7735066309692826609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 1) - (SequenceMachineLib.valuation (A000040 (2 * n + 1)).toNat 2 : ℤ)

end

end A059966.P7735066309692826609

namespace A059966

/-- `A001037(n+1)-val(A000040(2*n+1), 2)` -/
def P7735066309692826609.Spec : Prop :=
  ∀ n, P7735066309692826609.a n = A059966 (n + 1)

end A059966

/-! ## A059966.P13677092088965310102

`∑{d}[n+1, A008683(#)*A008965((n+1)/#)]`
-/

namespace A059966.P13677092088965310102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A008965 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059966.P13677092088965310102

namespace A059966

/-- `∑{d}[n+1, A008683(#)*A008965((n+1)/#)]` -/
def P13677092088965310102.Spec : Prop :=
  ∀ n, P13677092088965310102.a n = A059966 (n + 1)

end A059966

/-!
# A059967: Number of 9-ary trees.

The programs for A059967, there is no canonical definition to state claims against.
-/

/-! ## A059967.P13753193959354762234

`A143554(2*n)`
-/

namespace A059967.P13753193959354762234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143554 (2 * n)

end

end A059967.P13753193959354762234

/-! ## A059967.P10360470487152691140

`A169958(n)/A017077(n)`
-/

namespace A059967.P10360470487152691140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169958 n : ℚ) / (A017077 n : ℚ)

end

end A059967.P10360470487152691140

/-! ## A059967.P12313715082838622891

`A169958(n)/A005408(A008586(n))`
-/

namespace A059967.P12313715082838622891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169958 n : ℚ) / (A005408 (A008586 n).toNat : ℚ)

end

end A059967.P12313715082838622891

/-! ## A059967.P10899414422412617898

`A070914(eq[8, A025581(n)])`
-/

namespace A059967.P10899414422412617898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059967.P10899414422412617898

/-! ## A059967.P15836066874030039297

`A070914(eq[9, A004736(n+1)])`
-/

namespace A059967.P15836066874030039297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059967.P15836066874030039297

/-! ## A059967.P14609977019933410716

`C(A017173(n), n)/A017173(n)`
-/

namespace A059967.P14609977019933410716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A017173 n).toNat n : ℚ) / (A017173 n : ℚ)

end

end A059967.P14609977019933410716

/-! ## A059967.P18013455257256880248

`A070914(Δ[A055999(n+2)+A023551(n+3)])`
-/

namespace A059967.P18013455257256880248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (n + 2) + A023551 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (f1 (n + 1) - f1 n).toNat

end

end A059967.P18013455257256880248

/-!
# A059968: Number of 10-ary trees.

The programs for A059968, there is no canonical definition to state claims against.
-/

/-! ## A059968.P10152446947995152959

`A169959(n)/A017173(n)`
-/

namespace A059968.P10152446947995152959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169959 n : ℚ) / (A017173 n : ℚ)

end

end A059968.P10152446947995152959

/-! ## A059968.P13345487059493877085

`A169959(n)/Δ[A051682(n)]`
-/

namespace A059968.P13345487059493877085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169959 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A059968.P13345487059493877085

/-! ## A059968.P4844118037124096147

`A169959(n)/A001651(A016921(n))`
-/

namespace A059968.P4844118037124096147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169959 n : ℚ) / (A001651 (A016921 n).toNat : ℚ)

end

end A059968.P4844118037124096147

/-! ## A059968.P10466105343577799298

`A070914(eq[9, A025581(n)])`
-/

namespace A059968.P10466105343577799298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059968.P10466105343577799298

/-! ## A059968.P15679046630837931205

`A070914(eq[19, A099375(n)])`
-/

namespace A059968.P15679046630837931205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059968.P15679046630837931205

/-! ## A059968.P14276021671822860045

`A070914(eq[10, A004736(n+1)])`
-/

namespace A059968.P14276021671822860045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059968.P14276021671822860045

/-! ## A059968.P18049286583736106034

`C(A017281(n), n)/A017281(n)`
-/

namespace A059968.P18049286583736106034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A017281 n).toNat n : ℚ) / (A017281 n : ℚ)

end

end A059968.P18049286583736106034

/-! ## A059968.P2550263161531297986

`C(A008592(n)+1, n)/(A008592(n)+1)`
-/

namespace A059968.P2550263161531297986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008592 n + 1).toNat n : ℚ) / (A008592 n + 1 : ℚ)

end

end A059968.P2550263161531297986

/-! ## A059968.P7303690166984411403

`C(A016861(2*n), n)/A016861(2*n)`
-/

namespace A059968.P7303690166984411403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A016861 (2 * n)).toNat n : ℚ) / (A016861 (2 * n) : ℚ)

end

end A059968.P7303690166984411403

/-!
# A059971: n^n using Nim multiplication.

The programs for A059971, there is no canonical definition to state claims against.
-/

/-! ## A059971.P14039092728926428183

`A335162(∑[4*n])`
-/

namespace A059971.P14039092728926428183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059971.P14039092728926428183

/-! ## A059971.P17934864059702940320

`and(-1, A335162(A046092(n)))`
-/

namespace A059971.P17934864059702940320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A335162 (A046092 n).toNat)

end

end A059971.P17934864059702940320

/-! ## A059971.P2334114688962208547

`or(char[1], A335162(A106232(n+1)))`
-/

namespace A059971.P2334114688962208547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A335162 (A106232 (n + 1)).toNat)

end

end A059971.P2334114688962208547

/-! ## A059971.P12571468318143524477

`A000027(A335162(A106232(n+1)))`
-/

namespace A059971.P12571468318143524477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A335162 (A106232 (n + 1)).toNat).toNat

end

end A059971.P12571468318143524477

/-! ## A059971.P11004911293354719987

`lcm(A020985(n), A335162(A046092(n)))`
-/

namespace A059971.P11004911293354719987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A335162 (A046092 n).toNat)

end

end A059971.P11004911293354719987

/-! ## A059971.P11032724787613121630

`∑{d}[A335162(A046092(n)), A000010(#)]`
-/

namespace A059971.P11032724787613121630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A059971.P11032724787613121630

/-! ## A059971.P412878134819892389

`A335162(A046092(n))%A007918(n)²`
-/

namespace A059971.P412878134819892389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335162 (A046092 n).toNat) (A007918 n ^ 2)

end

end A059971.P412878134819892389

/-! ## A059971.P6802011444400286468

`A335162(A046092(n))+A000007(n+1)`
-/

namespace A059971.P6802011444400286468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A046092 n).toNat + A000007 (n + 1)

end

end A059971.P6802011444400286468

/-! ## A059971.P2601712762603774521

`A335162(A106232(n+1))%A022367(n)`
-/

namespace A059971.P2601712762603774521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335162 (A106232 (n + 1)).toNat) (A022367 n)

end

end A059971.P2601712762603774521

/-! ## A059971.P18245893477803180150

`gcd(A130706(n), A335162(A106232(n+1)))`
-/

namespace A059971.P18245893477803180150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A335162 (A106232 (n + 1)).toNat)

end

end A059971.P18245893477803180150

/-! ## A059971.P8590559337587830106

`A008619(C(n, n²))*A335162(A046092(n))`
-/

namespace A059971.P8590559337587830106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Nat.choose n (n ^ 2)) * A335162 (A046092 n).toNat

end

end A059971.P8590559337587830106

/-! ## A059971.P6703813718868825010

`A034839(C(n, n²))*A335162(A046092(n))`
-/

namespace A059971.P6703813718868825010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 (Nat.choose n (n ^ 2)) * A335162 (A046092 n).toNat

end

end A059971.P6703813718868825010

/-! ## A059971.P12441432669461847320

`A335162(A046092(n))^A008795(C(n, n²))`
-/

namespace A059971.P12441432669461847320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335162 (A046092 n).toNat : ℚ) ^ (A008795 (Nat.choose n (n ^ 2)) : ℤ)

end

end A059971.P12441432669461847320

/-! ## A059971.P13794391000219379898

`A008836(n+1)*A008836(n+1)*A335162(A106232(n+1))`
-/

namespace A059971.P13794391000219379898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A008836 (n + 1) * A335162 (A106232 (n + 1)).toNat

end

end A059971.P13794391000219379898

/-!
# A059973: Expansion of x*(1 + x - 2*x^2) / ( 1 - 4*x^2 - x^4).

The programs for A059973, the canonical program `A059973.P15387619602472741487` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059973 has offset 0).

The definition of A059973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2-2x^3)/(1-4x^2-x^4))` (program `A059973.P15387619602472741487`, by `A059973.P15387619602472741487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059973.P15387619602472741487

`ogf((x+x^2-2x^3)/(1-4x^2-x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059973

/-- `ogf((x+x^2-2x^3)/(1-4x^2-x^4))` -/
def P15387619602472741487.Spec : Prop :=
  ∀ n, P15387619602472741487.a n = A059973 n

theorem P15387619602472741487.correct : P15387619602472741487.Spec := by
  intro n
  simp only [A059973]

end A059973

/-! ## A059973.P8742308346559198389

`4*a(n-2)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A059973.P8742308346559198389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  4 * a (n - 2) + a (n - 4)

end

end A059973.P8742308346559198389

namespace A059973

/-- `4*a(n-2)+a(n-4)` -/
def P8742308346559198389.Spec : Prop :=
  ∀ n, (P8742308346559198389.a n : ℤ) = A059973 n

end A059973

/-! ## A059973.P3358790325002431490

`∑[A117647(n-2%(n+1))]`
-/

namespace A059973.P3358790325002431490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117647 (n - 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059973.P3358790325002431490

namespace A059973

/-- `∑[A117647(n-2%(n+1))]` -/
def P3358790325002431490.Spec : Prop :=
  ∀ n, P3358790325002431490.a n = A059973 n

end A059973

/-! ## A059973.P16344460669296436972

`Δ[A000034(n)*A001076(A004526(n))]`
-/

namespace A059973.P16344460669296436972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A001076 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059973.P16344460669296436972

namespace A059973

/-- `Δ[A000034(n)*A001076(A004526(n))]` -/
def P16344460669296436972.Spec : Prop :=
  ∀ n, P16344460669296436972.a n = A059973 n

end A059973

/-! ## A059973.P1042970512103978855

`∑[A000045(A000217(n)%A267459(n))]`
-/

namespace A059973.P1042970512103978855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A000217 n) (A267459 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059973.P1042970512103978855

namespace A059973

/-- `∑[A000045(A000217(n)%A267459(n))]` -/
def P1042970512103978855.Spec : Prop :=
  ∀ n, P1042970512103978855.a n = A059973 n

end A059973

/-! ## A059973.P270671692971589268

`∑[A000045(A179207(n+1)%A133263(n))]`
-/

namespace A059973.P270671692971589268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A179207 (n + 1)) (A133263 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059973.P270671692971589268

namespace A059973

/-- `∑[A000045(A179207(n+1)%A133263(n))]` -/
def P270671692971589268.Spec : Prop :=
  ∀ n, P270671692971589268.a n = A059973 n

end A059973

/-! ## A059973.P11260121785835072184

`A302126(A047225(n+1))/2`
-/

namespace A059973.P11260121785835072184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302126 (A047225 (n + 1)).toNat : ℚ) / 2

end

end A059973.P11260121785835072184

namespace A059973

/-- `A302126(A047225(n+1))/2` -/
def P11260121785835072184.Spec : Prop :=
  ∀ n, P11260121785835072184.a n = (A059973 n : ℚ)

end A059973

/-! ## A059973.P1541602098243469344

`∑[A214927(3*n+1)-A103609(3*n+1)]`
-/

namespace A059973.P1541602098243469344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214927 (3 * n + 1) - A103609 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059973.P1541602098243469344

namespace A059973

/-- `∑[A214927(3*n+1)-A103609(3*n+1)]` -/
def P1541602098243469344.Spec : Prop :=
  ∀ n, P1541602098243469344.a n = A059973 n

end A059973

/-!
# A059974: a(n)=a(p)+a(q) where p and q are the two primes less than n and closest to n; with a(1)=1, a(2)=1, a(3) = 1.

The programs for A059974, the canonical program `A059974.P9604430135129621907` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059974 has offset 1).

The definition of A059974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3413 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059974.P9604430135129621907

`A000045(∑[C(∑{p}[n, #], n)])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059974

/-- `A000045(∑[C(∑{p}[n, #], n)])` -/
def P9604430135129621907.Spec : Prop :=
  ∀ n, P9604430135129621907.a n = A059974 (n + 1)

theorem P9604430135129621907.correct : P9604430135129621907.Spec := by
  intro n
  simp only [A059974, Nat.add_sub_cancel]

end A059974

/-! ## A059974.P7275861886805733393

`A000045(∑[char[record[∑{p}[n, #]]]])`
-/

namespace A059974.P7275861886805733393
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059974.P7275861886805733393

namespace A059974

/-- `A000045(∑[char[record[∑{p}[n, #]]]])` -/
def P7275861886805733393.Spec : Prop :=
  ∀ n, P7275861886805733393.a n = A059974 (n + 1)

end A059974

/-! ## A059974.P16869334935909322295

`A000045(∑[char[p?[2*n+1]]]+2)`
-/

namespace A059974.P16869334935909322295
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A059974.P16869334935909322295

namespace A059974

/-- `A000045(∑[char[p?[2*n+1]]]+2)` -/
def P16869334935909322295.Spec : Prop :=
  ∀ n, P16869334935909322295.a n = A059974 (n + 1)

end A059974

/-! ## A059974.P5021806106581261930

`A000045(A230980(n)+1)`
-/

namespace A059974.P5021806106581261930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A230980 n + 1).toNat

end

end A059974.P5021806106581261930

namespace A059974

/-- `A000045(A230980(n)+1)` -/
def P5021806106581261930.Spec : Prop :=
  ∀ n, P5021806106581261930.a n = A059974 (n + 1)

end A059974

/-! ## A059974.P13574794931793859359

`A120250(A136548(n+1))`
-/

namespace A059974.P13574794931793859359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120250 (A136548 (n + 1)).toNat

end

end A059974.P13574794931793859359

namespace A059974

/-- `A120250(A136548(n+1))` -/
def P13574794931793859359.Spec : Prop :=
  ∀ n, P13574794931793859359.a n = A059974 (n + 1)

end A059974

/-! ## A059974.P10687683347664738643

`A212804(A230980(n)+2)`
-/

namespace A059974.P10687683347664738643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A230980 n + 2).toNat

end

end A059974.P10687683347664738643

namespace A059974

/-- `A212804(A230980(n)+2)` -/
def P10687683347664738643.Spec : Prop :=
  ∀ n, P10687683347664738643.a n = A059974 (n + 1)

end A059974

/-! ## A059974.P7491859393644816155

`A000071(A230980(n)+1)+1`
-/

namespace A059974.P7491859393644816155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A230980 n + 1).toNat + 1

end

end A059974.P7491859393644816155

namespace A059974

/-- `A000071(A230980(n)+1)+1` -/
def P7491859393644816155.Spec : Prop :=
  ∀ n, P7491859393644816155.a n = A059974 (n + 1)

end A059974

/-! ## A059974.P2108938293567683242

`A000045(∑[char[comp[A018252(n+1)]]])`
-/

namespace A059974.P2108938293567683242
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059974.P2108938293567683242

namespace A059974

/-- `A000045(∑[char[comp[A018252(n+1)]]])` -/
def P2108938293567683242.Spec : Prop :=
  ∀ n, P2108938293567683242.a n = A059974 (n + 1)

end A059974

/-! ## A059974.P12589094162488287329

`A000045(∑[char[A000040(n+1)]]+1)`
-/

namespace A059974.P12589094162488287329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A059974.P12589094162488287329

namespace A059974

/-- `A000045(∑[char[A000040(n+1)]]+1)` -/
def P12589094162488287329.Spec : Prop :=
  ∀ n, P12589094162488287329.a n = A059974 (n + 1)

end A059974

/-! ## A059974.P11475193452099171217

`A000045(∑[char[A006530(n+2)]]+1)`
-/

namespace A059974.P11475193452099171217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A059974.P11475193452099171217

namespace A059974

/-- `A000045(∑[char[A006530(n+2)]]+1)` -/
def P11475193452099171217.Spec : Prop :=
  ∀ n, P11475193452099171217.a n = A059974 (n + 1)

end A059974

/-! ## A059974.P1062869701610647450

`A000045(∑[1-char[A018252(n+1)]])`
-/

namespace A059974.P1062869701610647450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059974.P1062869701610647450

namespace A059974

/-- `A000045(∑[1-char[A018252(n+1)]])` -/
def P1062869701610647450.Spec : Prop :=
  ∀ n, P1062869701610647450.a n = A059974 (n + 1)

end A059974

/-! ## A059974.P3505448756439201398

`A000045(∑[char[A020639(n+2)]]+1)`
-/

namespace A059974.P3505448756439201398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A059974.P3505448756439201398

namespace A059974

/-- `A000045(∑[char[A020639(n+2)]]+1)` -/
def P3505448756439201398.Spec : Prop :=
  ∀ n, P3505448756439201398.a n = A059974 (n + 1)

end A059974

/-! ## A059974.P768588641695474673

`A163227(2*A230980(n)+1)`
-/

namespace A059974.P768588641695474673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (2 * A230980 n + 1).toNat

end

end A059974.P768588641695474673

namespace A059974

/-- `A163227(2*A230980(n)+1)` -/
def P768588641695474673.Spec : Prop :=
  ∀ n, P768588641695474673.a n = A059974 (n + 1)

end A059974

/-! ## A059974.P9539741711237235155

`A163227(A230980(n)+A230980(n)+1)`
-/

namespace A059974.P9539741711237235155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (A230980 n + (A230980 n + 1)).toNat

end

end A059974.P9539741711237235155

namespace A059974

/-- `A163227(A230980(n)+A230980(n)+1)` -/
def P9539741711237235155.Spec : Prop :=
  ∀ n, P9539741711237235155.a n = A059974 (n + 1)

end A059974

/-! ## A059974.P2177723345548076921

`A000045(A230774((n+1)²))`
-/

namespace A059974.P2177723345548076921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A230774 ((n + 1) ^ 2)).toNat

end

end A059974.P2177723345548076921

namespace A059974

/-- `A000045(A230774((n+1)²))` -/
def P2177723345548076921.Spec : Prop :=
  ∀ n, P2177723345548076921.a n = A059974 (n + 1)

end A059974

/-!
# A059975: For n > 1, a(n) is the least number of prime factors (counted with multiplicity) of any integer with n divisors; fully additive with a(p) = p-1.

The programs for A059975, the canonical program `A059975.P3594971538098503590` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059975 has offset 1).

The definition of A059975 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A001414, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059975.P3893818643442135966

`A275314(n+1)-1`
-/

namespace A059975.P3893818643442135966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275314 (n + 1) - 1

end

end A059975.P3893818643442135966

namespace A059975

/-- `A275314(n+1)-1` -/
def P3893818643442135966.Spec : Prop :=
  ∀ n, P3893818643442135966.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P18421009011421981206

`n+1-A341865(n+1)`
-/

namespace A059975.P18421009011421981206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A341865 (n + 1)

end

end A059975.P18421009011421981206

namespace A059975

/-- `n+1-A341865(n+1)` -/
def P18421009011421981206.Spec : Prop :=
  ∀ n, P18421009011421981206.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P3594971538098503590

`A001414(n+1)-A001222(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A059975

/-- `A001414(n+1)-A001222(n+1)` -/
def P3594971538098503590.Spec : Prop :=
  ∀ n, P3594971538098503590.a n = A059975 (n + 1)

theorem P3594971538098503590.correct : P3594971538098503590.Spec := by
  intro n
  simp only [A059975, Nat.add_sub_cancel]

end A059975

/-! ## A059975.P12971232438637066858

`A397106(n+1)-(n+2)`
-/

namespace A059975.P12971232438637066858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397106 (n + 1) - (n + 2 : ℤ)

end

end A059975.P12971232438637066858

namespace A059975

/-- `A397106(n+1)-(n+2)` -/
def P12971232438637066858.Spec : Prop :=
  ∀ n, P12971232438637066858.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P3168394151527742216

`A023443(A275314(n+1))`
-/

namespace A059975.P3168394151527742216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A275314 (n + 1)).toNat

end

end A059975.P3168394151527742216

namespace A059975

/-- `A023443(A275314(n+1))` -/
def P3168394151527742216.Spec : Prop :=
  ∀ n, P3168394151527742216.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P14069063456696970572

`A331415(n+1)+A318995(n+1)`
-/

namespace A059975.P14069063456696970572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331415 (n + 1) + A318995 (n + 1)

end

end A059975.P14069063456696970572

namespace A059975

/-- `A331415(n+1)+A318995(n+1)` -/
def P14069063456696970572.Spec : Prop :=
  ∀ n, P14069063456696970572.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P15987472985062320002

`A036288(n+1)-A073093(n+1)`
-/

namespace A059975.P15987472985062320002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - A073093 (n + 1)

end

end A059975.P15987472985062320002

namespace A059975

/-- `A036288(n+1)-A073093(n+1)` -/
def P15987472985062320002.Spec : Prop :=
  ∀ n, P15987472985062320002.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P8456499257376933997

`A075254(n+1)-A064800(n+1)`
-/

namespace A059975.P8456499257376933997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) - A064800 (n + 1)

end

end A059975.P8456499257376933997

namespace A059975

/-- `A075254(n+1)-A064800(n+1)` -/
def P8456499257376933997.Spec : Prop :=
  ∀ n, P8456499257376933997.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P4045033780255285510

`A140255(n+1)-A000005(n+1)`
-/

namespace A059975.P4045033780255285510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140255 (n + 1) - A000005 (n + 1)

end

end A059975.P4045033780255285510

namespace A059975

/-- `A140255(n+1)-A000005(n+1)` -/
def P4045033780255285510.Spec : Prop :=
  ∀ n, P4045033780255285510.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P4344319143159008482

`A069345(n+1)-A075255(n+1)`
-/

namespace A059975.P4344319143159008482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (n + 1) - A075255 (n + 1)

end

end A059975.P4344319143159008482

namespace A059975

/-- `A069345(n+1)-A075255(n+1)` -/
def P4344319143159008482.Spec : Prop :=
  ∀ n, P4344319143159008482.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P3173039796417668239

`A397106(n+1)%A020725(n+1)`
-/

namespace A059975.P3173039796417668239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397106 (n + 1)) (A020725 (n + 1))

end

end A059975.P3173039796417668239

namespace A059975

/-- `A397106(n+1)%A020725(n+1)` -/
def P3173039796417668239.Spec : Prop :=
  ∀ n, P3173039796417668239.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P1224287438183086015

`A036288(n+1)-(A001222(n+1)+1)`
-/

namespace A059975.P1224287438183086015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - (A001222 (n + 1) + 1)

end

end A059975.P1224287438183086015

namespace A059975

/-- `A036288(n+1)-(A001222(n+1)+1)` -/
def P1224287438183086015.Spec : Prop :=
  ∀ n, P1224287438183086015.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P17150808149851098032

`A100006(n+1)-(A073093(n+1)+1)`
-/

namespace A059975.P17150808149851098032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100006 (n + 1) - (A073093 (n + 1) + 1)

end

end A059975.P17150808149851098032

namespace A059975

/-- `A100006(n+1)-(A073093(n+1)+1)` -/
def P17150808149851098032.Spec : Prop :=
  ∀ n, P17150808149851098032.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P6284372567639313884

`A075254(n+1)-(A222312(n+1)+1)`
-/

namespace A059975.P6284372567639313884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) - (A222312 (n + 1) + 1)

end

end A059975.P6284372567639313884

namespace A059975

/-- `A075254(n+1)-(A222312(n+1)+1)` -/
def P6284372567639313884.Spec : Prop :=
  ∀ n, P6284372567639313884.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P9665081622776892891

`∑{d}[n+1, A130054(#)*A390608((n+1)/#)]`
-/

namespace A059975.P9665081622776892891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A390608 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059975.P9665081622776892891

namespace A059975

/-- `∑{d}[n+1, A130054(#)*A390608((n+1)/#)]` -/
def P9665081622776892891.Spec : Prop :=
  ∀ n, P9665081622776892891.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P8144041076292266805

`A025281(n+1)-(A025281(n)+A001222(n+1))`
-/

namespace A059975.P8144041076292266805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 (n + 1) - (A025281 n + A001222 (n + 1))

end

end A059975.P8144041076292266805

namespace A059975

/-- `A025281(n+1)-(A025281(n)+A001222(n+1))` -/
def P8144041076292266805.Spec : Prop :=
  ∀ n, P8144041076292266805.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P2147744693775107266

`A008475(n+1)-(A078771(n+1)+A001222(n+1))`
-/

namespace A059975.P2147744693775107266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) - (A078771 (n + 1) + A001222 (n + 1))

end

end A059975.P2147744693775107266

namespace A059975

/-- `A008475(n+1)-(A078771(n+1)+A001222(n+1))` -/
def P2147744693775107266.Spec : Prop :=
  ∀ n, P2147744693775107266.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P1303357269229190607

`A063655(n+1)-(A092510(n+1)+A001222(n+1))`
-/

namespace A059975.P1303357269229190607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) - (A092510 (n + 1) + A001222 (n + 1))

end

end A059975.P1303357269229190607

namespace A059975

/-- `A063655(n+1)-(A092510(n+1)+A001222(n+1))` -/
def P1303357269229190607.Spec : Prop :=
  ∀ n, P1303357269229190607.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P1773964605807933767

`A003963(n+1)-(A380344(n+1)+A001222(n+1))`
-/

namespace A059975.P1773964605807933767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - (A380344 (n + 1) + A001222 (n + 1))

end

end A059975.P1773964605807933767

namespace A059975

/-- `A003963(n+1)-(A380344(n+1)+A001222(n+1))` -/
def P1773964605807933767.Spec : Prop :=
  ∀ n, P1773964605807933767.a n = A059975 (n + 1)

end A059975

/-! ## A059975.P11115090388185022173

`A001414(n+1)-(A373976(n+1)+A342956(n+1))`
-/

namespace A059975.P11115090388185022173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - (A373976 (n + 1) + A342956 (n + 1))

end

end A059975.P11115090388185022173

namespace A059975

/-- `A001414(n+1)-(A373976(n+1)+A342956(n+1))` -/
def P11115090388185022173.Spec : Prop :=
  ∀ n, P11115090388185022173.a n = A059975 (n + 1)

end A059975

/-!
# A059977: a(n) = binomial(n+2, 2)^4.

The programs for A059977, the canonical program `A059977.P13187242614561312812` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059977 has offset 0).

The definition of A059977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059977.P13187242614561312812

`((n+1)*(n+2)/2)^4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059977

/-- `((n+1)*(n+2)/2)^4` -/
def P13187242614561312812.Spec : Prop :=
  ∀ n, P13187242614561312812.a n = (A059977 n : ℚ)

end A059977

/-! ## A059977.P1464611662534924393

`(A000539(n+1)+A000541(n+1))/2`
-/

namespace A059977.P1464611662534924393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000539 (n + 1) + A000541 (n + 1) : ℚ) / 2

end

end A059977.P1464611662534924393

namespace A059977

/-- `(A000539(n+1)+A000541(n+1))/2` -/
def P1464611662534924393.Spec : Prop :=
  ∀ n, P1464611662534924393.a n = (A059977 n : ℚ)

end A059977

/-! ## A059977.P8755717892698260949

`C(n+2, 2)²²`
-/

namespace A059977.P8755717892698260949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 ^ 2) ^ 2

end

end A059977.P8755717892698260949

namespace A059977

/-- `C(n+2, 2)²²` -/
def P8755717892698260949.Spec : Prop :=
  ∀ n, (P8755717892698260949.a n : ℤ) = A059977 n

end A059977

/-! ## A059977.P12755006485995518717

`∑[xor(n, -1)]²²`
-/

namespace A059977.P12755006485995518717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A059977.P12755006485995518717

namespace A059977

/-- `∑[xor(n, -1)]²²` -/
def P12755006485995518717.Spec : Prop :=
  ∀ n, P12755006485995518717.a n = A059977 n

end A059977

/-! ## A059977.P8031850926662183604

`root(∑[n+1], tan(acot(4)))`
-/

namespace A059977.P8031850926662183604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (4 : ℝ)))

end

end A059977.P8031850926662183604

namespace A059977

/-- `root(∑[n+1], tan(acot(4)))` -/
def P8031850926662183604.Spec : Prop :=
  ∀ n, P8031850926662183604.a n = (A059977 n : ℝ)

end A059977

/-! ## A059977.P9813305124164379539

`root(∑[n+1], cot(atan(4)))`
-/

namespace A059977.P9813305124164379539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / Real.cot (Real.arctan (4 : ℝ)))

end

end A059977.P9813305124164379539

namespace A059977

/-- `root(∑[n+1], cot(atan(4)))` -/
def P9813305124164379539.Spec : Prop :=
  ∀ n, P9813305124164379539.a n = (A059977 n : ℝ)

end A059977

/-! ## A059977.P12139766466119815754

`abs((-C(n+2, 2))^4)`
-/

namespace A059977.P12139766466119815754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.choose (n + 2) 2 : ℤ)) ^ 4|

end

end A059977.P12139766466119815754

namespace A059977

/-- `abs((-C(n+2, 2))^4)` -/
def P12139766466119815754.Spec : Prop :=
  ∀ n, P12139766466119815754.a n = A059977 n

end A059977

/-! ## A059977.P16191379717414521297

`and(-3, ∑[n+1]²²)`
-/

namespace A059977.P16191379717414521297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 : ℕ) : ℤ)

end

end A059977.P16191379717414521297

namespace A059977

/-- `and(-3, ∑[n+1]²²)` -/
def P16191379717414521297.Spec : Prop :=
  ∀ n, P16191379717414521297.a n = A059977 n

end A059977

/-! ## A059977.P2295218667553958398

`1/C(n+2, 2)^-4`
-/

namespace A059977.P2295218667553958398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.choose (n + 2) 2 : ℚ) ^ (-4 : ℤ)

end

end A059977.P2295218667553958398

namespace A059977

/-- `1/C(n+2, 2)^-4` -/
def P2295218667553958398.Spec : Prop :=
  ∀ n, P2295218667553958398.a n = (A059977 n : ℚ)

end A059977

/-! ## A059977.P5485808818504047326

`(2-or(2, ∑[n+1]²))²`
-/

namespace A059977.P5485808818504047326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.lor 2 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) : ℤ)) ^ 2

end

end A059977.P5485808818504047326

namespace A059977

/-- `(2-or(2, ∑[n+1]²))²` -/
def P5485808818504047326.Spec : Prop :=
  ∀ n, P5485808818504047326.a n = A059977 n

end A059977

/-! ## A059977.P10121350691342202134

`xor(2, ∑[n+1]²+2)²`
-/

namespace A059977.P10121350691342202134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2) ^ 2

end

end A059977.P10121350691342202134

namespace A059977

/-- `xor(2, ∑[n+1]²+2)²` -/
def P10121350691342202134.Spec : Prop :=
  ∀ n, (P10121350691342202134.a n : ℤ) = A059977 n

end A059977

/-! ## A059977.P4607326065306009414

`record[(n-1-C(n, 2))^4]`
-/

namespace A059977.P4607326065306009414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 - (Nat.choose n 2 : ℤ)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059977.P4607326065306009414

namespace A059977

/-- `record[(n-1-C(n, 2))^4]` -/
def P4607326065306009414.Spec : Prop :=
  ∀ n, P4607326065306009414.a n = A059977 n

end A059977

/-! ## A059977.P16622789513218600637

`∑[a(n-1)+1]²²` with `a(0)=1`
-/

namespace A059977.P16622789513218600637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A059977.P16622789513218600637

namespace A059977

/-- `∑[a(n-1)+1]²²` -/
def P16622789513218600637.Spec : Prop :=
  ∀ n, (P16622789513218600637.a n : ℤ) = A059977 n

end A059977

/-! ## A059977.P14642013296962475313

`∑[gcd(n, 2*n)+1]²²`
-/

namespace A059977.P14642013296962475313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A059977.P14642013296962475313

namespace A059977

/-- `∑[gcd(n, 2*n)+1]²²` -/
def P14642013296962475313.Spec : Prop :=
  ∀ n, (P14642013296962475313.a n : ℤ) = A059977 n

end A059977

/-! ## A059977.P686093806097995442

`∑[or(1, 2*n)-n]²²`
-/

namespace A059977.P686093806097995442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A059977.P686093806097995442

namespace A059977

/-- `∑[or(1, 2*n)-n]²²` -/
def P686093806097995442.Spec : Prop :=
  ∀ n, P686093806097995442.a n = A059977 n

end A059977

/-! ## A059977.P9509700417831745789

`∑[xor(1, 2*n)-n]²²`
-/

namespace A059977.P9509700417831745789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A059977.P9509700417831745789

namespace A059977

/-- `∑[xor(1, 2*n)-n]²²` -/
def P9509700417831745789.Spec : Prop :=
  ∀ n, P9509700417831745789.a n = A059977 n

end A059977

/-! ## A059977.P14876300348539080200

`record[(n-1-C(n, 2))²²]`
-/

namespace A059977.P14876300348539080200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1 - (Nat.choose n 2 : ℤ)) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059977.P14876300348539080200

namespace A059977

/-- `record[(n-1-C(n, 2))²²]` -/
def P14876300348539080200.Spec : Prop :=
  ∀ n, P14876300348539080200.a n = A059977 n

end A059977

/-! ## A059977.P1463430715472838904

`(record[(n-1)²]-∑[n])²²`
-/

namespace A059977.P1463430715472838904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) ^ 2) ^ 2

end

end A059977.P1463430715472838904

namespace A059977

/-- `(record[(n-1)²]-∑[n])²²` -/
def P1463430715472838904.Spec : Prop :=
  ∀ n, P1463430715472838904.a n = A059977 n

end A059977

/-! ## A059977.P10880084559333954604

`(lcm(n+1, n+2)/2)²²`
-/

namespace A059977.P10880084559333954604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.lcm (n + 1) (n + 2) : ℚ) / 2) ^ 2) ^ 2

end

end A059977.P10880084559333954604

namespace A059977

/-- `(lcm(n+1, n+2)/2)²²` -/
def P10880084559333954604.Spec : Prop :=
  ∀ n, P10880084559333954604.a n = (A059977 n : ℚ)

end A059977

/-! ## A059977.P4439527523942018350

`(∑[n+1]%(n+2)²)²²`
-/

namespace A059977.P4439527523942018350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) ^ 2) ^ 2) ^ 2

end

end A059977.P4439527523942018350

namespace A059977

/-- `(∑[n+1]%(n+2)²)²²` -/
def P4439527523942018350.Spec : Prop :=
  ∀ n, (P4439527523942018350.a n : ℤ) = A059977 n

end A059977

/-!
# A059978: a(n) = binomial(n+2,n)^6.

The programs for A059978, the canonical program `A059978.P978505486152725107` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059978 has offset 0).

The definition of A059978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059978.P978505486152725107

`∑[n+1]^6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059978

/-- `∑[n+1]^6` -/
def P978505486152725107.Spec : Prop :=
  ∀ n, (P978505486152725107.a n : ℤ) = A059978 n

theorem P978505486152725107.correct : P978505486152725107.Spec := by
  intro n
  simp only [A059978]

end A059978

/-! ## A059978.P14805790512806274524

`(C(n+2, 2)^3)²`
-/

namespace A059978.P14805790512806274524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 ^ 3) ^ 2

end

end A059978.P14805790512806274524

namespace A059978

/-- `(C(n+2, 2)^3)²` -/
def P14805790512806274524.Spec : Prop :=
  ∀ n, (P14805790512806274524.a n : ℤ) = A059978 n

end A059978

/-! ## A059978.P18284851858154882855

`(∑[xor(n, -1)]^3)²`
-/

namespace A059978.P18284851858154882855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3) ^ 2

end

end A059978.P18284851858154882855

namespace A059978

/-- `(∑[xor(n, -1)]^3)²` -/
def P18284851858154882855.Spec : Prop :=
  ∀ n, P18284851858154882855.a n = A059978 n

end A059978

/-! ## A059978.P4398655919332725902

`root(∑[n+1], tan(acot(6)))`
-/

namespace A059978.P4398655919332725902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (6 : ℝ)))

end

end A059978.P4398655919332725902

namespace A059978

/-- `root(∑[n+1], tan(acot(6)))` -/
def P4398655919332725902.Spec : Prop :=
  ∀ n, P4398655919332725902.a n = (A059978 n : ℝ)

end A059978

/-! ## A059978.P9081259878967225010

`root(∑[n+1], cot(atan(6)))`
-/

namespace A059978.P9081259878967225010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / Real.cot (Real.arctan (6 : ℝ)))

end

end A059978.P9081259878967225010

namespace A059978

/-- `root(∑[n+1], cot(atan(6)))` -/
def P9081259878967225010.Spec : Prop :=
  ∀ n, P9081259878967225010.a n = (A059978 n : ℝ)

theorem P9081259878967225010.correct : P9081259878967225010.Spec := by
  intro n
  simp only [A059978, Nat.add_sub_cancel, A059978.P9081259878967225010.f1, A059978.P9081259878967225010.a, A059978.P978505486152725107.f1, A059978.P978505486152725107.a, SequenceMachineLib.memo_apply]
  try simp

end A059978

/-! ## A059978.P222900802917524752

`abs((-C(n+2, 2))^6)`
-/

namespace A059978.P222900802917524752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.choose (n + 2) 2 : ℤ)) ^ 6|

end

end A059978.P222900802917524752

namespace A059978

/-- `abs((-C(n+2, 2))^6)` -/
def P222900802917524752.Spec : Prop :=
  ∀ n, P222900802917524752.a n = A059978 n

end A059978

/-! ## A059978.P13413593278906770516

`(∑[a(n-1)-1]^3)²` with `a(0)=-1`
-/

namespace A059978.P13413593278906770516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 3) ^ 2

end

end A059978.P13413593278906770516

namespace A059978

/-- `(∑[a(n-1)-1]^3)²` -/
def P13413593278906770516.Spec : Prop :=
  ∀ n, P13413593278906770516.a n = A059978 n

end A059978

/-! ## A059978.P13433818361690398471

`((lcm(n+1, n+2)/2)^3)²`
-/

namespace A059978.P13433818361690398471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.lcm (n + 1) (n + 2) : ℚ) / 2) ^ 3) ^ 2

end

end A059978.P13433818361690398471

namespace A059978

/-- `((lcm(n+1, n+2)/2)^3)²` -/
def P13433818361690398471.Spec : Prop :=
  ∀ n, P13433818361690398471.a n = (A059978 n : ℚ)

end A059978

/-! ## A059978.P10208372039611796335

`(∑[n+1]²*C(n+2, 2))²`
-/

namespace A059978.P10208372039611796335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * Nat.choose (n + 2) 2) ^ 2

end

end A059978.P10208372039611796335

namespace A059978

/-- `(∑[n+1]²*C(n+2, 2))²` -/
def P10208372039611796335.Spec : Prop :=
  ∀ n, (P10208372039611796335.a n : ℤ) = A059978 n

end A059978

/-! ## A059978.P8558696401237321763

`(∑[n+1]²²/C(n+2, 2))²`
-/

namespace A059978.P8558696401237321763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 : ℕ) : ℚ) / (Nat.choose (n + 2) 2 : ℚ)) ^ 2

end

end A059978.P8558696401237321763

namespace A059978

/-- `(∑[n+1]²²/C(n+2, 2))²` -/
def P8558696401237321763.Spec : Prop :=
  ∀ n, P8558696401237321763.a n = (A059978 n : ℚ)

end A059978

/-! ## A059978.P13168917338566451935

`(∑[n+1]²*∑[a(n-1)+1])²` with `a(0)=1`
-/

namespace A059978.P13168917338566451935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)) ^ 2

end

end A059978.P13168917338566451935

namespace A059978

/-- `(∑[n+1]²*∑[a(n-1)+1])²` -/
def P13168917338566451935.Spec : Prop :=
  ∀ n, (P13168917338566451935.a n : ℤ) = A059978 n

end A059978

/-! ## A059978.P7368303939241134353

`A059827(n+1)²`
-/

namespace A059978.P7368303939241134353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059827 (n + 1) ^ 2

end

end A059978.P7368303939241134353

namespace A059978

/-- `A059827(n+1)²` -/
def P7368303939241134353.Spec : Prop :=
  ∀ n, P7368303939241134353.a n = A059978 n

end A059978

/-! ## A059978.P14249269866251034286

`sqrt(A059977(n)^3)`
-/

namespace A059978.P14249269866251034286
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059977 n ^ 3 : ℝ)

end

end A059978.P14249269866251034286

namespace A059978

/-- `sqrt(A059977(n)^3)` -/
def P14249269866251034286.Spec : Prop :=
  ∀ n, P14249269866251034286.a n = (A059978 n : ℝ)

end A059978

/-! ## A059978.P16689689796270069069

`∑[A357178(n+1)]²`
-/

namespace A059978.P16689689796270069069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A059978.P16689689796270069069

namespace A059978

/-- `∑[A357178(n+1)]²` -/
def P16689689796270069069.Spec : Prop :=
  ∀ n, P16689689796270069069.a n = A059978 n

end A059978

/-! ## A059978.P6929603396756358060

`(Δ[A000292(n)]^3)²`
-/

namespace A059978.P6929603396756358060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A059978.P6929603396756358060

namespace A059978

/-- `(Δ[A000292(n)]^3)²` -/
def P6929603396756358060.Spec : Prop :=
  ∀ n, P6929603396756358060.a n = A059978 n

end A059978

/-! ## A059978.P14901140644709521907

`(Δ[A008345(n)]^3)²`
-/

namespace A059978.P14901140644709521907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A059978.P14901140644709521907

namespace A059978

/-- `(Δ[A008345(n)]^3)²` -/
def P14901140644709521907.Spec : Prop :=
  ∀ n, P14901140644709521907.a n = A059978 n

end A059978

/-! ## A059978.P2313866553113058431

`(Δ[A083392(n)]^3)²`
-/

namespace A059978.P2313866553113058431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A059978.P2313866553113058431

namespace A059978

/-- `(Δ[A083392(n)]^3)²` -/
def P2313866553113058431.Spec : Prop :=
  ∀ n, P2313866553113058431.a n = A059978 n

end A059978

/-! ## A059978.P354493321447966386

`(A000217(n+1)^3)²`
-/

namespace A059978.P354493321447966386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) ^ 3) ^ 2

end

end A059978.P354493321447966386

namespace A059978

/-- `(A000217(n+1)^3)²` -/
def P354493321447966386.Spec : Prop :=
  ∀ n, P354493321447966386.a n = A059978 n

end A059978

/-! ## A059978.P4780363674837119107

`(A089594(n+1)^3)²`
-/

namespace A059978.P4780363674837119107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089594 (n + 1) ^ 3) ^ 2

end

end A059978.P4780363674837119107

namespace A059978

/-- `(A089594(n+1)^3)²` -/
def P4780363674837119107.Spec : Prop :=
  ∀ n, P4780363674837119107.a n = A059978 n

end A059978

/-! ## A059978.P7751189217475417305

`∑[n+1]*A059860(n+1)`
-/

namespace A059978.P7751189217475417305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A059860 (n + 1)

end

end A059978.P7751189217475417305

namespace A059978

/-- `∑[n+1]*A059860(n+1)` -/
def P7751189217475417305.Spec : Prop :=
  ∀ n, P7751189217475417305.a n = A059978 n

end A059978

/-!
# A059979: Number of 7-dimensional cage assemblies.

The programs for A059979, the canonical program `A059979.P9154005578529930475` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059979 has offset 1).

The definition of A059979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059979.P9154005578529930475

`∑[n+1]^7`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059979

/-- `∑[n+1]^7` -/
def P9154005578529930475.Spec : Prop :=
  ∀ n, (P9154005578529930475.a n : ℤ) = A059979 (n + 1)

theorem P9154005578529930475.correct : P9154005578529930475.Spec := by
  intro n
  simp only [A059979, Nat.add_sub_cancel]

end A059979

/-! ## A059979.P3143121424946458273

`root(∑[n+1], tan(acot(7)))`
-/

namespace A059979.P3143121424946458273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (7 : ℝ)))

end

end A059979.P3143121424946458273

namespace A059979

/-- `root(∑[n+1], tan(acot(7)))` -/
def P3143121424946458273.Spec : Prop :=
  ∀ n, P3143121424946458273.a n = (A059979 (n + 1) : ℝ)

end A059979

/-! ## A059979.P11131467296273881193

`root(∑[n+1], cot(atan(7)))`
-/

namespace A059979.P11131467296273881193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / Real.cot (Real.arctan (7 : ℝ)))

end

end A059979.P11131467296273881193

namespace A059979

/-- `root(∑[n+1], cot(atan(7)))` -/
def P11131467296273881193.Spec : Prop :=
  ∀ n, P11131467296273881193.a n = (A059979 (n + 1) : ℝ)

theorem P11131467296273881193.correct : P11131467296273881193.Spec := by
  intro n
  simp only [A059979, Nat.add_sub_cancel, A059979.P11131467296273881193.f1, A059979.P11131467296273881193.a, A059979.P9154005578529930475.f1, A059979.P9154005578529930475.a, SequenceMachineLib.memo_apply]
  try simp

end A059979

/-! ## A059979.P13920822992499539003

`abs((-C(n+2, 2))^7)`
-/

namespace A059979.P13920822992499539003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.choose (n + 2) 2 : ℤ)) ^ 7|

end

end A059979.P13920822992499539003

namespace A059979

/-- `abs((-C(n+2, 2))^7)` -/
def P13920822992499539003.Spec : Prop :=
  ∀ n, P13920822992499539003.a n = A059979 (n + 1)

end A059979

/-! ## A059979.P1373082410202029119

`-(-C(n+2, 2))^7`
-/

namespace A059979.P1373082410202029119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-(Nat.choose (n + 2) 2 : ℤ)) ^ 7)

end

end A059979.P1373082410202029119

namespace A059979

/-- `-(-C(n+2, 2))^7` -/
def P1373082410202029119.Spec : Prop :=
  ∀ n, P1373082410202029119.a n = A059979 (n + 1)

end A059979

/-! ## A059979.P5225516746018086033

`∑[n+1]²²²/C(n+2, 2)`
-/

namespace A059979.P5225516746018086033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2) ^ 2 : ℕ) : ℚ) / (Nat.choose (n + 2) 2 : ℚ)

end

end A059979.P5225516746018086033

namespace A059979

/-- `∑[n+1]²²²/C(n+2, 2)` -/
def P5225516746018086033.Spec : Prop :=
  ∀ n, P5225516746018086033.a n = (A059979 (n + 1) : ℚ)

end A059979

/-! ## A059979.P4576834874121939891

`∑[n+1]*A059978(n)`
-/

namespace A059979.P4576834874121939891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A059978 n

end

end A059979.P4576834874121939891

namespace A059979

/-- `∑[n+1]*A059978(n)` -/
def P4576834874121939891.Spec : Prop :=
  ∀ n, P4576834874121939891.a n = A059979 (n + 1)

end A059979

/-! ## A059979.P6455238167701733623

`A059977(n)²/∑[n+1]`
-/

namespace A059979.P6455238167701733623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059977 n ^ 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A059979.P6455238167701733623

namespace A059979

/-- `A059977(n)²/∑[n+1]` -/
def P6455238167701733623.Spec : Prop :=
  ∀ n, P6455238167701733623.a n = (A059979 (n + 1) : ℚ)

end A059979

/-! ## A059979.P6033603575094421961

`A059980(n+1)/∑[n+1]`
-/

namespace A059979.P6033603575094421961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059980 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A059979.P6033603575094421961

namespace A059979

/-- `A059980(n+1)/∑[n+1]` -/
def P6033603575094421961.Spec : Prop :=
  ∀ n, P6033603575094421961.a n = (A059979 (n + 1) : ℚ)

end A059979

/-! ## A059979.P1551798433192382617

`A059827(n+1)²*∑[n+1]`
-/

namespace A059979.P1551798433192382617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059827 (n + 1) ^ 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A059979.P1551798433192382617

namespace A059979

/-- `A059827(n+1)²*∑[n+1]` -/
def P1551798433192382617.Spec : Prop :=
  ∀ n, P1551798433192382617.a n = A059979 (n + 1)

end A059979

/-! ## A059979.P10327081873079454162

`∑[n+1]²*A059860(n+1)`
-/

namespace A059979.P10327081873079454162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A059860 (n + 1)

end

end A059979.P10327081873079454162

namespace A059979

/-- `∑[n+1]²*A059860(n+1)` -/
def P10327081873079454162.Spec : Prop :=
  ∀ n, P10327081873079454162.a n = A059979 (n + 1)

end A059979

/-! ## A059979.P5890623966905660028

`abs(1-A000217(n+1)^7)+1`
-/

namespace A059979.P5890623966905660028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000217 (n + 1) ^ 7| + 1

end

end A059979.P5890623966905660028

namespace A059979

/-- `abs(1-A000217(n+1)^7)+1` -/
def P5890623966905660028.Spec : Prop :=
  ∀ n, P5890623966905660028.a n = A059979 (n + 1)

end A059979

/-! ## A059979.P2724443837496808195

`A059827(n+1)*A059977(n)`
-/

namespace A059979.P2724443837496808195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059827 (n + 1) * A059977 n

end

end A059979.P2724443837496808195

namespace A059979

/-- `A059827(n+1)*A059977(n)` -/
def P2724443837496808195.Spec : Prop :=
  ∀ n, P2724443837496808195.a n = A059979 (n + 1)

end A059979

/-! ## A059979.P14789916554345946706

`A059978(n)²/A059860(n+1)`
-/

namespace A059979.P14789916554345946706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059978 n ^ 2 : ℚ) / (A059860 (n + 1) : ℚ)

end

end A059979.P14789916554345946706

namespace A059979

/-- `A059978(n)²/A059860(n+1)` -/
def P14789916554345946706.Spec : Prop :=
  ∀ n, P14789916554345946706.a n = (A059979 (n + 1) : ℚ)

end A059979

/-! ## A059979.P12044900243110729069

`A059860(n+1)²/A059827(n+1)`
-/

namespace A059979.P12044900243110729069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059860 (n + 1) ^ 2 : ℚ) / (A059827 (n + 1) : ℚ)

end

end A059979.P12044900243110729069

namespace A059979

/-- `A059860(n+1)²/A059827(n+1)` -/
def P12044900243110729069.Spec : Prop :=
  ∀ n, P12044900243110729069.a n = (A059979 (n + 1) : ℚ)

end A059979

/-! ## A059979.P16124408470519529202

`A000217(n+1)^7*A247004(2*n+1)`
-/

namespace A059979.P16124408470519529202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) ^ 7 * A247004 (2 * n + 1)

end

end A059979.P16124408470519529202

namespace A059979

/-- `A000217(n+1)^7*A247004(2*n+1)` -/
def P16124408470519529202.Spec : Prop :=
  ∀ n, P16124408470519529202.a n = A059979 (n + 1)

end A059979

/-! ## A059979.P7955591906336884730

`A059977(n)/A000217(n+1)*A059977(n)`
-/

namespace A059979.P7955591906336884730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059977 n : ℚ) / (A000217 (n + 1) : ℚ) * (A059977 n : ℚ)

end

end A059979.P7955591906336884730

namespace A059979

/-- `A059977(n)/A000217(n+1)*A059977(n)` -/
def P7955591906336884730.Spec : Prop :=
  ∀ n, P7955591906336884730.a n = (A059979 (n + 1) : ℚ)

end A059979

/-! ## A059979.P13033671654025619205

`A059860(n+1)*A059978(n)/A059977(n)`
-/

namespace A059979.P13033671654025619205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059860 (n + 1) * A059978 n : ℚ) / (A059977 n : ℚ)

end

end A059979.P13033671654025619205

namespace A059979

/-- `A059860(n+1)*A059978(n)/A059977(n)` -/
def P13033671654025619205.Spec : Prop :=
  ∀ n, P13033671654025619205.a n = (A059979 (n + 1) : ℚ)

end A059979

/-! ## A059979.P7253339697082392022

`A059980(n+1)-A059860(n+1)*A071910(n)`
-/

namespace A059979.P7253339697082392022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059980 (n + 1) - A059860 (n + 1) * A071910 n

end

end A059979.P7253339697082392022

namespace A059979

/-- `A059980(n+1)-A059860(n+1)*A071910(n)` -/
def P7253339697082392022.Spec : Prop :=
  ∀ n, P7253339697082392022.a n = A059979 (n + 1)

end A059979

/-! ## A059979.P1866715921408047861

`A059860(n+1)/A059978(n)*A059980(n+1)`
-/

namespace A059979.P1866715921408047861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059860 (n + 1) : ℚ) / (A059978 n : ℚ) * (A059980 (n + 1) : ℚ)

end

end A059979.P1866715921408047861

namespace A059979

/-- `A059860(n+1)/A059978(n)*A059980(n+1)` -/
def P1866715921408047861.Spec : Prop :=
  ∀ n, P1866715921408047861.a n = (A059979 (n + 1) : ℚ)

end A059979

/-!
# A059980: Number of 8-dimensional cage assemblies.

The programs for A059980, the canonical program `A059980.P16163903958624094594` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059980 has offset 1).

The definition of A059980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059980.P16163903958624094594

`((n+1)*(n+2)/2)^8`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059980

/-- `((n+1)*(n+2)/2)^8` -/
def P16163903958624094594.Spec : Prop :=
  ∀ n, P16163903958624094594.a n = (A059980 (n + 1) : ℚ)

end A059980

/-! ## A059980.P5294235719003553552

`(C(n+2, 2)^4)²`
-/

namespace A059980.P5294235719003553552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 ^ 4) ^ 2

end

end A059980.P5294235719003553552

namespace A059980

/-- `(C(n+2, 2)^4)²` -/
def P5294235719003553552.Spec : Prop :=
  ∀ n, (P5294235719003553552.a n : ℤ) = A059980 (n + 1)

end A059980

/-! ## A059980.P15692237509869568158

`C(n+2, 2)²²²`
-/

namespace A059980.P15692237509869568158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 2) 2 ^ 2) ^ 2) ^ 2

end

end A059980.P15692237509869568158

namespace A059980

/-- `C(n+2, 2)²²²` -/
def P15692237509869568158.Spec : Prop :=
  ∀ n, (P15692237509869568158.a n : ℤ) = A059980 (n + 1)

end A059980

/-! ## A059980.P7970176728724131495

`(∑[xor(n, -1)]^4)²`
-/

namespace A059980.P7970176728724131495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 4) ^ 2

end

end A059980.P7970176728724131495

namespace A059980

/-- `(∑[xor(n, -1)]^4)²` -/
def P7970176728724131495.Spec : Prop :=
  ∀ n, P7970176728724131495.a n = A059980 (n + 1)

end A059980

/-! ## A059980.P13750805414337028165

`root(∑[n+1], tan(acot(8)))`
-/

namespace A059980.P13750805414337028165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (8 : ℝ)))

end

end A059980.P13750805414337028165

namespace A059980

/-- `root(∑[n+1], tan(acot(8)))` -/
def P13750805414337028165.Spec : Prop :=
  ∀ n, P13750805414337028165.a n = (A059980 (n + 1) : ℝ)

end A059980

/-! ## A059980.P5195848668750899187

`∑[xor(n, -1)]²²²`
-/

namespace A059980.P5195848668750899187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2) ^ 2

end

end A059980.P5195848668750899187

namespace A059980

/-- `∑[xor(n, -1)]²²²` -/
def P5195848668750899187.Spec : Prop :=
  ∀ n, P5195848668750899187.a n = A059980 (n + 1)

end A059980

/-! ## A059980.P15647793905435550553

`abs((-C(n+2, 2))^8)`
-/

namespace A059980.P15647793905435550553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-(Nat.choose (n + 2) 2 : ℤ)) ^ 8|

end

end A059980.P15647793905435550553

namespace A059980

/-- `abs((-C(n+2, 2))^8)` -/
def P15647793905435550553.Spec : Prop :=
  ∀ n, P15647793905435550553.a n = A059980 (n + 1)

end A059980

/-! ## A059980.P8678823915859778890

`and(-3, ∑[n+1]²²²)`
-/

namespace A059980.P8678823915859778890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2) ^ 2 : ℕ) : ℤ)

end

end A059980.P8678823915859778890

namespace A059980

/-- `and(-3, ∑[n+1]²²²)` -/
def P8678823915859778890.Spec : Prop :=
  ∀ n, P8678823915859778890.a n = A059980 (n + 1)

end A059980

/-! ## A059980.P9042575298451627828

`∑[a(n-1)+1]²²²` with `a(0)=1`
-/

namespace A059980.P9042575298451627828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2) ^ 2

end

end A059980.P9042575298451627828

namespace A059980

/-- `∑[a(n-1)+1]²²²` -/
def P9042575298451627828.Spec : Prop :=
  ∀ n, (P9042575298451627828.a n : ℤ) = A059980 (n + 1)

end A059980

/-! ## A059980.P8605073696109229652

`∑[gcd(n, 2*n)+1]²²²`
-/

namespace A059980.P8605073696109229652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2) ^ 2

end

end A059980.P8605073696109229652

namespace A059980

/-- `∑[gcd(n, 2*n)+1]²²²` -/
def P8605073696109229652.Spec : Prop :=
  ∀ n, (P8605073696109229652.a n : ℤ) = A059980 (n + 1)

end A059980

/-! ## A059980.P5404562977528104361

`(∑[a(n-1)-1]^4)²` with `a(0)=-1`
-/

namespace A059980.P5404562977528104361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 4) ^ 2

end

end A059980.P5404562977528104361

namespace A059980

/-- `(∑[a(n-1)-1]^4)²` -/
def P5404562977528104361.Spec : Prop :=
  ∀ n, P5404562977528104361.a n = A059980 (n + 1)

end A059980

/-! ## A059980.P11336061381708214387

`((lcm(n+1, n+2)/2)^4)²`
-/

namespace A059980.P11336061381708214387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.lcm (n + 1) (n + 2) : ℚ) / 2) ^ 4) ^ 2

end

end A059980.P11336061381708214387

namespace A059980

/-- `((lcm(n+1, n+2)/2)^4)²` -/
def P11336061381708214387.Spec : Prop :=
  ∀ n, P11336061381708214387.a n = (A059980 (n + 1) : ℚ)

end A059980

/-! ## A059980.P11434935996305322346

`∑[(n+1)*record[(n-1)²]]²²`
-/

namespace A059980.P11434935996305322346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A059980.P11434935996305322346

namespace A059980

/-- `∑[(n+1)*record[(n-1)²]]²²` -/
def P11434935996305322346.Spec : Prop :=
  ∀ n, P11434935996305322346.a n = A059980 (n + 1)

end A059980

/-! ## A059980.P9487436554064210507

`lcm(∑[n+1]²², ∑[n+1])²`
-/

namespace A059980.P9487436554064210507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2) (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A059980.P9487436554064210507

namespace A059980

/-- `lcm(∑[n+1]²², ∑[n+1])²` -/
def P9487436554064210507.Spec : Prop :=
  ∀ n, (P9487436554064210507.a n : ℤ) = A059980 (n + 1)

end A059980

/-! ## A059980.P7775570248310492020

`floor(∑[a(n-1)-1]²²²)` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A059980.P7775570248310492020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2) ^ 2

end

end A059980.P7775570248310492020

namespace A059980

/-- `floor(∑[a(n-1)-1]²²²)` -/
def P7775570248310492020.Spec : Prop :=
  ∀ n, P7775570248310492020.a n = A059980 (n + 1)

end A059980

/-! ## A059980.P12610690847791202054

`∑[lcm(2, 2*n)-(n-1)]²²²`
-/

namespace A059980.P12610690847791202054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n) : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2) ^ 2

end

end A059980.P12610690847791202054

namespace A059980

/-- `∑[lcm(2, 2*n)-(n-1)]²²²` -/
def P12610690847791202054.Spec : Prop :=
  ∀ n, P12610690847791202054.a n = A059980 (n + 1)

end A059980

/-! ## A059980.P13671012015981573144

`∑[and(1, 2*n+1)+n]²²²`
-/

namespace A059980.P13671012015981573144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (2 * n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2) ^ 2

end

end A059980.P13671012015981573144

namespace A059980

/-- `∑[and(1, 2*n+1)+n]²²²` -/
def P13671012015981573144.Spec : Prop :=
  ∀ n, (P13671012015981573144.a n : ℤ) = A059980 (n + 1)

end A059980

/-! ## A059980.P15190981968147062525

`∑[gcd(n+1, n+2+n)]²²²`
-/

namespace A059980.P15190981968147062525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (n + 2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2) ^ 2

end

end A059980.P15190981968147062525

namespace A059980

/-- `∑[gcd(n+1, n+2+n)]²²²` -/
def P15190981968147062525.Spec : Prop :=
  ∀ n, (P15190981968147062525.a n : ℤ) = A059980 (n + 1)

end A059980

/-! ## A059980.P15502769525786440358

`∑[C(2*n-(n-1), n)]²²²`
-/

namespace A059980.P15502769525786440358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2) ^ 2

end

end A059980.P15502769525786440358

namespace A059980

/-- `∑[C(2*n-(n-1), n)]²²²` -/
def P15502769525786440358.Spec : Prop :=
  ∀ n, (P15502769525786440358.a n : ℤ) = A059980 (n + 1)

end A059980

/-! ## A059980.P8609486954828463483

`(∑[a(n-1)-2]/2)²²²` with `a(0)=-2`
-/

namespace A059980.P8609486954828463483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2) ^ 2) ^ 2) ^ 2

end

end A059980.P8609486954828463483

namespace A059980

/-- `(∑[a(n-1)-2]/2)²²²` -/
def P8609486954828463483.Spec : Prop :=
  ∀ n, P8609486954828463483.a n = (A059980 (n + 1) : ℚ)

end A059980

/-!
# A059981: Order of compositeness for the n-th composite number.

The programs for A059981, the canonical program `A059981.P14273074610355838574` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059981 has offset 1).

The definition of A059981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059981.P14273074610355838574

`Δ[a(A065855(n))+n]` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059981

/-- `Δ[a(A065855(n))+n]` -/
def P14273074610355838574.Spec : Prop :=
  ∀ n, P14273074610355838574.a n = A059981 (n + 1)

theorem P14273074610355838574.correct : P14273074610355838574.Spec := by
  intro n
  simp only [A059981, Nat.add_sub_cancel]

end A059981

/-! ## A059981.P16428773526720894941

`val(A246377(n+1), 2)+1`
-/

namespace A059981.P16428773526720894941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246377 (n + 1)).toNat 2 + 1

end

end A059981.P16428773526720894941

namespace A059981

/-- `val(A246377(n+1), 2)+1` -/
def P16428773526720894941.Spec : Prop :=
  ∀ n, (P16428773526720894941.a n : ℤ) = A059981 (n + 1)

end A059981

/-! ## A059981.P13424596792192692834

`val(A246379(n+1), 2)+1`
-/

namespace A059981.P13424596792192692834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246379 (n + 1)).toNat 2 + 1

end

end A059981.P13424596792192692834

namespace A059981

/-- `val(A246379(n+1), 2)+1` -/
def P13424596792192692834.Spec : Prop :=
  ∀ n, (P13424596792192692834.a n : ℤ) = A059981 (n + 1)

end A059981

/-! ## A059981.P11104501047513557596

`val(A246377(A018252(n+2)), 2)`
-/

namespace A059981.P11104501047513557596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246377 (A018252 (n + 2)).toNat).toNat 2

end

end A059981.P11104501047513557596

namespace A059981

/-- `val(A246377(A018252(n+2)), 2)` -/
def P11104501047513557596.Spec : Prop :=
  ∀ n, (P11104501047513557596.a n : ℤ) = A059981 (n + 1)

end A059981

/-! ## A059981.P14119825445935026072

`val(A246377(lt[1, A175126(n)]), 2)`
-/

namespace A059981.P14119825445935026072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246377 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)).toNat 2

end

end A059981.P14119825445935026072

namespace A059981

/-- `val(A246377(lt[1, A175126(n)]), 2)` -/
def P14119825445935026072.Spec : Prop :=
  ∀ n, (P14119825445935026072.a n : ℤ) = A059981 (n + 1)

end A059981

/-! ## A059981.P4843646720615237951

`A091090(A135141(n+1))`
-/

namespace A059981.P4843646720615237951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A135141 (n + 1)).toNat

end

end A059981.P4843646720615237951

namespace A059981

/-- `A091090(A135141(n+1))` -/
def P4843646720615237951.Spec : Prop :=
  ∀ n, P4843646720615237951.a n = A059981 (n + 1)

end A059981

/-! ## A059981.P2135105937378046374

`A001511(A246377(n+1))`
-/

namespace A059981.P2135105937378046374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A246377 (n + 1)).toNat

end

end A059981.P2135105937378046374

namespace A059981

/-- `A001511(A246377(n+1))` -/
def P2135105937378046374.Spec : Prop :=
  ∀ n, P2135105937378046374.a n = A059981 (n + 1)

end A059981

/-! ## A059981.P17520975848229739682

`A055396(A252755(A135141(A003602(2*n+1))))`
-/

namespace A059981.P17520975848229739682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A252755 (A135141 (A003602 (2 * n + 1)).toNat).toNat).toNat

end

end A059981.P17520975848229739682

namespace A059981

/-- `A055396(A252755(A135141(A003602(2*n+1))))` -/
def P17520975848229739682.Spec : Prop :=
  ∀ n, P17520975848229739682.a n = A059981 (n + 1)

end A059981

/-! ## A059981.P13948341983169747448

`A001511(A246379(n+1))`
-/

namespace A059981.P13948341983169747448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A246379 (n + 1)).toNat

end

end A059981.P13948341983169747448

namespace A059981

/-- `A001511(A246379(n+1))` -/
def P13948341983169747448.Spec : Prop :=
  ∀ n, P13948341983169747448.a n = A059981 (n + 1)

end A059981

/-! ## A059981.P1147152219144865388

`A007814(A054429(A135141(A002808(n+1))))`
-/

namespace A059981.P1147152219144865388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A054429 (A135141 (A002808 (n + 1)).toNat).toNat).toNat

end

end A059981.P1147152219144865388

namespace A059981

/-- `A007814(A054429(A135141(A002808(n+1))))` -/
def P1147152219144865388.Spec : Prop :=
  ∀ n, P1147152219144865388.a n = A059981 (n + 1)

end A059981

/-!
# A059982: Symmetric array of numeric partitions related to 1 4 9 16 ... and 1 3 4 7 13 ..., read by rows.

The programs for A059982, there is no canonical definition to state claims against.
-/

/-! ## A059982.P2483333893462774049

`A006530(A000010(A274624(n))!)`
-/

namespace A059982.P2483333893462774049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A000010 (A274624 n).toNat).toNat)

end

end A059982.P2483333893462774049

/-! ## A059982.P9336536769559545420

`A225644(A274624(n)^A225654(n))`
-/

namespace A059982.P9336536769559545420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (SequenceMachineLib.roundAway ((A274624 n : ℚ) ^ (A225654 n : ℤ))).toNat

end

end A059982.P9336536769559545420

/-! ## A059982.P415394104831863206

`A225644(C(A274624(n), A225654(n)))`
-/

namespace A059982.P415394104831863206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (Nat.choose (A274624 n).toNat (A225654 n).toNat)

end

end A059982.P415394104831863206

/-! ## A059982.P3807705038976452054

`A225644(A225654(n)²²*A274624(n))`
-/

namespace A059982.P3807705038976452054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 ((A225654 n ^ 2) ^ 2 * A274624 n).toNat

end

end A059982.P3807705038976452054

/-!
# A059984: Concatenation of Łukasiewicz words.

The programs for A059984, there is no canonical definition to state claims against.
-/

/-! ## A059984.P16863816976055008393

`A088950(A181385(n)+A007093(n))`
-/

namespace A059984.P16863816976055008393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088950 (A181385 n + A007093 n).toNat

end

end A059984.P16863816976055008393

/-! ## A059984.P5322586007276451837

`A341996(A018184(n))+A341996(n)`
-/

namespace A059984.P5322586007276451837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 (A018184 n).toNat + A341996 n

end

end A059984.P5322586007276451837

/-! ## A059984.P5020890681661330893

`and(A003842(3*n+1), A295540(A003242(n)))`
-/

namespace A059984.P5020890681661330893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003842 (3 * n + 1)) (A295540 (A003242 n).toNat)

end

end A059984.P5020890681661330893

/-! ## A059984.P7556768123941131495

`A214362(2*n+5)%A214323(A214352(n+1))`
-/

namespace A059984.P7556768123941131495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214362 (2 * n + 5)) (A214323 (A214352 (n + 1)).toNat)

end

end A059984.P7556768123941131495

/-! ## A059984.P5426553908170927519

`A356230(gcd(A260274(n+1), A357643(n)))`
-/

namespace A059984.P5426553908170927519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356230 (Int.gcd (A260274 (n + 1)) (A357643 n))

end

end A059984.P5426553908170927519

/-!
# A059985: Łukasiewicz words as integers written in factorial base.

The programs for A059985, there is no canonical definition to state claims against.
-/

/-! ## A059985.P17514373799496653265

`A277011(A057520(n))`
-/

namespace A059985.P17514373799496653265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (A057520 n).toNat

end

end A059985.P17514373799496653265

/-! ## A059985.P7335129535304957968

`A277011(A014486(n)/2)`
-/

namespace A059985.P7335129535304957968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (SequenceMachineLib.roundAway ((A014486 n : ℚ) / 2)).toNat

end

end A059985.P7335129535304957968

/-! ## A059985.P15855897111941894057

`A277011(A194045(n)/4)`
-/

namespace A059985.P15855897111941894057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (SequenceMachineLib.roundAway ((A194045 n : ℚ) / 4)).toNat

end

end A059985.P15855897111941894057

/-! ## A059985.P311613863760100326

`A071156(n)-A257684(A071156(n))`
-/

namespace A059985.P311613863760100326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071156 n - A257684 (A071156 n).toNat

end

end A059985.P311613863760100326

/-! ## A059985.P10486451041240489474

`A277011(A014486(n)+1)-1`
-/

namespace A059985.P10486451041240489474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (A014486 n + 1).toNat - 1

end

end A059985.P10486451041240489474

/-! ## A059985.P3461570793341997973

`A277011(A110654(A014486(n)))`
-/

namespace A059985.P3461570793341997973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (A110654 (A014486 n).toNat).toNat

end

end A059985.P3461570793341997973

/-!
# A059986: Number of rods required to make a 3-D cube of side length n.

The programs for A059986, the canonical program `A059986.P10580888431544738624` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059986 has offset 0).

The definition of A059986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059986.P10580888431544738624

`3*n*(n+1)²`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059986

/-- `3*n*(n+1)²` -/
def P10580888431544738624.Spec : Prop :=
  ∀ n, (P10580888431544738624.a n : ℤ) = A059986 n

theorem P10580888431544738624.correct : P10580888431544738624.Spec := by
  intro n
  simp only [A059986]

end A059986

/-! ## A059986.P1371163466112504708

`∑[n*Δ[C(3*n, 2)]]`
-/

namespace A059986.P1371163466112504708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059986.P1371163466112504708

namespace A059986

/-- `∑[n*Δ[C(3*n, 2)]]` -/
def P1371163466112504708.Spec : Prop :=
  ∀ n, P1371163466112504708.a n = A059986 n

end A059986

/-! ## A059986.P8214565426933730482

`∑[2*C(3*n+1, 2)]`
-/

namespace A059986.P8214565426933730482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (3 * n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059986.P8214565426933730482

namespace A059986

/-- `∑[2*C(3*n+1, 2)]` -/
def P8214565426933730482.Spec : Prop :=
  ∀ n, (P8214565426933730482.a n : ℤ) = A059986 n

end A059986

/-! ## A059986.P17965002204017307710

`∑[∑[a(n-1)+18]]` with `a(0)=0, a(1)=12`
-/

namespace A059986.P17965002204017307710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n f2 =>
  f2 (n - 1) + 18

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059986.P17965002204017307710

namespace A059986

/-- `∑[∑[a(n-1)+18]]` -/
def P17965002204017307710.Spec : Prop :=
  ∀ n, (P17965002204017307710.a n : ℤ) = A059986 n

end A059986

/-! ## A059986.P10169486577623005023

`∑[3*lcm(n, 3*n+1)]`
-/

namespace A059986.P10169486577623005023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lcm n (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059986.P10169486577623005023

namespace A059986

/-- `∑[3*lcm(n, 3*n+1)]` -/
def P10169486577623005023.Spec : Prop :=
  ∀ n, (P10169486577623005023.a n : ℤ) = A059986 n

end A059986

/-! ## A059986.P10519856153446904940

`∑[∑[ogf((12x+6x^2)/(1-2x+x^2))]]`
-/

namespace A059986.P10519856153446904940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12, 6] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059986.P10519856153446904940

namespace A059986

/-- `∑[∑[ogf((12x+6x^2)/(1-2x+x^2))]]` -/
def P10519856153446904940.Spec : Prop :=
  ∀ n, P10519856153446904940.a n = A059986 n

end A059986

/-! ## A059986.P17949993242855343545

`lcm(n+1, Δ[n^3])-(n+1)`
-/

namespace A059986.P17949993242855343545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - (n + 1 : ℤ)

end

end A059986.P17949993242855343545

namespace A059986

/-- `lcm(n+1, Δ[n^3])-(n+1)` -/
def P17949993242855343545.Spec : Prop :=
  ∀ n, P17949993242855343545.a n = A059986 n

end A059986

/-! ## A059986.P3920506579437628758

`∑[A045945(n)]`
-/

namespace A059986.P3920506579437628758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059986.P3920506579437628758

namespace A059986

/-- `∑[A045945(n)]` -/
def P3920506579437628758.Spec : Prop :=
  ∀ n, P3920506579437628758.a n = A059986 n

end A059986

/-! ## A059986.P10823611649442731397

`∑[A082040(n)-1]`
-/

namespace A059986.P10823611649442731397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059986.P10823611649442731397

namespace A059986

/-- `∑[A082040(n)-1]` -/
def P10823611649442731397.Spec : Prop :=
  ∀ n, P10823611649442731397.a n = A059986 n

end A059986

/-! ## A059986.P120864920210635113

`∑[2*A081266(n)]`
-/

namespace A059986.P120864920210635113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059986.P120864920210635113

namespace A059986

/-- `∑[2*A081266(n)]` -/
def P120864920210635113.Spec : Prop :=
  ∀ n, P120864920210635113.a n = A059986 n

end A059986

/-! ## A059986.P9982188370521280148

`∑[A045946(n)/2]`
-/

namespace A059986.P9982188370521280148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045946 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059986.P9982188370521280148

namespace A059986

/-- `∑[A045946(n)/2]` -/
def P9982188370521280148.Spec : Prop :=
  ∀ n, P9982188370521280148.a n = (A059986 n : ℚ)

end A059986

/-! ## A059986.P15588603210846356469

`∑[3*A049451(n)]`
-/

namespace A059986.P15588603210846356469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059986.P15588603210846356469

namespace A059986

/-- `∑[3*A049451(n)]` -/
def P15588603210846356469.Spec : Prop :=
  ∀ n, P15588603210846356469.a n = A059986 n

end A059986

/-! ## A059986.P13357133979345855011

`∑[A147296(n)+n]`
-/

namespace A059986.P13357133979345855011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147296 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059986.P13357133979345855011

namespace A059986

/-- `∑[A147296(n)+n]` -/
def P13357133979345855011.Spec : Prop :=
  ∀ n, P13357133979345855011.a n = A059986 n

end A059986

/-! ## A059986.P7020655733257373048

`∑[n*A017197(n)]`
-/

namespace A059986.P7020655733257373048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A017197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059986.P7020655733257373048

namespace A059986

/-- `∑[n*A017197(n)]` -/
def P7020655733257373048.Spec : Prop :=
  ∀ n, P7020655733257373048.a n = A059986 n

end A059986

/-! ## A059986.P2183950930328509204

`A187163(n+1)/2`
-/

namespace A059986.P2183950930328509204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187163 (n + 1) : ℚ) / 2

end

end A059986.P2183950930328509204

namespace A059986

/-- `A187163(n+1)/2` -/
def P2183950930328509204.Spec : Prop :=
  ∀ n, P2183950930328509204.a n = (A059986 n : ℚ)

end A059986

/-! ## A059986.P3977300853748957206

`A005915(n)-(n+1)`
-/

namespace A059986.P3977300853748957206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 n - (n + 1 : ℤ)

end

end A059986.P3977300853748957206

namespace A059986

/-- `A005915(n)-(n+1)` -/
def P3977300853748957206.Spec : Prop :=
  ∀ n, P3977300853748957206.a n = A059986 n

end A059986

/-! ## A059986.P8660857901510343774

`A196507(n)+2*n`
-/

namespace A059986.P8660857901510343774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196507 n + (2 * n : ℤ)

end

end A059986.P8660857901510343774

namespace A059986

/-- `A196507(n)+2*n` -/
def P8660857901510343774.Spec : Prop :=
  ∀ n, P8660857901510343774.a n = A059986 n

end A059986

/-! ## A059986.P13428073596023789233

`∑[∑[A019557(n)]-1]`
-/

namespace A059986.P13428073596023789233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059986.P13428073596023789233

namespace A059986

/-- `∑[∑[A019557(n)]-1]` -/
def P13428073596023789233.Spec : Prop :=
  ∀ n, P13428073596023789233.a n = A059986 n

end A059986

/-! ## A059986.P4629049362566886714

`∑[A139276(n)+n²]`
-/

namespace A059986.P4629049362566886714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139276 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059986.P4629049362566886714

namespace A059986

/-- `∑[A139276(n)+n²]` -/
def P4629049362566886714.Spec : Prop :=
  ∀ n, P4629049362566886714.a n = A059986 n

end A059986

/-! ## A059986.P2343089308653765951

`∑[n*sqrt(A017198(n))]`
-/

namespace A059986.P2343089308653765951
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A017198 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059986.P2343089308653765951

namespace A059986

/-- `∑[n*sqrt(A017198(n))]` -/
def P2343089308653765951.Spec : Prop :=
  ∀ n, P2343089308653765951.a n = (A059986 n : ℝ)

end A059986

/-!
# A059987: Lucky numbers generated from primes.

The programs for A059987, there is no canonical definition to state claims against.
-/

/-! ## A059987.P13366256654999070264

`A000040(eq[4, A248666(2*(n+1))])`
-/

namespace A059987.P13366256654999070264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248666 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059987.P13366256654999070264

/-! ## A059987.P6996921814971725835

`A000040(A101435(3*(n+1))%A101451(n+1))`
-/

namespace A059987.P6996921814971725835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A101435 (3 * (n + 1))) (A101451 (n + 1))).toNat

end

end A059987.P6996921814971725835

/-! ## A059987.P7801127804439981725

`A000040(eq[A124761(3*n+2), A124781(n+3)])`
-/

namespace A059987.P7801127804439981725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124781 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A059987.P7801127804439981725

/-! ## A059987.P12172671317222631443

`record[A000040(2*n+1)%A128364(3*n+4)]`
-/

namespace A059987.P12172671317222631443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (2 * n + 1)) (A128364 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059987.P12172671317222631443

/-! ## A059987.P6965206214506006350

`A000040(lt[A025802(n), A025780(n)])`
-/

namespace A059987.P6965206214506006350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A059987.P6965206214506006350

/-!
# A059988: a(n) = (10^n - 1)^2.

The programs for A059988, the canonical program `A059988.P9886971225282814496` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059988 has offset 0).

The definition of A059988 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n-1)²` (program `A059988.P9886971225282814496`, by `A059988.P9886971225282814496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059988.P9886971225282814496

`(10^n-1)²`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059988

/-- `(10^n-1)²` -/
def P9886971225282814496.Spec : Prop :=
  ∀ n, P9886971225282814496.a n = A059988 n

theorem P9886971225282814496.correct : P9886971225282814496.Spec := by
  intro n
  simp only [A059988]

end A059988

/-! ## A059988.P7440746759818708256

`(10^n-1)^ceil(cosh(sin(n)))`
-/

namespace A059988.P7440746759818708256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1 : ℚ) ^ (⌈Real.cosh (Real.sin (n : ℝ))⌉ : ℤ)

end

end A059988.P7440746759818708256

namespace A059988

/-- `(10^n-1)^ceil(cosh(sin(n)))` -/
def P7440746759818708256.Spec : Prop :=
  ∀ n, P7440746759818708256.a n = (A059988 n : ℚ)

end A059988

/-! ## A059988.P18016129593030341560

`floor(∑[10*a(n-1)]²)` with `a(0)=0, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A059988.P18016129593030341560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A059988.P18016129593030341560

namespace A059988

/-- `floor(∑[10*a(n-1)]²)` -/
def P18016129593030341560.Spec : Prop :=
  ∀ n, (P18016129593030341560.a n : ℤ) = A059988 n

end A059988

/-! ## A059988.P13687338613431314074

`(10^n-1)^(floor(acot(n))+2)`
-/

namespace A059988.P13687338613431314074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1 : ℚ) ^ (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 2 : ℤ)

end

end A059988.P13687338613431314074

namespace A059988

/-- `(10^n-1)^(floor(acot(n))+2)` -/
def P13687338613431314074.Spec : Prop :=
  ∀ n, P13687338613431314074.a n = (A059988 n : ℚ)

end A059988

/-! ## A059988.P4646440523102668863

`(10^n-1)^(gcd(n, n+1)+1)`
-/

namespace A059988.P4646440523102668863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1) ^ (Nat.gcd n (n + 1) + 1)

end

end A059988.P4646440523102668863

namespace A059988

/-- `(10^n-1)^(gcd(n, n+1)+1)` -/
def P4646440523102668863.Spec : Prop :=
  ∀ n, P4646440523102668863.a n = A059988 n

theorem P4646440523102668863.correct : P4646440523102668863.Spec := by
  intro n
  simp only [A059988, Nat.add_sub_cancel, A059988.P4646440523102668863.a, A059988.P9886971225282814496.a, SequenceMachineLib.memo_apply]
  try simp

end A059988

/-! ## A059988.P13949257056464751784

`A169601(n)-2`
-/

namespace A059988.P13949257056464751784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169601 n - 2

end

end A059988.P13949257056464751784

namespace A059988

/-- `A169601(n)-2` -/
def P13949257056464751784.Spec : Prop :=
  ∀ n, P13949257056464751784.a n = A059988 n

end A059988

/-! ## A059988.P13236443020900163633

`9*A075412(n)`
-/

namespace A059988.P13236443020900163633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A075412 n

end

end A059988.P13236443020900163633

namespace A059988

/-- `9*A075412(n)` -/
def P13236443020900163633.Spec : Prop :=
  ∀ n, P13236443020900163633.a n = A059988 n

end A059988

/-! ## A059988.P1794932165592511684

`(10^n-1)^A020639(2*(n+1))`
-/

namespace A059988.P1794932165592511684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1 : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A059988.P1794932165592511684

namespace A059988

/-- `(10^n-1)^A020639(2*(n+1))` -/
def P1794932165592511684.Spec : Prop :=
  ∀ n, P1794932165592511684.a n = (A059988 n : ℚ)

end A059988

/-!
# A059989: Numbers k such that 3*k+1 and 4*k+1 are both squares.

The programs for A059989, the canonical program `A059989.P4306678296345226909` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059989 has offset 1).

The definition of A059989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059989.P4306678296345226909

`(A001570(n+1)²-1)/3`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059989

/-- `(A001570(n+1)²-1)/3` -/
def P4306678296345226909.Spec : Prop :=
  ∀ n, P4306678296345226909.a n = (A059989 (n + 1) : ℚ)

end A059989

/-! ## A059989.P16808875508621581439

`2*A200999(n)`
-/

namespace A059989.P16808875508621581439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A200999 n

end

end A059989.P16808875508621581439

namespace A059989

/-- `2*A200999(n)` -/
def P16808875508621581439.Spec : Prop :=
  ∀ n, P16808875508621581439.a n = A059989 (n + 1)

end A059989

/-! ## A059989.P6728026223842094606

`∑[A001353(4*n)]`
-/

namespace A059989.P6728026223842094606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059989.P6728026223842094606

namespace A059989

/-- `∑[A001353(4*n)]` -/
def P6728026223842094606.Spec : Prop :=
  ∀ n, P6728026223842094606.a n = A059989 (n + 1)

end A059989

/-! ## A059989.P14160154250250177817

`∑[A002530(8*n)]`
-/

namespace A059989.P14160154250250177817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059989.P14160154250250177817

namespace A059989

/-- `∑[A002530(8*n)]` -/
def P14160154250250177817.Spec : Prop :=
  ∀ n, P14160154250250177817.a n = A059989 (n + 1)

end A059989

/-! ## A059989.P11554542189864192060

`∑[A249578(12*n)]`
-/

namespace A059989.P11554542189864192060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (12 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059989.P11554542189864192060

namespace A059989

/-- `∑[A249578(12*n)]` -/
def P11554542189864192060.Spec : Prop :=
  ∀ n, P11554542189864192060.a n = A059989 (n + 1)

end A059989

/-!
# A059990: Number of points of period n under the dual of the map x->2x on Z[1/6].

The programs for A059990, the canonical program `A059990.P17006573359253022065` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059990 has offset 1).

The definition of A059990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059990.P11258981987664898906

`∑{d}[n+1, #*A060480(#)]`
-/

namespace A059990.P11258981987664898906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A060480 d

end

end A059990.P11258981987664898906

namespace A059990

/-- `∑{d}[n+1, #*A060480(#)]` -/
def P11258981987664898906.Spec : Prop :=
  ∀ n, P11258981987664898906.a n = A059990 (n + 1)

end A059990

/-! ## A059990.P6446702954583269723

`∑[2^n]/A060901(2*(n+1))`
-/

namespace A059990.P6446702954583269723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A060901 (2 * (n + 1)) : ℚ)

end

end A059990.P6446702954583269723

namespace A059990

/-- `∑[2^n]/A060901(2*(n+1))` -/
def P6446702954583269723.Spec : Prop :=
  ∀ n, P6446702954583269723.a n = (A059990 (n + 1) : ℚ)

end A059990

/-! ## A059990.P16630745270178149234

`∑[2^n]/A038500(A261728(n+1))`
-/

namespace A059990.P16630745270178149234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A038500 (A261728 (n + 1)).toNat : ℚ)

end

end A059990.P16630745270178149234

namespace A059990

/-- `∑[2^n]/A038500(A261728(n+1))` -/
def P16630745270178149234.Spec : Prop :=
  ∀ n, P16630745270178149234.a n = (A059990 (n + 1) : ℚ)

end A059990

/-! ## A059990.P17006573359253022065

`floor(A000225(n+1)/A060901(2*(n+1)))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059990

/-- `floor(A000225(n+1)/A060901(2*(n+1)))` -/
def P17006573359253022065.Spec : Prop :=
  ∀ n, P17006573359253022065.a n = A059990 (n + 1)

theorem P17006573359253022065.correct : P17006573359253022065.Spec := by
  intro n
  simp only [A059990, Nat.add_sub_cancel]

end A059990

/-! ## A059990.P3025455755608306567

`A213246(n+1)/gcd(A038500(n+1), A213246(n+1))`
-/

namespace A059990.P3025455755608306567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213246 (n + 1) : ℚ) / (Int.gcd (A038500 (n + 1)) (A213246 (n + 1)) : ℚ)

end

end A059990.P3025455755608306567

namespace A059990

/-- `A213246(n+1)/gcd(A038500(n+1), A213246(n+1))` -/
def P3025455755608306567.Spec : Prop :=
  ∀ n, P3025455755608306567.a n = (A059990 (n + 1) : ℚ)

end A059990

/-! ## A059990.P9655363792453130897

`gcd(∑[4^n]/3^val(n+1, 3), A016137(n))`
-/

namespace A059990.P9655363792453130897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) (A016137 n)

end

end A059990.P9655363792453130897

namespace A059990

/-- `gcd(∑[4^n]/3^val(n+1, 3), A016137(n))` -/
def P9655363792453130897.Spec : Prop :=
  ∀ n, (P9655363792453130897.a n : ℤ) = A059990 (n + 1)

end A059990

/-! ## A059990.P15589312856331961717

`lcm(A000244(n+1), A255047(n+1))/A000244(n+1)`
-/

namespace A059990.P15589312856331961717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000244 (n + 1)) (A255047 (n + 1)) : ℚ) / (A000244 (n + 1) : ℚ)

end

end A059990.P15589312856331961717

namespace A059990

/-- `lcm(A000244(n+1), A255047(n+1))/A000244(n+1)` -/
def P15589312856331961717.Spec : Prop :=
  ∀ n, P15589312856331961717.a n = (A059990 (n + 1) : ℚ)

end A059990

/-!
# A059991: a(n) = 2^(n-2^ord_2(n)) (or 2^(n-A006519(n))).

The programs for A059991, the canonical program `A059991.P15103997828559681085` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059991 has offset 1).

The definition of A059991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059991.P15103997828559681085

`2^(n+1-A006519(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059991

/-- `2^(n+1-A006519(n+1))` -/
def P15103997828559681085.Spec : Prop :=
  ∀ n, P15103997828559681085.a n = (A059991 (n + 1) : ℚ)

end A059991

/-! ## A059991.P1616174396158292090

`2^and(n, n+1)`
-/

namespace A059991.P1616174396158292090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land n (n + 1)

end

end A059991.P1616174396158292090

namespace A059991

/-- `2^and(n, n+1)` -/
def P1616174396158292090.Spec : Prop :=
  ∀ n, (P1616174396158292090.a n : ℤ) = A059991 (n + 1)

end A059991

/-! ## A059991.P10168819025854856374

`2^(or(n, -(n+2))+n+2)`
-/

namespace A059991.P10168819025854856374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.lor (n : ℤ) (-(n + 2 : ℤ)) + (n + 2 : ℤ) : ℤ)

end

end A059991.P10168819025854856374

namespace A059991

/-- `2^(or(n, -(n+2))+n+2)` -/
def P10168819025854856374.Spec : Prop :=
  ∀ n, P10168819025854856374.a n = (A059991 (n + 1) : ℚ)

end A059991

/-! ## A059991.P10812518935393094466

`2^(2*n+1-or(n, n+1))`
-/

namespace A059991.P10812518935393094466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n + 1 : ℤ) - (Nat.lor n (n + 1) : ℤ) : ℤ)

end

end A059991.P10812518935393094466

namespace A059991

/-- `2^(2*n+1-or(n, n+1))` -/
def P10812518935393094466.Spec : Prop :=
  ∀ n, P10812518935393094466.a n = (A059991 (n + 1) : ℚ)

end A059991

/-! ## A059991.P14742743745577280071

`2^((2*n+1)%or(n, n+1))`
-/

namespace A059991.P14742743745577280071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((2 * n + 1) % Nat.lor n (n + 1))

end

end A059991.P14742743745577280071

namespace A059991

/-- `2^((2*n+1)%or(n, n+1))` -/
def P14742743745577280071.Spec : Prop :=
  ∀ n, (P14742743745577280071.a n : ℤ) = A059991 (n + 1)

end A059991

/-! ## A059991.P6702789210497863651

`2^A129760(n+1)`
-/

namespace A059991.P6702789210497863651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A129760 (n + 1) : ℤ)

end

end A059991.P6702789210497863651

namespace A059991

/-- `2^A129760(n+1)` -/
def P6702789210497863651.Spec : Prop :=
  ∀ n, P6702789210497863651.a n = (A059991 (n + 1) : ℚ)

end A059991

/-! ## A059991.P12948785725869317746

`4^A104594(n+1)`
-/

namespace A059991.P12948785725869317746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A104594 (n + 1) : ℤ)

end

end A059991.P12948785725869317746

namespace A059991

/-- `4^A104594(n+1)` -/
def P12948785725869317746.Spec : Prop :=
  ∀ n, P12948785725869317746.a n = (A059991 (n + 1) : ℚ)

end A059991

/-! ## A059991.P3016504239478288429

`2^(n-A135481(n))`
-/

namespace A059991.P3016504239478288429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A135481 n : ℤ)

end

end A059991.P3016504239478288429

namespace A059991

/-- `2^(n-A135481(n))` -/
def P3016504239478288429.Spec : Prop :=
  ∀ n, P3016504239478288429.a n = (A059991 (n + 1) : ℚ)

end A059991

/-! ## A059991.P11154978934959331136

`A000079(and(n, n+1))`
-/

namespace A059991.P11154978934959331136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Nat.land n (n + 1))

end

end A059991.P11154978934959331136

namespace A059991

/-- `A000079(and(n, n+1))` -/
def P11154978934959331136.Spec : Prop :=
  ∀ n, P11154978934959331136.a n = A059991 (n + 1)

end A059991

/-! ## A059991.P373402017298526513

`A051049(and(n, n+1))`
-/

namespace A059991.P373402017298526513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 (Nat.land n (n + 1))

end

end A059991.P373402017298526513

namespace A059991

/-- `A051049(and(n, n+1))` -/
def P373402017298526513.Spec : Prop :=
  ∀ n, P373402017298526513.a n = A059991 (n + 1)

end A059991

/-! ## A059991.P12230067145702612341

`A051437(and(n, n+1))`
-/

namespace A059991.P12230067145702612341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051437 (Nat.land n (n + 1))

end

end A059991.P12230067145702612341

namespace A059991

/-- `A051437(and(n, n+1))` -/
def P12230067145702612341.Spec : Prop :=
  ∀ n, P12230067145702612341.a n = A059991 (n + 1)

end A059991

/-! ## A059991.P7312930887088444026

`A056450(and(n, n+1))`
-/

namespace A059991.P7312930887088444026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 (Nat.land n (n + 1))

end

end A059991.P7312930887088444026

namespace A059991

/-- `A056450(and(n, n+1))` -/
def P7312930887088444026.Spec : Prop :=
  ∀ n, P7312930887088444026.a n = A059991 (n + 1)

end A059991

/-! ## A059991.P7668916275551528849

`A084221(and(n, n+1))`
-/

namespace A059991.P7668916275551528849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 (Nat.land n (n + 1))

end

end A059991.P7668916275551528849

namespace A059991

/-- `A084221(and(n, n+1))` -/
def P7668916275551528849.Spec : Prop :=
  ∀ n, P7668916275551528849.a n = A059991 (n + 1)

end A059991

/-! ## A059991.P6926985617193785008

`A092809(and(n, n+1))`
-/

namespace A059991.P6926985617193785008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092809 (Nat.land n (n + 1))

end

end A059991.P6926985617193785008

namespace A059991

/-- `A092809(and(n, n+1))` -/
def P6926985617193785008.Spec : Prop :=
  ∀ n, P6926985617193785008.a n = A059991 (n + 1)

end A059991

/-! ## A059991.P9942148332628821566

`A099430(and(n, n+1))`
-/

namespace A059991.P9942148332628821566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099430 (Nat.land n (n + 1))

end

end A059991.P9942148332628821566

namespace A059991

/-- `A099430(and(n, n+1))` -/
def P9942148332628821566.Spec : Prop :=
  ∀ n, P9942148332628821566.a n = A059991 (n + 1)

end A059991

/-! ## A059991.P14327914195866081401

`A100455(and(n, n+1))`
-/

namespace A059991.P14327914195866081401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100455 (Nat.land n (n + 1))

end

end A059991.P14327914195866081401

namespace A059991

/-- `A100455(and(n, n+1))` -/
def P14327914195866081401.Spec : Prop :=
  ∀ n, P14327914195866081401.a n = A059991 (n + 1)

end A059991

/-! ## A059991.P7479987218571711342

`A122803(and(n, n+1))`
-/

namespace A059991.P7479987218571711342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (Nat.land n (n + 1))

end

end A059991.P7479987218571711342

namespace A059991

/-- `A122803(and(n, n+1))` -/
def P7479987218571711342.Spec : Prop :=
  ∀ n, P7479987218571711342.a n = A059991 (n + 1)

end A059991

/-! ## A059991.P6672229338530884877

`A127804(and(n, n+1))`
-/

namespace A059991.P6672229338530884877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127804 (Nat.land n (n + 1))

end

end A059991.P6672229338530884877

namespace A059991

/-- `A127804(and(n, n+1))` -/
def P6672229338530884877.Spec : Prop :=
  ∀ n, P6672229338530884877.a n = A059991 (n + 1)

end A059991

/-! ## A059991.P3235525589422545160

`A154383(and(n, n+1))`
-/

namespace A059991.P3235525589422545160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154383 (Nat.land n (n + 1))

end

end A059991.P3235525589422545160

namespace A059991

/-- `A154383(and(n, n+1))` -/
def P3235525589422545160.Spec : Prop :=
  ∀ n, P3235525589422545160.a n = A059991 (n + 1)

end A059991

/-! ## A059991.P12960767467210475125

`A167784(and(n, n+1))`
-/

namespace A059991.P12960767467210475125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167784 (Nat.land n (n + 1))

end

end A059991.P12960767467210475125

namespace A059991

/-- `A167784(and(n, n+1))` -/
def P12960767467210475125.Spec : Prop :=
  ∀ n, P12960767467210475125.a n = A059991 (n + 1)

end A059991

/-!
# A059992: Numbers with an increasing number of nonprime divisors.

The programs for A059992, there is no canonical definition to state claims against.
-/

/-! ## A059992.P2126930349860443600

`A055079(A180040(n+1))`
-/

namespace A059992.P2126930349860443600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055079 (A180040 (n + 1)).toNat

end

end A059992.P2126930349860443600

/-! ## A059992.P3648911399568228195

`A055079(record[A180040(gcd(xor(1, n²), ∑[n]))])`
-/

namespace A059992.P3648911399568228195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180040 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A059992.P3648911399568228195

/-! ## A059992.P3106474875901858603

`A055079(record[A180040(ceil(C(or(1, n), n)/2))])`
-/

namespace A059992.P3106474875901858603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180040 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A059992.P3106474875901858603

/-! ## A059992.P1383285508454343186

`A055079(record[A146288(n+1)-A061394(n+1)])`
-/

namespace A059992.P1383285508454343186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146288 (n + 1) - A061394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A059992.P1383285508454343186

/-! ## A059992.P18101405473565096217

`A055079(record[A033273(n+1)])`
-/

namespace A059992.P18101405473565096217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055079 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A059992.P18101405473565096217

/-!
# A059993: Pinwheel numbers: a(n) = 2*n^2 + 6*n + 1.

The programs for A059993, the canonical program `A059993.P2562257220738069371` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059993 has offset 0).

The definition of A059993 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+6*n+1` (program `A059993.P2562257220738069371`, by `A059993.P2562257220738069371.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059993.P2562257220738069371

`2*n²+6*n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059993

/-- `2*n²+6*n+1` -/
def P2562257220738069371.Spec : Prop :=
  ∀ n, (P2562257220738069371.a n : ℤ) = A059993 n

theorem P2562257220738069371.correct : P2562257220738069371.Spec := by
  intro n
  simp only [A059993]

end A059993

/-! ## A059993.P2129591052122714247

`or(1, 4*(∑[n]+n))`
-/

namespace A059993.P2129591052122714247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A059993.P2129591052122714247

namespace A059993

/-- `or(1, 4*(∑[n]+n))` -/
def P2129591052122714247.Spec : Prop :=
  ∀ n, (P2129591052122714247.a n : ℤ) = A059993 n

end A059993

/-! ## A059993.P5064370748831024220

`xor(1, 4*(∑[n]+n))`
-/

namespace A059993.P5064370748831024220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A059993.P5064370748831024220

namespace A059993

/-- `xor(1, 4*(∑[n]+n))` -/
def P5064370748831024220.Spec : Prop :=
  ∀ n, (P5064370748831024220.a n : ℤ) = A059993 n

end A059993

/-! ## A059993.P12117038438889008525

`∑[a(n-1)+4]` with `a(0)=1, a(1)=8`
-/

namespace A059993.P12117038438889008525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059993.P12117038438889008525

namespace A059993

/-- `∑[a(n-1)+4]` -/
def P12117038438889008525.Spec : Prop :=
  ∀ n, (P12117038438889008525.a n : ℤ) = A059993 n

end A059993

/-! ## A059993.P16499355832071826872

`∑[ogf((1+6x-3x^2)/(1-2x+x^2))]`
-/

namespace A059993.P16499355832071826872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059993.P16499355832071826872

namespace A059993

/-- `∑[ogf((1+6x-3x^2)/(1-2x+x^2))]` -/
def P16499355832071826872.Spec : Prop :=
  ∀ n, P16499355832071826872.a n = A059993 n

end A059993

/-! ## A059993.P13771941248379036041

`ogf((1+6x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A059993.P13771941248379036041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -3] [1, -3, 3, -1] n

end

end A059993.P13771941248379036041

namespace A059993

/-- `ogf((1+6x-3x^2)/(1-3x+3x^2-x^3))` -/
def P13771941248379036041.Spec : Prop :=
  ∀ n, P13771941248379036041.a n = A059993 n

end A059993

/-! ## A059993.P16129975649653553573

`abs(3-4*C(n+2, 2))`
-/

namespace A059993.P16129975649653553573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (4 * Nat.choose (n + 2) 2 : ℤ)|

end

end A059993.P16129975649653553573

namespace A059993

/-- `abs(3-4*C(n+2, 2))` -/
def P16129975649653553573.Spec : Prop :=
  ∀ n, P16129975649653553573.a n = A059993 n

end A059993

/-! ## A059993.P16079432982119452247

`record[2*n*(n-3)+1]`
-/

namespace A059993.P16079432982119452247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * ((n : ℤ) - 3)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059993.P16079432982119452247

namespace A059993

/-- `record[2*n*(n-3)+1]` -/
def P16079432982119452247.Spec : Prop :=
  ∀ n, P16079432982119452247.a n = A059993 n

end A059993

/-! ## A059993.P16305969770489236798

`abs(xor((n+3)*2*n, -1))`
-/

namespace A059993.P16305969770489236798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((n + 3) * (2 * n) : ℤ) (-1)|

end

end A059993.P16305969770489236798

namespace A059993

/-- `abs(xor((n+3)*2*n, -1))` -/
def P16305969770489236798.Spec : Prop :=
  ∀ n, P16305969770489236798.a n = A059993 n

end A059993

/-! ## A059993.P9165692775497712821

`-xor((n+3)*2*n, -1)`
-/

namespace A059993.P9165692775497712821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((n + 3) * (2 * n) : ℤ) (-1)

end

end A059993.P9165692775497712821

namespace A059993

/-- `-xor((n+3)*2*n, -1)` -/
def P9165692775497712821.Spec : Prop :=
  ∀ n, P9165692775497712821.a n = A059993 n

end A059993

/-! ## A059993.P4916957658934345453

`ceil(1/acot((n+3)*2*n))`
-/

namespace A059993.P4916957658934345453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot ((n + 3) * (2 * n) : ℝ)⌉

end

end A059993.P4916957658934345453

namespace A059993

/-- `ceil(1/acot((n+3)*2*n))` -/
def P4916957658934345453.Spec : Prop :=
  ∀ n, P4916957658934345453.a n = A059993 n

end A059993

/-! ## A059993.P6558963536724296533

`abs(2*lcm(n+1, n+2)-3)`
-/

namespace A059993.P6558963536724296533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * Nat.lcm (n + 1) (n + 2) : ℤ) - 3|

end

end A059993.P6558963536724296533

namespace A059993

/-- `abs(2*lcm(n+1, n+2)-3)` -/
def P6558963536724296533.Spec : Prop :=
  ∀ n, P6558963536724296533.a n = A059993 n

end A059993

/-! ## A059993.P3522793490447176200

`abs(1-or(2, (n+3)*2*n))`
-/

namespace A059993.P3522793490447176200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lor 2 ((n + 3) * (2 * n)) : ℤ)|

end

end A059993.P3522793490447176200

namespace A059993

/-- `abs(1-or(2, (n+3)*2*n))` -/
def P3522793490447176200.Spec : Prop :=
  ∀ n, P3522793490447176200.a n = A059993 n

end A059993

/-! ## A059993.P13918132247048736829

`and((n+3)*2*n+1, -3)`
-/

namespace A059993.P13918132247048736829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 3) * (2 * n) + 1 : ℤ) (-3)

end

end A059993.P13918132247048736829

namespace A059993

/-- `and((n+3)*2*n+1, -3)` -/
def P13918132247048736829.Spec : Prop :=
  ∀ n, P13918132247048736829.a n = A059993 n

end A059993

/-! ## A059993.P16110470517566329610

`abs(1-xor(2, (n+3)*2*n))`
-/

namespace A059993.P16110470517566329610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.xor 2 ((n + 3) * (2 * n)) : ℤ)|

end

end A059993.P16110470517566329610

namespace A059993

/-- `abs(1-xor(2, (n+3)*2*n))` -/
def P16110470517566329610.Spec : Prop :=
  ∀ n, P16110470517566329610.a n = A059993 n

end A059993

/-! ## A059993.P15280361915342078928

`lcm(2, (n+3)*2*n+1)/2`
-/

namespace A059993.P15280361915342078928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((n + 3) * (2 * n) + 1) : ℚ) / 2

end

end A059993.P15280361915342078928

namespace A059993

/-- `lcm(2, (n+3)*2*n+1)/2` -/
def P15280361915342078928.Spec : Prop :=
  ∀ n, P15280361915342078928.a n = (A059993 n : ℚ)

end A059993

/-! ## A059993.P11678280906906317204

`∑[8-(a(n-1)/n-a(n-1))]` with `a(0)=1`
-/

namespace A059993.P11678280906906317204
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  8 - (f1 (n - 1) / (n : ℚ) - f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059993.P11678280906906317204

namespace A059993

/-- `∑[8-(a(n-1)/n-a(n-1))]` -/
def P11678280906906317204.Spec : Prop :=
  ∀ n, P11678280906906317204.a n = (A059993 n : ℚ)

end A059993

/-! ## A059993.P1894361219593145943

`(A078371(n)-3)/2`
-/

namespace A059993.P1894361219593145943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078371 n - 3 : ℚ) / 2

end

end A059993.P1894361219593145943

namespace A059993

/-- `(A078371(n)-3)/2` -/
def P1894361219593145943.Spec : Prop :=
  ∀ n, P1894361219593145943.a n = (A059993 n : ℚ)

end A059993

/-!
# A059994: Positions where number of periodic partitions increases.

The programs for A059994, there is no canonical definition to state claims against.
-/

/-! ## A059994.P3857794850722251096

`record[A024994(n+4)]`
-/

namespace A059994.P3857794850722251096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024994 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059994.P3857794850722251096

/-! ## A059994.P11060444643771925615

`A024994(A024995(n+2))`
-/

namespace A059994.P11060444643771925615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024994 (A024995 (n + 2)).toNat

end

end A059994.P11060444643771925615

/-! ## A059994.P799490893994438539

`∑{d}[A024995(n+2), A303280(#)]`
-/

namespace A059994.P799490893994438539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024995 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A303280 d

end

end A059994.P799490893994438539

/-! ## A059994.P1525559651602260500

`record[∑{d}[A002808(n+1), A303280(#)]]`
-/

namespace A059994.P1525559651602260500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A303280 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059994.P1525559651602260500

/-! ## A059994.P13159776508419587790

`record[A047966(n+4)-A000009(n+4)]`
-/

namespace A059994.P13159776508419587790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (n + 4) - A000009 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059994.P13159776508419587790

/-!
# A059995: Drop the final digit of n.

The programs for A059995, the canonical program `A059995.P135539884652528526` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059995 has offset 0).

The definition of A059995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059995.P135539884652528526

`floor(n/10)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059995

/-- `floor(n/10)` -/
def P135539884652528526.Spec : Prop :=
  ∀ n, P135539884652528526.a n = A059995 n

theorem P135539884652528526.correct : P135539884652528526.Spec := by
  intro n
  simp only [A059995]

end A059995

/-! ## A059995.P3764848214851488744

`a(n-10)+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=0, a(9)=0`
-/

namespace A059995.P3764848214851488744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 0, 0, 0, 0] fun n a =>
  a (n - 10) + 1

end

end A059995.P3764848214851488744

namespace A059995

/-- `a(n-10)+1` -/
def P3764848214851488744.Spec : Prop :=
  ∀ n, (P3764848214851488744.a n : ℤ) = A059995 n

end A059995

/-! ## A059995.P7726925786977466345

`(n-A010879(n))/10`
-/

namespace A059995.P7726925786977466345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A010879 n : ℚ) / 10

end

end A059995.P7726925786977466345

namespace A059995

/-- `(n-A010879(n))/10` -/
def P7726925786977466345.Spec : Prop :=
  ∀ n, P7726925786977466345.a n = (A059995 n : ℚ)

end A059995

/-! ## A059995.P14062722892232665650

`∑[val(∏{p}[n, #], 10)]`
-/

namespace A059995.P14062722892232665650
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059995.P14062722892232665650

namespace A059995

/-- `∑[val(∏{p}[n, #], 10)]` -/
def P14062722892232665650.Spec : Prop :=
  ∀ n, (P14062722892232665650.a n : ℤ) = A059995 n

end A059995

/-! ## A059995.P4119868946167713902

`(n-n%10)/10`
-/

namespace A059995.P4119868946167713902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((n % 10 : ℕ) : ℤ) : ℚ) / 10

end

end A059995.P4119868946167713902

namespace A059995

/-- `(n-n%10)/10` -/
def P4119868946167713902.Spec : Prop :=
  ∀ n, P4119868946167713902.a n = (A059995 n : ℚ)

end A059995

/-! ## A059995.P15839692379658648021

`round(cos(2)+n/10)`
-/

namespace A059995.P15839692379658648021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + ((n : ℚ) / 10 : ℝ))

end

end A059995.P15839692379658648021

namespace A059995

/-- `round(cos(2)+n/10)` -/
def P15839692379658648021.Spec : Prop :=
  ∀ n, P15839692379658648021.a n = A059995 n

end A059995

/-! ## A059995.P7212254902674474522

`ceil(cos(3)+n/10)`
-/

namespace A059995.P7212254902674474522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (3 : ℝ) + ((n : ℚ) / 10 : ℝ)⌉

end

end A059995.P7212254902674474522

namespace A059995

/-- `ceil(cos(3)+n/10)` -/
def P7212254902674474522.Spec : Prop :=
  ∀ n, P7212254902674474522.a n = A059995 n

end A059995

/-! ## A059995.P4821781588196035678

`ceil(n/10-sin(2))`
-/

namespace A059995.P4821781588196035678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 10 : ℝ) - Real.sin (2 : ℝ)⌉

end

end A059995.P4821781588196035678

namespace A059995

/-- `ceil(n/10-sin(2))` -/
def P4821781588196035678.Spec : Prop :=
  ∀ n, P4821781588196035678.a n = A059995 n

end A059995

/-! ## A059995.P1385940612800037069

`ceil(sin(5)+n/10)`
-/

namespace A059995.P1385940612800037069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (5 : ℝ) + ((n : ℚ) / 10 : ℝ)⌉

end

end A059995.P1385940612800037069

namespace A059995

/-- `ceil(sin(5)+n/10)` -/
def P1385940612800037069.Spec : Prop :=
  ∀ n, P1385940612800037069.a n = A059995 n

end A059995

/-! ## A059995.P16823316603621709174

`ceil(n/10-cos(6))`
-/

namespace A059995.P16823316603621709174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 10 : ℝ) - Real.cos (6 : ℝ)⌉

end

end A059995.P16823316603621709174

namespace A059995

/-- `ceil(n/10-cos(6))` -/
def P16823316603621709174.Spec : Prop :=
  ∀ n, P16823316603621709174.a n = A059995 n

end A059995

/-! ## A059995.P11239607144077164679

`∑[char[lcm(10, n+1)]]`
-/

namespace A059995.P11239607144077164679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059995.P11239607144077164679

namespace A059995

/-- `∑[char[lcm(10, n+1)]]` -/
def P11239607144077164679.Spec : Prop :=
  ∀ n, (P11239607144077164679.a n : ℤ) = A059995 n

end A059995

/-! ## A059995.P16425999387169162810

`ceil(n/10-tanh(2))`
-/

namespace A059995.P16425999387169162810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 10 : ℝ) - Real.tanh (2 : ℝ)⌉

end

end A059995.P16425999387169162810

namespace A059995

/-- `ceil(n/10-tanh(2))` -/
def P16425999387169162810.Spec : Prop :=
  ∀ n, P16425999387169162810.a n = A059995 n

end A059995

/-! ## A059995.P15643567934983232386

`round(cot(2)+n/10)`
-/

namespace A059995.P15643567934983232386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 : ℝ) + ((n : ℚ) / 10 : ℝ))

end

end A059995.P15643567934983232386

namespace A059995

/-- `round(cot(2)+n/10)` -/
def P15643567934983232386.Spec : Prop :=
  ∀ n, P15643567934983232386.a n = A059995 n

end A059995

/-! ## A059995.P2814228872647796494

`round(tan(9)+n/10)`
-/

namespace A059995.P2814228872647796494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (9 : ℝ) + ((n : ℚ) / 10 : ℝ))

end

end A059995.P2814228872647796494

namespace A059995

/-- `round(tan(9)+n/10)` -/
def P2814228872647796494.Spec : Prop :=
  ∀ n, P2814228872647796494.a n = A059995 n

end A059995

/-! ## A059995.P14116640261817237732

`round(n/10-sin(9))`
-/

namespace A059995.P14116640261817237732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 10 : ℝ) - Real.sin (9 : ℝ))

end

end A059995.P14116640261817237732

namespace A059995

/-- `round(n/10-sin(9))` -/
def P14116640261817237732.Spec : Prop :=
  ∀ n, P14116640261817237732.a n = A059995 n

end A059995

/-! ## A059995.P16423800339771261894

`round(n/10-acot(2))`
-/

namespace A059995.P16423800339771261894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 10 : ℝ) - SequenceMachineLib.acot (2 : ℝ))

end

end A059995.P16423800339771261894

namespace A059995

/-- `round(n/10-acot(2))` -/
def P16423800339771261894.Spec : Prop :=
  ∀ n, P16423800339771261894.a n = A059995 n

end A059995

/-! ## A059995.P6724958385081568849

`∑[char[a(n-1)+10]]` with `a(0)=10`
-/

namespace A059995.P6724958385081568849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f2 =>
  f2 (n - 1) + 10

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059995.P6724958385081568849

namespace A059995

/-- `∑[char[a(n-1)+10]]` -/
def P6724958385081568849.Spec : Prop :=
  ∀ n, (P6724958385081568849.a n : ℤ) = A059995 n

end A059995

/-! ## A059995.P4361105063181957513

`∑[char[10*C(n+1, n)]]`
-/

namespace A059995.P4361105063181957513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (n + 1) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059995.P4361105063181957513

namespace A059995

/-- `∑[char[10*C(n+1, n)]]` -/
def P4361105063181957513.Spec : Prop :=
  ∀ n, (P4361105063181957513.a n : ℤ) = A059995 n

end A059995

/-! ## A059995.P2636838841102294792

`∑[char[10*(n+1)]]%(n+1)`
-/

namespace A059995.P2636838841102294792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A059995.P2636838841102294792

namespace A059995

/-- `∑[char[10*(n+1)]]%(n+1)` -/
def P2636838841102294792.Spec : Prop :=
  ∀ n, (P2636838841102294792.a n : ℤ) = A059995 n

end A059995

/-! ## A059995.P1040153410389727118

`∑[((n+1)%2)%gcd(5, n)]-1`
-/

namespace A059995.P1040153410389727118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 % Nat.gcd 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A059995.P1040153410389727118

namespace A059995

/-- `∑[((n+1)%2)%gcd(5, n)]-1` -/
def P1040153410389727118.Spec : Prop :=
  ∀ n, P1040153410389727118.a n = A059995 n

end A059995

/-!
# A059996: Concatenate Catalan numbers (A000108).

The programs for A059996, there is no canonical definition to state claims against.
-/

/-! ## A059996.P15199937969977282401

`A000027(A132938(n)-A000332(n))`
-/

namespace A059996.P15199937969977282401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A132938 n - A000332 n).toNat

end

end A059996.P15199937969977282401

/-!
# A059997: a(n) = (n/2)*(n + 1)*(3*n + 11).

The programs for A059997, the canonical program `A059997.P5927941598139952903` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059997 has offset 1).

The definition of A059997 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)/2*(n+2)*(3*(n+1)+11)` (program `A059997.P12756444625166457057`, by `A059997.P12756444625166457057.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059997.P12756444625166457057

`(n+1)/2*(n+2)*(3*(n+1)+11)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A059997.P12756444625166457057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * ((n + 2) * (3 * (n + 1) + 11) : ℚ)

end

end A059997.P12756444625166457057

namespace A059997

/-- `(n+1)/2*(n+2)*(3*(n+1)+11)` -/
def P12756444625166457057.Spec : Prop :=
  ∀ n, P12756444625166457057.a n = (A059997 (n + 1) : ℚ)

theorem P12756444625166457057.correct : P12756444625166457057.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A059997, Nat.add_sub_cancel, A059997.P12756444625166457057.a, A059997.P5927941598139952903.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A059997, Nat.add_sub_cancel, A059997.P12756444625166457057.a, A059997.P5927941598139952903.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A059997

/-! ## A059997.P5927941598139952903

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=14, a(1)=51, a(2)=120, a(3)=230`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059997

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5927941598139952903.Spec : Prop :=
  ∀ n, P5927941598139952903.a n = A059997 (n + 1)

theorem P5927941598139952903.correct : P5927941598139952903.Spec := by
  intro n
  simp only [A059997, Nat.add_sub_cancel]

end A059997

/-! ## A059997.P10733836514354206835

`abs(∑[∑[a(n-1)+9]])` with `a(0)=14`
-/

namespace A059997.P10733836514354206835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [14] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059997.P10733836514354206835

namespace A059997

/-- `abs(∑[∑[a(n-1)+9]])` -/
def P10733836514354206835.Spec : Prop :=
  ∀ n, (P10733836514354206835.a n : ℤ) = A059997 (n + 1)

end A059997

/-! ## A059997.P6483668803861269053

`floor(∑[∑[a(n-1)+9]])` with `a(0)=14`

`floor` is left out, it is the identity on integers.
-/

namespace A059997.P6483668803861269053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [14] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059997.P6483668803861269053

namespace A059997

/-- `floor(∑[∑[a(n-1)+9]])` -/
def P6483668803861269053.Spec : Prop :=
  ∀ n, (P6483668803861269053.a n : ℤ) = A059997 (n + 1)

end A059997

/-! ## A059997.P7055435477573230947

`ceil(∑[∑[a(n-1)+9]])` with `a(0)=14`

`ceil` is left out, it is the identity on integers.
-/

namespace A059997.P7055435477573230947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [14] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059997.P7055435477573230947

namespace A059997

/-- `ceil(∑[∑[a(n-1)+9]])` -/
def P7055435477573230947.Spec : Prop :=
  ∀ n, (P7055435477573230947.a n : ℤ) = A059997 (n + 1)

end A059997

/-! ## A059997.P13846245483754199390

`∑[a(n-1)+9]+a(n-1)` with `a(0)=14`
-/

namespace A059997.P13846245483754199390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [14] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.rec [14] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A059997.P13846245483754199390

namespace A059997

/-- `∑[a(n-1)+9]+a(n-1)` -/
def P13846245483754199390.Spec : Prop :=
  ∀ n, (P13846245483754199390.a n : ℤ) = A059997 (n + 1)

end A059997

/-! ## A059997.P1756743828018588553

`A226514(n)+A127736(n+1)`
-/

namespace A059997.P1756743828018588553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226514 n + A127736 (n + 1)

end

end A059997.P1756743828018588553

namespace A059997

/-- `A226514(n)+A127736(n+1)` -/
def P1756743828018588553.Spec : Prop :=
  ∀ n, P1756743828018588553.a n = A059997 (n + 1)

end A059997

/-! ## A059997.P10673036835356974186

`A130809(n+3)+A096957(n)`
-/

namespace A059997.P10673036835356974186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130809 (n + 3) + A096957 n

end

end A059997.P10673036835356974186

namespace A059997

/-- `A130809(n+3)+A096957(n)` -/
def P10673036835356974186.Spec : Prop :=
  ∀ n, P10673036835356974186.a n = A059997 (n + 1)

end A059997

/-! ## A059997.P7959630466517095486

`∑[A081271(n+1)]+(n+1)²`
-/

namespace A059997.P7959630466517095486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A059997.P7959630466517095486

namespace A059997

/-- `∑[A081271(n+1)]+(n+1)²` -/
def P7959630466517095486.Spec : Prop :=
  ∀ n, P7959630466517095486.a n = A059997 (n + 1)

end A059997

/-! ## A059997.P12716031220617863539

`A085789(n+2)+(n+2)*(n-2)`
-/

namespace A059997.P12716031220617863539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085789 (n + 2) + (n + 2 : ℤ) * ((n : ℤ) - 2)

end

end A059997.P12716031220617863539

namespace A059997

/-- `A085789(n+2)+(n+2)*(n-2)` -/
def P12716031220617863539.Spec : Prop :=
  ∀ n, P12716031220617863539.a n = A059997 (n + 1)

end A059997

/-! ## A059997.P3680642250584046415

`A317637(n+1)+A267370(n+1)`
-/

namespace A059997.P3680642250584046415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317637 (n + 1) + A267370 (n + 1)

end

end A059997.P3680642250584046415

namespace A059997

/-- `A317637(n+1)+A267370(n+1)` -/
def P3680642250584046415.Spec : Prop :=
  ∀ n, P3680642250584046415.a n = A059997 (n + 1)

end A059997

/-! ## A059997.P7119783127344549806

`A006002(n+1)+2*A267370(n+1)`
-/

namespace A059997.P7119783127344549806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (n + 1) + 2 * A267370 (n + 1)

end

end A059997.P7119783127344549806

namespace A059997

/-- `A006002(n+1)+2*A267370(n+1)` -/
def P7119783127344549806.Spec : Prop :=
  ∀ n, P7119783127344549806.a n = A059997 (n + 1)

end A059997

/-! ## A059997.P16878895248685595217

`A267370(n+1)+2*A077414(n+2)`
-/

namespace A059997.P16878895248685595217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267370 (n + 1) + 2 * A077414 (n + 2)

end

end A059997.P16878895248685595217

namespace A059997

/-- `A267370(n+1)+2*A077414(n+2)` -/
def P16878895248685595217.Spec : Prop :=
  ∀ n, P16878895248685595217.a n = A059997 (n + 1)

end A059997

/-! ## A059997.P14175798212930602810

`A163756(n+1)+n*A045943(n+1)`
-/

namespace A059997.P14175798212930602810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163756 (n + 1) + (n : ℤ) * A045943 (n + 1)

end

end A059997.P14175798212930602810

namespace A059997

/-- `A163756(n+1)+n*A045943(n+1)` -/
def P14175798212930602810.Spec : Prop :=
  ∀ n, P14175798212930602810.a n = A059997 (n + 1)

end A059997

/-! ## A059997.P13604818164200621081

`(n+1)²+A117560(n+3)+A058794(n)`
-/

namespace A059997.P13604818164200621081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A117560 (n + 3) + A058794 n)

end

end A059997.P13604818164200621081

namespace A059997

/-- `(n+1)²+A117560(n+3)+A058794(n)` -/
def P13604818164200621081.Spec : Prop :=
  ∀ n, P13604818164200621081.a n = A059997 (n + 1)

end A059997

/-!
# A059999: a(n) = (1/6)*n^5 - (19/8)*n^4 + (51/4)*n^3 - (253/8)*n^2 + (445/12)*n - 14.

The programs for A059999, the canonical program `A059999.P16265871789088834335` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059999 has offset 1).

The definition of A059999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059999.P16265871789088834335

`(4*(n+1)^5-57*(n+1)^4+306*(n+1)^3-759*(n+1)²+890*(n+1))/24-14`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059999

/-- `(4*(n+1)^5-57*(n+1)^4+306*(n+1)^3-759*(n+1)²+890*(n+1))/24-14` -/
def P16265871789088834335.Spec : Prop :=
  ∀ n, P16265871789088834335.a n = (A059999 (n + 1) : ℚ)

end A059999

/-! ## A059999.P8895476177732562070

`A056239(A312506(∑[n!]))`
-/

namespace A059999.P8895476177732562070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A312506 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A059999.P8895476177732562070

namespace A059999

/-- `A056239(A312506(∑[n!]))` -/
def P8895476177732562070.Spec : Prop :=
  ∀ n, P8895476177732562070.a n = A059999 (n + 1)

end A059999

