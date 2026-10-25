import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A260200: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00010001.

The programs for A260200, there is no canonical definition to state claims against.
-/

/-! ## A260200.P22930053711185647

`A260207(∑[n]+1)`
-/

namespace A260200.P22930053711185647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260200.P22930053711185647

/-! ## A260200.P3197629434547173617

`lcm(2, A260207(A000124(n)))`
-/

namespace A260200.P3197629434547173617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A260207 (A000124 n).toNat)

end

end A260200.P3197629434547173617

/-! ## A260200.P13135563514910594023

`record[A010054(n)*A260207(n+1)]`
-/

namespace A260200.P13135563514910594023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A260207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260200.P13135563514910594023

/-! ## A260200.P13344596332251427115

`record[gcd(A002262(n), A260207(n+1))]`
-/

namespace A260200.P13344596332251427115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A260207 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260200.P13344596332251427115

/-! ## A260200.P2385832616025205925

`record[A260207(n+1)/A008292(n+1)]`
-/

namespace A260200.P2385832616025205925
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260207 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260200.P2385832616025205925

/-!
# A260201: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00010001.

The programs for A260201, there is no canonical definition to state claims against.
-/

/-! ## A260201.P7576619355173949121

`A260207(∑[n+1]+2)`
-/

namespace A260201.P7576619355173949121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A260201.P7576619355173949121

/-! ## A260201.P268550294971414849

`record[A010054(n)*A260207(n+2)]`
-/

namespace A260201.P268550294971414849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A260207 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260201.P268550294971414849

/-! ## A260201.P15869715097705359904

`record[gcd(A002262(n), A260207(n+2))]`
-/

namespace A260201.P15869715097705359904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A260207 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260201.P15869715097705359904

/-!
# A260202: Number of (n+2) X (3+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00010001.

The programs for A260202, there is no canonical definition to state claims against.
-/

/-! ## A260202.P11903530829832280312

`A260207(∑[n+2]+4)`
-/

namespace A260202.P11903530829832280312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A260202.P11903530829832280312

/-! ## A260202.P6119178356461409807

`or(A000035(n), A260207(A167614(n+1)))`
-/

namespace A260202.P6119178356461409807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A260207 (A167614 (n + 1)).toNat)

end

end A260202.P6119178356461409807

/-! ## A260202.P1200209791764005888

`or(A000038(n), A260207(A167614(n+1)))`
-/

namespace A260202.P1200209791764005888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A260207 (A167614 (n + 1)).toNat)

end

end A260202.P1200209791764005888

/-! ## A260202.P1343182094584834273

`or(A057427(n), A260207(A167614(n+1)))`
-/

namespace A260202.P1343182094584834273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 n) (A260207 (A167614 (n + 1)).toNat)

end

end A260202.P1343182094584834273

/-! ## A260202.P2502512916574894354

`or(A000038(n), A260207(A046691(n)+7))`
-/

namespace A260202.P2502512916574894354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A260207 (A046691 n + 7).toNat)

end

end A260202.P2502512916574894354

/-!
# A260203: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00010001.

The programs for A260203, there is no canonical definition to state claims against.
-/

/-! ## A260203.P10345715584879516607

`A260207(A374004(n+1))`
-/

namespace A260203.P10345715584879516607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A374004 (n + 1)).toNat

end

end A260203.P10345715584879516607

/-! ## A260203.P9298200256850850319

`A260207(A141214(n)+7)`
-/

namespace A260203.P9298200256850850319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A141214 n + 7).toNat

end

end A260203.P9298200256850850319

/-! ## A260203.P3513235572100117915

`A260207(A055999(n)+10)`
-/

namespace A260203.P3513235572100117915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A055999 n + 10).toNat

end

end A260203.P3513235572100117915

/-! ## A260203.P12811712364808935131

`A260207(A167614(n+2)+1)`
-/

namespace A260203.P12811712364808935131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A167614 (n + 2) + 1).toNat

end

end A260203.P12811712364808935131

/-! ## A260203.P10045338962678768942

`A260207(A166136(n+2)-2)`
-/

namespace A260203.P10045338962678768942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A166136 (n + 2) - 2).toNat

end

end A260203.P10045338962678768942

/-!
# A260204: Number of (n+2) X (5+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00010001.

The programs for A260204, there is no canonical definition to state claims against.
-/

/-! ## A260204.P17427727059380799883

`A260207(A374005(n+1))`
-/

namespace A260204.P17427727059380799883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A374005 (n + 1)).toNat

end

end A260204.P17427727059380799883

/-! ## A260204.P13342722311273385811

`A260207(A167499(n+3))`
-/

namespace A260204.P13342722311273385811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A167499 (n + 3)).toNat

end

end A260204.P13342722311273385811

/-! ## A260204.P14652656636987160526

`A260207(A000217(n+4)+5)`
-/

namespace A260204.P14652656636987160526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A000217 (n + 4) + 5).toNat

end

end A260204.P14652656636987160526

/-! ## A260204.P17484413447218864920

`A260207(A161680(n+5)+5)`
-/

namespace A260204.P17484413447218864920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A161680 (n + 5) + 5).toNat

end

end A260204.P17484413447218864920

/-! ## A260204.P3776085374046084729

`A260207(Δ[A264443(n)])`
-/

namespace A260204.P3776085374046084729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (f1 (n + 1) - f1 n).toNat

end

end A260204.P3776085374046084729

/-!
# A260205: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00010001.

The programs for A260205, there is no canonical definition to state claims against.
-/

/-! ## A260205.P15712153217488196841

`A260207(A374007(n+1))`
-/

namespace A260205.P15712153217488196841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A374007 (n + 1)).toNat

end

end A260205.P15712153217488196841

/-! ## A260205.P7700160846883541439

`A260207(A000217(n+5)+6)`
-/

namespace A260205.P7700160846883541439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A000217 (n + 5) + 6).toNat

end

end A260205.P7700160846883541439

/-! ## A260205.P771431427914285319

`A260207(A161680(n+6)+6)`
-/

namespace A260205.P771431427914285319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A161680 (n + 6) + 6).toNat

end

end A260205.P771431427914285319

/-! ## A260205.P4970084090885944497

`A260207(A046691(n+3)+10)`
-/

namespace A260205.P4970084090885944497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A046691 (n + 3) + 10).toNat

end

end A260205.P4970084090885944497

/-! ## A260205.P12582600225250132879

`A260207(A052905(n+3))`
-/

namespace A260205.P12582600225250132879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A052905 (n + 3)).toNat

end

end A260205.P12582600225250132879

/-!
# A260206: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00010001.

The programs for A260206, there is no canonical definition to state claims against.
-/

/-! ## A260206.P12821406253775834302

`A260207(A374008(n+1))`
-/

namespace A260206.P12821406253775834302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A374008 (n + 1)).toNat

end

end A260206.P12821406253775834302

/-! ## A260206.P18035317025085232658

`A260207(A167499(n+5)+2)`
-/

namespace A260206.P18035317025085232658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A167499 (n + 5) + 2).toNat

end

end A260206.P18035317025085232658

/-! ## A260206.P12926987276912578063

`A260207(A167614(n+5)+4)`
-/

namespace A260206.P12926987276912578063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A167614 (n + 5) + 4).toNat

end

end A260206.P12926987276912578063

/-! ## A260206.P16444662615718098210

`A260207(A000217(n+6)+7)`
-/

namespace A260206.P16444662615718098210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A000217 (n + 6) + 7).toNat

end

end A260206.P16444662615718098210

/-! ## A260206.P598012462793598057

`A260207(A000124(n+7)-(n+1))`
-/

namespace A260206.P598012462793598057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260207 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A260206.P598012462793598057

/-!
# A260208: Least prime p such that 2p*n+1 = prime(q*n) for some prime q.

The programs for A260208, there is no canonical definition to state claims against.
-/

/-! ## A260208.P2001458009182579301

`A226078(∏{p}[n+1, #^val(n+1, #²)]²+n^6+1)`
-/

namespace A260208.P2001458009182579301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226078 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 + (n ^ 6 + 1))

end

end A260208.P2001458009182579301

/-!
# A260209: Values A such that p=prime(n) satisfies binomial(2p-1, p-1) == 1 + A*p (mod p^4).

The programs for A260209, there is no canonical definition to state claims against.
-/

/-! ## A260209.P8757311797467619784

`floor(A242473(n+1)/A000040(n+1))`
-/

namespace A260209.P8757311797467619784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A242473 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A260209.P8757311797467619784

/-! ## A260209.P295297993801555713

`floor(A242473(n+1)/p?[A015919(n+1)])`
-/

namespace A260209.P295297993801555713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A242473 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A260209.P295297993801555713

/-! ## A260209.P8771949679469164247

`floor(A242473(n+1)/A008578(n+2))`
-/

namespace A260209.P8771949679469164247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A242473 (n + 1) : ℚ) / (A008578 (n + 2) : ℚ)⌋

end

end A260209.P8771949679469164247

/-! ## A260209.P11657420659080339786

`floor(A242473(n+1)/A182986(n+2))`
-/

namespace A260209.P11657420659080339786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A242473 (n + 1) : ℚ) / (A182986 (n + 2) : ℚ)⌋

end

end A260209.P11657420659080339786

/-! ## A260209.P7467282974888557995

`floor(A242473(n+1)/p?[A000961(n+1)])`
-/

namespace A260209.P7467282974888557995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A242473 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A260209.P7467282974888557995

/-! ## A260209.P6132407062417356565

`floor(A242473(n+1)/p?[A344180(n)])`
-/

namespace A260209.P6132407062417356565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A242473 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A260209.P6132407062417356565

/-! ## A260209.P5606101523969824935

`floor(A242473(n+1)/p?[A042996(n+1)])`
-/

namespace A260209.P5606101523969824935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A242473 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A260209.P5606101523969824935

/-! ## A260209.P15211910340178691060

`floor(A242473(n+1)/A006530(A001248(n+1)))`
-/

namespace A260209.P15211910340178691060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A242473 (n + 1) : ℚ) / (A006530 (A001248 (n + 1)).toNat : ℚ)⌋

end

end A260209.P15211910340178691060

/-!
# A260210: A034602(n) modulo prime(n).

The programs for A260210, there is no canonical definition to state claims against.
-/

/-! ## A260210.P12186320737236726310

`A260209(n+3)/A001248(n+3)`
-/

namespace A260210.P12186320737236726310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260209 (n + 3) : ℚ) / (A001248 (n + 3) : ℚ)

end

end A260210.P12186320737236726310

/-! ## A260210.P12297029256048827933

`A260209(n+3)/A000040(n+3)²`
-/

namespace A260210.P12297029256048827933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260209 (n + 3) : ℚ) / (A000040 (n + 3) ^ 2 : ℚ)

end

end A260210.P12297029256048827933

/-! ## A260210.P2924912495586433941

`A005843(A177783(n+3))%A008578(n+4)`
-/

namespace A260210.P2924912495586433941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A177783 (n + 3)).toNat) (A008578 (n + 4))

end

end A260210.P2924912495586433941

/-!
# A260211: Irregular triangle read by rows, T(n,k) is the decimal number conversion from an n-bit symmetric binary table arranged in ascending order for n > 1.

The programs for A260211, there is no canonical definition to state claims against.
-/

/-! ## A260211.P12936064531246282540

`A049776(n+2)-1`
-/

namespace A260211.P12936064531246282540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049776 (n + 2) - 1

end

end A260211.P12936064531246282540

/-! ## A260211.P2260616007012517330

`abs(∑[-Δ[A049776(n+1)]])`
-/

namespace A260211.P2260616007012517330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A260211.P2260616007012517330

/-! ## A260211.P1467402661913931731

`A023443(A049776(n+2))`
-/

namespace A260211.P1467402661913931731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A049776 (n + 2)).toNat

end

end A260211.P1467402661913931731

/-! ## A260211.P5356540144341554905

`∑[Δ[A049776(n+1)]%A000124(n)]`
-/

namespace A260211.P5356540144341554905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260211.P5356540144341554905

/-! ## A260211.P1790996315622896960

`∑[A000007(n+1)+Δ[A049776(n+1)]]`
-/

namespace A260211.P1790996315622896960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260211.P1790996315622896960

/-! ## A260211.P16832050728815472582

`∑[Δ[A049776(n+1)]*A000034(2*n)]`
-/

namespace A260211.P16832050728815472582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000034 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260211.P16832050728815472582

/-! ## A260211.P15781132800491381049

`∑[A049776(n+2)]%∑[A049776(n+1)]`
-/

namespace A260211.P15781132800491381049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049776 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A260211.P15781132800491381049

/-! ## A260211.P3854548256717788821

`∑[A014963(4*n+2)*Δ[A049776(n+1)]]`
-/

namespace A260211.P3854548256717788821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260211.P3854548256717788821

/-! ## A260211.P5976151720878622753

`A053645(A341257(n+1)+1)`
-/

namespace A260211.P5976151720878622753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A341257 (n + 1) + 1).toNat

end

end A260211.P5976151720878622753

/-!
# A260212: Integers n such that core(n), core(n+1), core(n+2) are smaller than n^(1/2) where core(n) is A007913(n), the squarefree part of n.

The programs for A260212, there is no canonical definition to state claims against.
-/

/-! ## A260212.P13654227922750422770

`A348120(record[A347773(n+3)])`
-/

namespace A260212.P13654227922750422770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347773 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A260212.P13654227922750422770

/-!
# A260214: a(n) is the first triangular number whose decimal representation uses n distinct digits.

The programs for A260214, there is no canonical definition to state claims against.
-/

/-! ## A260214.P13014036034588817440

`A255678(n+1)*(A255678(n+1)+1)/2`
-/

namespace A260214.P13014036034588817440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255678 (n + 1) * (A255678 (n + 1) + 1) : ℚ) / 2

end

end A260214.P13014036034588817440

/-! ## A260214.P4898185936828869604

`C(A255678(n+1)+1, 2)`
-/

namespace A260214.P4898185936828869604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A255678 (n + 1) + 1).toNat 2

end

end A260214.P4898185936828869604

/-! ## A260214.P13656057834644776756

`A000217(A255678(n+1))`
-/

namespace A260214.P13656057834644776756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A255678 (n + 1)).toNat

end

end A260214.P13656057834644776756

/-! ## A260214.P10853488337063882046

`A161680(A255678(n+1)+1)`
-/

namespace A260214.P10853488337063882046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A255678 (n + 1) + 1).toNat

end

end A260214.P10853488337063882046

/-!
# A260215: Expansion of chi(-q) * chi(q^9) / (chi(q) * chi(-q^9)) in powers of q where chi() is a Ramanujan theta function.

The programs for A260215, there is no canonical definition to state claims against.
-/

/-! ## A260215.P3682010507497577886

`(-1)^n*A261156(n)`
-/

namespace A260215.P3682010507497577886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A261156 n

end

end A260215.P3682010507497577886

/-! ## A260215.P2346707585706095384

`A261154(n)*A280560(n)`
-/

namespace A260215.P2346707585706095384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261154 n * A280560 n

end

end A260215.P2346707585706095384

/-! ## A260215.P3070753722273593724

`A261156(n)/A033999(n)`
-/

namespace A260215.P3070753722273593724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261156 n : ℚ) / (A033999 n : ℚ)

end

end A260215.P3070753722273593724

/-! ## A260215.P16784958125193133976

`A217771(n)*A261156(n)/A261321(n)`
-/

namespace A260215.P16784958125193133976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217771 n * A261156 n : ℚ) / (A261321 n : ℚ)

end

end A260215.P16784958125193133976

/-! ## A260215.P3722989563310797137

`A187100(n+1)*A261156(n)/A228447(n+1)`
-/

namespace A260215.P3722989563310797137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187100 (n + 1) * A261156 n : ℚ) / (A228447 (n + 1) : ℚ)

end

end A260215.P3722989563310797137

/-! ## A260215.P16478685973983702070

`A186924(n)*A261156(n)/A261320(n)`
-/

namespace A260215.P16478685973983702070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186924 n * A261156 n : ℚ) / (A261320 n : ℚ)

end

end A260215.P16478685973983702070

/-!
# A260217: Number of base-3 n-digit pandigital numbers.

The programs for A260217, the canonical program `A260217.P18320538759642150908` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260217 has offset 1).

The definition of A260217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260217.P13544315589251752541

`2*3^n-2^(n+2)+2`
-/

namespace A260217.P13544315589251752541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 3 ^ n : ℤ) - (2 ^ (n + 2) : ℤ) + 2

end

end A260217.P13544315589251752541

namespace A260217

/-- `2*3^n-2^(n+2)+2` -/
def P13544315589251752541.Spec : Prop :=
  ∀ n, P13544315589251752541.a n = A260217 (n + 1)

theorem P13544315589251752541.correct : P13544315589251752541.Spec := by
  intro n
  simp only [A260217, Nat.add_sub_cancel, A260217.P13544315589251752541.a, A260217.P18320538759642150908.a, A028243, A028243.P7259272612448304247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A260217

/-! ## A260217.P18320538759642150908

`2*A028243(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A260217

/-- `2*A028243(n+1)` -/
def P18320538759642150908.Spec : Prop :=
  ∀ n, P18320538759642150908.a n = A260217 (n + 1)

theorem P18320538759642150908.correct : P18320538759642150908.Spec := by
  intro n
  simp only [A260217, Nat.add_sub_cancel]

end A260217

/-! ## A260217.P3447993991772092695

`4*A000392(n+1)`
-/

namespace A260217.P3447993991772092695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000392 (n + 1)

end

end A260217.P3447993991772092695

namespace A260217

/-- `4*A000392(n+1)` -/
def P3447993991772092695.Spec : Prop :=
  ∀ n, P3447993991772092695.a n = A260217 (n + 1)

end A260217

/-! ## A260217.P2291972194238689289

`∑[ogf(4x^2/(1-5x+6x^2))]`
-/

namespace A260217.P2291972194238689289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 4] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260217.P2291972194238689289

namespace A260217

/-- `∑[ogf(4x^2/(1-5x+6x^2))]` -/
def P2291972194238689289.Spec : Prop :=
  ∀ n, P2291972194238689289.a n = A260217 (n + 1)

end A260217

/-! ## A260217.P16091467595899272187

`2*(A101052(n)-1)`
-/

namespace A260217.P16091467595899272187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A101052 n - 1)

end

end A260217.P16091467595899272187

namespace A260217

/-- `2*(A101052(n)-1)` -/
def P16091467595899272187.Spec : Prop :=
  ∀ n, P16091467595899272187.a n = A260217 (n + 1)

theorem P16091467595899272187.correct : P16091467595899272187.Spec := by
  intro n
  simp only [A260217, Nat.add_sub_cancel, A260217.P16091467595899272187.a, A260217.P18320538759642150908.a, A028243, A028243.P7259272612448304247.a, A101052, A101052.P18135241430881834357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A260217

/-! ## A260217.P18436104987128850957

`4*(A134063(n)-1)`
-/

namespace A260217.P18436104987128850957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A134063 n - 1)

end

end A260217.P18436104987128850957

namespace A260217

/-- `4*(A134063(n)-1)` -/
def P18436104987128850957.Spec : Prop :=
  ∀ n, P18436104987128850957.a n = A260217 (n + 1)

end A260217

/-! ## A260217.P10132983224476941255

`∑[2*A304973(2*n)]`
-/

namespace A260217.P10132983224476941255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A304973 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260217.P10132983224476941255

namespace A260217

/-- `∑[2*A304973(2*n)]` -/
def P10132983224476941255.Spec : Prop :=
  ∀ n, P10132983224476941255.a n = A260217 (n + 1)

end A260217

/-! ## A260217.P10722941612475707829

`2*(A003063(n+1)+1)`
-/

namespace A260217.P10722941612475707829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003063 (n + 1) + 1)

end

end A260217.P10722941612475707829

namespace A260217

/-- `2*(A003063(n+1)+1)` -/
def P10722941612475707829.Spec : Prop :=
  ∀ n, P10722941612475707829.a n = A260217 (n + 1)

end A260217

/-! ## A260217.P3953902903293078047

`2/3*A001117(n+1)`
-/

namespace A260217.P3953902903293078047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A001117 (n + 1) : ℚ)

end

end A260217.P3953902903293078047

namespace A260217

/-- `2/3*A001117(n+1)` -/
def P3953902903293078047.Spec : Prop :=
  ∀ n, P3953902903293078047.a n = (A260217 (n + 1) : ℚ)

theorem P3953902903293078047.correct : P3953902903293078047.Spec := by
  intro n
  simp only [A260217, Nat.add_sub_cancel, A260217.P3953902903293078047.a, A260217.P18320538759642150908.a, A001117, A001117.P5586515972310678558.a, A028243, A028243.P7259272612448304247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A260217

/-! ## A260217.P8769118460542801061

`4*A056509(2*n+1)`
-/

namespace A260217.P8769118460542801061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A056509 (2 * n + 1)

end

end A260217.P8769118460542801061

namespace A260217

/-- `4*A056509(2*n+1)` -/
def P8769118460542801061.Spec : Prop :=
  ∀ n, P8769118460542801061.a n = A260217 (n + 1)

end A260217

/-! ## A260217.P12704239975726018839

`Δ[3^n+n-A132753(n+1)]`
-/

namespace A260217.P12704239975726018839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n + n : ℤ) - A132753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260217.P12704239975726018839

namespace A260217

/-- `Δ[3^n+n-A132753(n+1)]` -/
def P12704239975726018839.Spec : Prop :=
  ∀ n, P12704239975726018839.a n = A260217 (n + 1)

theorem P12704239975726018839.correct : P12704239975726018839.Spec := by
  intro n
  simp only [A260217, Nat.add_sub_cancel, A260217.P12704239975726018839.f1, A260217.P12704239975726018839.a, A260217.P18320538759642150908.a, A028243, A028243.P7259272612448304247.a, A132753, A132753.P2439916606810151964.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A260217

/-! ## A260217.P14596960402908761047

`A135914(n)%A134350(n)`
-/

namespace A260217.P14596960402908761047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135914 n) (A134350 n)

end

end A260217.P14596960402908761047

namespace A260217

/-- `A135914(n)%A134350(n)` -/
def P14596960402908761047.Spec : Prop :=
  ∀ n, P14596960402908761047.a n = A260217 (n + 1)

end A260217

/-! ## A260217.P15672648319143380285

`A102485(n)%A058481(n+1)`
-/

namespace A260217.P15672648319143380285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102485 n) (A058481 (n + 1))

end

end A260217.P15672648319143380285

namespace A260217

/-- `A102485(n)%A058481(n+1)` -/
def P15672648319143380285.Spec : Prop :=
  ∀ n, P15672648319143380285.a n = A260217 (n + 1)

end A260217

/-! ## A260217.P17127526243178811914

`lcm(A010713(n), A028243(n+1))`
-/

namespace A260217.P17127526243178811914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010713 n) (A028243 (n + 1))

end

end A260217.P17127526243178811914

namespace A260217

/-- `lcm(A010713(n), A028243(n+1))` -/
def P17127526243178811914.Spec : Prop :=
  ∀ n, (P17127526243178811914.a n : ℤ) = A260217 (n + 1)

end A260217

/-! ## A260217.P1817115038055170329

`A171495(n)%A171270(n+1)`
-/

namespace A260217.P1817115038055170329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171495 n) (A171270 (n + 1))

end

end A260217.P1817115038055170329

namespace A260217

/-- `A171495(n)%A171270(n+1)` -/
def P1817115038055170329.Spec : Prop :=
  ∀ n, P1817115038055170329.a n = A260217 (n + 1)

end A260217

/-! ## A260217.P18125466753837584786

`A382677(n)%A006230(n+4)`
-/

namespace A260217.P18125466753837584786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382677 n) (A006230 (n + 4))

end

end A260217.P18125466753837584786

namespace A260217

/-- `A382677(n)%A006230(n+4)` -/
def P18125466753837584786.Spec : Prop :=
  ∀ n, P18125466753837584786.a n = A260217 (n + 1)

end A260217

/-! ## A260217.P16704240496921423823

`A028403(n+1)%A134168(n)`
-/

namespace A260217.P16704240496921423823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028403 (n + 1)) (A134168 n)

end

end A260217.P16704240496921423823

namespace A260217

/-- `A028403(n+1)%A134168(n)` -/
def P16704240496921423823.Spec : Prop :=
  ∀ n, P16704240496921423823.a n = A260217 (n + 1)

end A260217

/-!
# A260218: a(1) = 2; for n > 1 if n is even a(n) = spf(1 + Product_{odd m,m

The programs for A260218, there is no canonical definition to state claims against.
-/

/-! ## A260218.P94759203204836123

`A002586(A032742(n+1))-A059841(n)`
-/

namespace A260218.P94759203204836123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (A032742 (n + 1)).toNat - A059841 n

end

end A260218.P94759203204836123

/-! ## A260218.P4328900102687330725

`A002586(A032742(n+1))-Δ[A080513(n)]`
-/

namespace A260218.P4328900102687330725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (A032742 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A260218.P4328900102687330725

/-! ## A260218.P6055859549511912268

`A002586(A032742(n+1))-Δ[A110654(n)]`
-/

namespace A260218.P6055859549511912268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (A032742 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A260218.P6055859549511912268

/-! ## A260218.P1779262291909188489

`A002586(A032742(n+1))-char[A005843(n)]`
-/

namespace A260218.P1779262291909188489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (A032742 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260218.P1779262291909188489

/-! ## A260218.P17941699743994748575

`A002586(A032742(n+1))-A133872(2*n)`
-/

namespace A260218.P17941699743994748575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (A032742 (n + 1)).toNat - A133872 (2 * n)

end

end A260218.P17941699743994748575

/-! ## A260218.P9847323483332903768

`A002586(A032742(n+1))+n-Δ[A061925(n)]`
-/

namespace A260218.P9847323483332903768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (A032742 (n + 1)).toNat + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A260218.P9847323483332903768

/-!
# A260220: Number of symmetry-allowed, linearly-independent terms at n-th order in the expansion of T1 x t1 rovibrational perturbation matrix H(Jx,Jy,Jz).

The programs for A260220, the canonical program `A260220.P2792250201049167754` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260220 has offset 0).

The definition of A260220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260220.P1199603809287325822

`∑[∑[char[4*n]]]/2*gcd(2, n)`
-/

namespace A260220.P1199603809287325822
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 * (Nat.gcd 2 n : ℚ)

end

end A260220.P1199603809287325822

namespace A260220

/-- `∑[∑[char[4*n]]]/2*gcd(2, n)` -/
def P1199603809287325822.Spec : Prop :=
  ∀ n, P1199603809287325822.a n = (A260220 n : ℚ)

end A260220

/-! ## A260220.P9952614878617267336

`∑[floor(n/4)+1]/(n%2+1)`
-/

namespace A260220.P9952614878617267336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

end

end A260220.P9952614878617267336

namespace A260220

/-- `∑[floor(n/4)+1]/(n%2+1)` -/
def P9952614878617267336.Spec : Prop :=
  ∀ n, P9952614878617267336.a n = (A260220 n : ℚ)

end A260220

/-! ## A260220.P2742413267411962227

`∑[floor(n/4)+1]/(and(1, n)+1)`
-/

namespace A260220.P2742413267411962227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Nat.land 1 n + 1 : ℚ)

end

end A260220.P2742413267411962227

namespace A260220

/-- `∑[floor(n/4)+1]/(and(1, n)+1)` -/
def P2742413267411962227.Spec : Prop :=
  ∀ n, P2742413267411962227.a n = (A260220 n : ℚ)

end A260220

/-! ## A260220.P501248962626300280

`∑[(-1)^n*floor(∑[1-2^(-1)^n]²)]`
-/

namespace A260220.P501248962626300280
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (2 : ℚ) ^ ((-1) ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ⌊(∑ j ∈ Finset.range (n + 1), f2 j) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260220.P501248962626300280

namespace A260220

/-- `∑[(-1)^n*floor(∑[1-2^(-1)^n]²)]` -/
def P501248962626300280.Spec : Prop :=
  ∀ n, P501248962626300280.a n = A260220 n

end A260220

/-! ## A260220.P2792250201049167754

`floor(A055524(n+3)/4)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A260220

/-- `floor(A055524(n+3)/4)` -/
def P2792250201049167754.Spec : Prop :=
  ∀ n, P2792250201049167754.a n = A260220 n

theorem P2792250201049167754.correct : P2792250201049167754.Spec := by
  intro n
  simp only [A260220]

end A260220

/-! ## A260220.P8813157086367010125

`ceil(A055523(n+3)/4)`
-/

namespace A260220.P8813157086367010125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055523 (n + 3) : ℚ) / 4⌉

end

end A260220.P8813157086367010125

namespace A260220

/-- `ceil(A055523(n+3)/4)` -/
def P8813157086367010125.Spec : Prop :=
  ∀ n, P8813157086367010125.a n = A260220 n

end A260220

/-! ## A260220.P2823432800182586976

`A001972(n)/gcd(2, n+1)`
-/

namespace A260220.P2823432800182586976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001972 n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A260220.P2823432800182586976

namespace A260220

/-- `A001972(n)/gcd(2, n+1)` -/
def P2823432800182586976.Spec : Prop :=
  ∀ n, P2823432800182586976.a n = (A260220 n : ℚ)

end A260220

/-! ## A260220.P14021599029800846212

`A106466(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A260220.P14021599029800846212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A106466 n + a (n - 2)

end

end A260220.P14021599029800846212

namespace A260220

/-- `A106466(n)+a(n-2)` -/
def P14021599029800846212.Spec : Prop :=
  ∀ n, P14021599029800846212.a n = A260220 n

end A260220

/-! ## A260220.P16357209839025508019

`∑[∑[char[4*n]]]/A000034(n)`
-/

namespace A260220.P16357209839025508019
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A000034 n : ℚ)

end

end A260220.P16357209839025508019

namespace A260220

/-- `∑[∑[char[4*n]]]/A000034(n)` -/
def P16357209839025508019.Spec : Prop :=
  ∀ n, P16357209839025508019.a n = (A260220 n : ℚ)

end A260220

/-! ## A260220.P10190993212094819828

`1/A000034(n)*A001972(n)`
-/

namespace A260220.P10190993212094819828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000034 n : ℚ) * (A001972 n : ℚ)

end

end A260220.P10190993212094819828

namespace A260220

/-- `1/A000034(n)*A001972(n)` -/
def P10190993212094819828.Spec : Prop :=
  ∀ n, P10190993212094819828.a n = (A260220 n : ℚ)

end A260220

/-! ## A260220.P13994809944125282515

`A233329(n)%A376313(n+2)`
-/

namespace A260220.P13994809944125282515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233329 n) (A376313 (n + 2))

end

end A260220.P13994809944125282515

namespace A260220

/-- `A233329(n)%A376313(n+2)` -/
def P13994809944125282515.Spec : Prop :=
  ∀ n, P13994809944125282515.a n = A260220 n

end A260220

/-! ## A260220.P11290211559950245484

`A001972(n)/(2-A056594(n)²)`
-/

namespace A260220.P11290211559950245484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001972 n : ℚ) / (2 - A056594 n ^ 2 : ℚ)

end

end A260220.P11290211559950245484

namespace A260220

/-- `A001972(n)/(2-A056594(n)²)` -/
def P11290211559950245484.Spec : Prop :=
  ∀ n, P11290211559950245484.a n = (A260220 n : ℚ)

end A260220

/-! ## A260220.P8697304009319044068

`abs(Δ[A173196(A030451(n))])`
-/

namespace A260220.P8697304009319044068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (A030451 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A260220.P8697304009319044068

namespace A260220

/-- `abs(Δ[A173196(A030451(n))])` -/
def P8697304009319044068.Spec : Prop :=
  ∀ n, P8697304009319044068.a n = A260220 n

end A260220

/-! ## A260220.P15274877453539814365

`floor((A229834(n+1)+A229834(n))/4)`
-/

namespace A260220.P15274877453539814365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A229834 (n + 1) + A229834 n : ℚ) / 4⌋

end

end A260220.P15274877453539814365

namespace A260220

/-- `floor((A229834(n+1)+A229834(n))/4)` -/
def P15274877453539814365.Spec : Prop :=
  ∀ n, P15274877453539814365.a n = A260220 n

end A260220

/-! ## A260220.P14325958692481798275

`A008805(n)-A002620(A142150(n+1))`
-/

namespace A260220.P14325958692481798275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n - A002620 (A142150 (n + 1)).toNat

end

end A260220.P14325958692481798275

namespace A260220

/-- `A008805(n)-A002620(A142150(n+1))` -/
def P14325958692481798275.Spec : Prop :=
  ∀ n, P14325958692481798275.a n = A260220 n

end A260220

/-! ## A260220.P13257597014260490155

`∑[A065033(A065033(n+1))]/A040001(n+1)`
-/

namespace A260220.P13257597014260490155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A065033 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A040001 (n + 1) : ℚ)

end

end A260220.P13257597014260490155

namespace A260220

/-- `∑[A065033(A065033(n+1))]/A040001(n+1)` -/
def P13257597014260490155.Spec : Prop :=
  ∀ n, P13257597014260490155.a n = (A260220 n : ℚ)

end A260220

/-! ## A260220.P17749263097027604171

`floor(A147685(n+3)/4)`
-/

namespace A260220.P17749263097027604171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A147685 (n + 3) : ℚ) / 4⌋

end

end A260220.P17749263097027604171

namespace A260220

/-- `floor(A147685(n+3)/4)` -/
def P17749263097027604171.Spec : Prop :=
  ∀ n, P17749263097027604171.a n = A260220 n

end A260220

/-! ## A260220.P2254302162303951134

`A001972(n)/A140081(2*n+1)`
-/

namespace A260220.P2254302162303951134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001972 n : ℚ) / (A140081 (2 * n + 1) : ℚ)

end

end A260220.P2254302162303951134

namespace A260220

/-- `A001972(n)/A140081(2*n+1)` -/
def P2254302162303951134.Spec : Prop :=
  ∀ n, P2254302162303951134.a n = (A260220 n : ℚ)

end A260220

/-! ## A260220.P4427766134789199817

`A001972(n)/A001972(A330602(2*n))`
-/

namespace A260220.P4427766134789199817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001972 n : ℚ) / (A001972 (A330602 (2 * n)).toNat : ℚ)

end

end A260220.P4427766134789199817

namespace A260220

/-- `A001972(n)/A001972(A330602(2*n))` -/
def P4427766134789199817.Spec : Prop :=
  ∀ n, P4427766134789199817.a n = (A260220 n : ℚ)

end A260220

/-! ## A260220.P7931623717601431463

`round(A055522(n+3)/A055495(2*n+3))`
-/

namespace A260220.P7931623717601431463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055522 (n + 3) : ℚ) / (A055495 (2 * n + 3) : ℚ))

end

end A260220.P7931623717601431463

namespace A260220

/-- `round(A055522(n+3)/A055495(2*n+3))` -/
def P7931623717601431463.Spec : Prop :=
  ∀ n, P7931623717601431463.a n = A260220 n

end A260220

/-!
# A260221: Expansion of phi(x^3)^2 / f(x) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A260221, there is no canonical definition to state claims against.
-/

/-! ## A260221.P920528778253402380

`A259538(3*n)`
-/

namespace A260221.P920528778253402380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259538 (3 * n)

end

end A260221.P920528778253402380

/-! ## A260221.P12965594162005324355

`A259538(A008585(n))/gcd(n, n+1)`
-/

namespace A260221.P12965594162005324355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259538 (A008585 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A260221.P12965594162005324355

/-! ## A260221.P12308743778714656966

`A259538(A008585(n))+char[A017444(n)]`
-/

namespace A260221.P12308743778714656966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017444 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259538 (A008585 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260221.P12308743778714656966

/-! ## A260221.P11192193978277476986

`A259538(A008585(n))^cos(A000007(n))`
-/

namespace A260221.P11192193978277476986
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A259538 (A008585 n).toNat : ℝ) ^ (Real.cos (A000007 n : ℝ))

end

end A260221.P11192193978277476986

/-! ## A260221.P3992447688558738324

`A259538(A008585(n))+A000007(n+1)`
-/

namespace A260221.P3992447688558738324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259538 (A008585 n).toNat + A000007 (n + 1)

end

end A260221.P3992447688558738324

/-! ## A260221.P17213807152704516049

`or(A000007(n), A259538(A016789(n)-2))`
-/

namespace A260221.P17213807152704516049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A259538 (A016789 n - 2).toNat)

end

end A260221.P17213807152704516049

/-! ## A260221.P2185729826706557626

`A259538(A008585(n))^abs(A004442(n)-n)`
-/

namespace A260221.P2185729826706557626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259538 (A008585 n).toNat : ℚ) ^ (|A004442 n - (n : ℤ)| : ℤ)

end

end A260221.P2185729826706557626

/-! ## A260221.P4914654295854907693

`A259538(A008585(n))^A008611(C(2, n+2))`
-/

namespace A260221.P4914654295854907693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259538 (A008585 n).toNat : ℚ) ^ (A008611 (Nat.choose 2 (n + 2)) : ℤ)

end

end A260221.P4914654295854907693

/-! ## A260221.P6226732426995790854

`A259538(A008585(n))/(A000027(n+1)-n)`
-/

namespace A260221.P6226732426995790854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259538 (A008585 n).toNat : ℚ) / (A000027 (n + 1) - (n : ℤ) : ℚ)

end

end A260221.P6226732426995790854

/-! ## A260221.P7237484737514950020

`A259538(A008585(n))^A118831(A000040(n+1)+1)²`
-/

namespace A260221.P7237484737514950020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259538 (A008585 n).toNat : ℚ) ^ (A118831 (A000040 (n + 1) + 1).toNat ^ 2 : ℤ)

end

end A260221.P7237484737514950020

/-! ## A260221.P1440885489331137353

`A259538(A008585(n))+val(A090266(n+1), 2)`
-/

namespace A260221.P1440885489331137353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259538 (A008585 n).toNat + (SequenceMachineLib.valuation (A090266 (n + 1)).toNat 2 : ℤ)

end

end A260221.P1440885489331137353

/-! ## A260221.P3266034646283605292

`A259538(A008585(n))^A013609(A179865(n+1))`
-/

namespace A260221.P3266034646283605292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259538 (A008585 n).toNat : ℚ) ^ (A013609 (A179865 (n + 1)).toNat : ℤ)

end

end A260221.P3266034646283605292

/-!
# A260222: a(n)=gcd(n,F(n-1)), where F(n) is the n-th Fibonacci number.

The programs for A260222, the canonical program `A260222.P15551687746413107937` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260222 has offset 1).

The definition of A260222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260222.P15551687746413107937

`gcd(n+1, A002752(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A260222

/-- `gcd(n+1, A002752(n+1))` -/
def P15551687746413107937.Spec : Prop :=
  ∀ n, (P15551687746413107937.a n : ℤ) = A260222 (n + 1)

theorem P15551687746413107937.correct : P15551687746413107937.Spec := by
  intro n
  simp only [A260222, Nat.add_sub_cancel]

end A260222

/-! ## A260222.P6627963587567971658

`gcd(n+1, A000045(n))`
-/

namespace A260222.P6627963587567971658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000045 n)

end

end A260222.P6627963587567971658

namespace A260222

/-- `gcd(n+1, A000045(n))` -/
def P6627963587567971658.Spec : Prop :=
  ∀ n, (P6627963587567971658.a n : ℤ) = A260222 (n + 1)

end A260222

/-! ## A260222.P14111728566744272106

`gcd(A129196(n), A236191(n))`
-/

namespace A260222.P14111728566744272106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129196 n) (A236191 n)

end

end A260222.P14111728566744272106

namespace A260222

/-- `gcd(A129196(n), A236191(n))` -/
def P14111728566744272106.Spec : Prop :=
  ∀ n, (P14111728566744272106.a n : ℤ) = A260222 (n + 1)

end A260222

/-! ## A260222.P11475013235423477685

`gcd(A153152(n), A324969(n+1))`
-/

namespace A260222.P11475013235423477685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153152 n) (A324969 (n + 1))

end

end A260222.P11475013235423477685

namespace A260222

/-- `gcd(A153152(n), A324969(n+1))` -/
def P11475013235423477685.Spec : Prop :=
  ∀ n, (P11475013235423477685.a n : ℤ) = A260222 (n + 1)

end A260222

/-! ## A260222.P8669646397278643740

`gcd(1-A001611(n), A000027(n+1))`
-/

namespace A260222.P8669646397278643740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A001611 n) (A000027 (n + 1))

end

end A260222.P8669646397278643740

namespace A260222

/-- `gcd(1-A001611(n), A000027(n+1))` -/
def P8669646397278643740.Spec : Prop :=
  ∀ n, (P8669646397278643740.a n : ℤ) = A260222 (n + 1)

end A260222

/-! ## A260222.P1719501892452000216

`gcd(A014682(2*n)+1, A212804(n+1))`
-/

namespace A260222.P1719501892452000216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014682 (2 * n) + 1) (A212804 (n + 1))

end

end A260222.P1719501892452000216

namespace A260222

/-- `gcd(A014682(2*n)+1, A212804(n+1))` -/
def P1719501892452000216.Spec : Prop :=
  ∀ n, (P1719501892452000216.a n : ℤ) = A260222 (n + 1)

end A260222

/-! ## A260222.P10091853666898446824

`gcd(A005843(n+1)/2, A103609(2*n))`
-/

namespace A260222.P10091853666898446824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A005843 (n + 1) : ℚ) / 2)) (A103609 (2 * n))

end

end A260222.P10091853666898446824

namespace A260222

/-- `gcd(A005843(n+1)/2, A103609(2*n))` -/
def P10091853666898446824.Spec : Prop :=
  ∀ n, (P10091853666898446824.a n : ℤ) = A260222 (n + 1)

end A260222

/-! ## A260222.P5391850109855499680

`gcd((n+1)^3, lcm(A167808(n), A167816(n)))`
-/

namespace A260222.P5391850109855499680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) ^ 3) (Int.lcm (A167808 n) (A167816 n))

end

end A260222.P5391850109855499680

namespace A260222

/-- `gcd((n+1)^3, lcm(A167808(n), A167816(n)))` -/
def P5391850109855499680.Spec : Prop :=
  ∀ n, (P5391850109855499680.a n : ℤ) = A260222 (n + 1)

end A260222

/-! ## A260222.P15140374191875039691

`gcd(A000045(A028310(n)), A326178(n))`
-/

namespace A260222.P15140374191875039691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000045 (A028310 n).toNat) (A326178 n)

end

end A260222.P15140374191875039691

namespace A260222

/-- `gcd(A000045(A028310(n)), A326178(n))` -/
def P15140374191875039691.Spec : Prop :=
  ∀ n, (P15140374191875039691.a n : ℤ) = A260222 (n + 1)

end A260222

/-! ## A260222.P8112498683269997613

`gcd(A027656(2*n), A324969(A027656(2*n)))`
-/

namespace A260222.P8112498683269997613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027656 (2 * n)) (A324969 (A027656 (2 * n)).toNat)

end

end A260222.P8112498683269997613

namespace A260222

/-- `gcd(A027656(2*n), A324969(A027656(2*n)))` -/
def P8112498683269997613.Spec : Prop :=
  ∀ n, (P8112498683269997613.a n : ℤ) = A260222 (n + 1)

end A260222

/-! ## A260222.P15336663590972155559

`gcd(A028242(2*n), A053602(2*n))`
-/

namespace A260222.P15336663590972155559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028242 (2 * n)) (A053602 (2 * n))

end

end A260222.P15336663590972155559

namespace A260222

/-- `gcd(A028242(2*n), A053602(2*n))` -/
def P15336663590972155559.Spec : Prop :=
  ∀ n, (P15336663590972155559.a n : ℤ) = A260222 (n + 1)

end A260222

/-! ## A260222.P3280116502751591144

`gcd(A165998(n), A333378(n))`
-/

namespace A260222.P3280116502751591144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165998 n) (A333378 n)

end

end A260222.P3280116502751591144

namespace A260222

/-- `gcd(A165998(n), A333378(n))` -/
def P3280116502751591144.Spec : Prop :=
  ∀ n, (P3280116502751591144.a n : ℤ) = A260222 (n + 1)

end A260222

/-! ## A260222.P8644556584070812590

`gcd(1-A065220(n), Δ[A000071(n+1)])`
-/

namespace A260222.P8644556584070812590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A065220 n) (f1 (n + 1) - f1 n)

end

end A260222.P8644556584070812590

namespace A260222

/-- `gcd(1-A065220(n), Δ[A000071(n+1)])` -/
def P8644556584070812590.Spec : Prop :=
  ∀ n, (P8644556584070812590.a n : ℤ) = A260222 (n + 1)

end A260222

/-! ## A260222.P10204997418912043688

`gcd(A333378(n)+A011262(n+1), A011262(n+1))`
-/

namespace A260222.P10204997418912043688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A333378 n + A011262 (n + 1)) (A011262 (n + 1))

end

end A260222.P10204997418912043688

namespace A260222

/-- `gcd(A333378(n)+A011262(n+1), A011262(n+1))` -/
def P10204997418912043688.Spec : Prop :=
  ∀ n, (P10204997418912043688.a n : ℤ) = A260222 (n + 1)

end A260222

/-! ## A260222.P1068436488964715078

`gcd(A022359(n), A132739(n+1))`
-/

namespace A260222.P1068436488964715078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022359 n) (A132739 (n + 1))

end

end A260222.P1068436488964715078

namespace A260222

/-- `gcd(A022359(n), A132739(n+1))` -/
def P1068436488964715078.Spec : Prop :=
  ∀ n, (P1068436488964715078.a n : ℤ) = A260222 (n + 1)

end A260222

/-! ## A260222.P10046423707745207387

`gcd(A081437(n), A136391(n+1))`
-/

namespace A260222.P10046423707745207387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081437 n) (A136391 (n + 1))

end

end A260222.P10046423707745207387

namespace A260222

/-- `gcd(A081437(n), A136391(n+1))` -/
def P10046423707745207387.Spec : Prop :=
  ∀ n, (P10046423707745207387.a n : ℤ) = A260222 (n + 1)

end A260222

/-! ## A260222.P1938813578472860085

`gcd(A007947(n+1), A045925(n))`
-/

namespace A260222.P1938813578472860085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A045925 n)

end

end A260222.P1938813578472860085

namespace A260222

/-- `gcd(A007947(n+1), A045925(n))` -/
def P1938813578472860085.Spec : Prop :=
  ∀ n, (P1938813578472860085.a n : ℤ) = A260222 (n + 1)

end A260222

/-! ## A260222.P15781190491846354185

`gcd(n*A000045(n), Δ[A001057(n)])`
-/

namespace A260222.P15781190491846354185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A000045 n) (f1 (n + 1) - f1 n)

end

end A260222.P15781190491846354185

namespace A260222

/-- `gcd(n*A000045(n), Δ[A001057(n)])` -/
def P15781190491846354185.Spec : Prop :=
  ∀ n, (P15781190491846354185.a n : ℤ) = A260222 (n + 1)

end A260222

/-! ## A260222.P4386518984080812409

`gcd(n*A333378(n), A011262(n+1))`
-/

namespace A260222.P4386518984080812409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A333378 n) (A011262 (n + 1))

end

end A260222.P4386518984080812409

namespace A260222

/-- `gcd(n*A333378(n), A011262(n+1))` -/
def P4386518984080812409.Spec : Prop :=
  ∀ n, (P4386518984080812409.a n : ℤ) = A260222 (n + 1)

end A260222

/-!
# A260223: Primes having only {3, 5, 0} as digits.

The programs for A260223, there is no canonical definition to state claims against.
-/

/-! ## A260223.P14927751404310702403

`∩[A386061(n+1), A386063(n+1)]`
-/

namespace A260223.P14927751404310702403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P14927751404310702403

/-! ## A260223.P10658028346165846039

`∩[A386056(n+1), A386061(n+1)]`
-/

namespace A260223.P10658028346165846039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P10658028346165846039

/-! ## A260223.P710718659665084697

`∩[A386056(n+1), A386063(n+1)]`
-/

namespace A260223.P710718659665084697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P710718659665084697

/-! ## A260223.P11301240808414531991

`∩[A386042(n+1), A386056(n+1)]`
-/

namespace A260223.P11301240808414531991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P11301240808414531991

/-! ## A260223.P15419129168802632291

`∩[A386042(n+1), A386061(n+1)]`
-/

namespace A260223.P15419129168802632291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P15419129168802632291

/-! ## A260223.P17986216812664199753

`∩[A386042(n+1), A386063(n+1)]`
-/

namespace A260223.P17986216812664199753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P17986216812664199753

/-! ## A260223.P3066838415190991040

`∩[A386042(n+1), A386062(n+1)]`
-/

namespace A260223.P3066838415190991040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P3066838415190991040

/-! ## A260223.P16747947939982298909

`∩[A386056(n+1), A386062(n+1)]`
-/

namespace A260223.P16747947939982298909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P16747947939982298909

/-! ## A260223.P11808215297081785408

`∩[A386061(n+1), A386062(n+1)]`
-/

namespace A260223.P11808215297081785408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P11808215297081785408

/-! ## A260223.P2406449618983880436

`∩[A386062(n+1), A386063(n+1)]`
-/

namespace A260223.P2406449618983880436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P2406449618983880436

/-! ## A260223.P7320383982346385551

`∩[A386042(n+1), A386064(n+1)]`
-/

namespace A260223.P7320383982346385551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P7320383982346385551

/-! ## A260223.P4414490613033447321

`∩[A386056(n+1), A386064(n+1)]`
-/

namespace A260223.P4414490613033447321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P4414490613033447321

/-! ## A260223.P15406049737689972839

`∩[A386061(n+1), A386064(n+1)]`
-/

namespace A260223.P15406049737689972839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P15406049737689972839

/-! ## A260223.P2617227928731221101

`∩[A386062(n+1), A386064(n+1)]`
-/

namespace A260223.P2617227928731221101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P2617227928731221101

/-! ## A260223.P11630557324324042772

`∩[A386063(n+1), A386064(n+1)]`
-/

namespace A260223.P11630557324324042772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P11630557324324042772

/-! ## A260223.P352598244804544938

`∩[A386024(n+1), A386042(n+1)]`
-/

namespace A260223.P352598244804544938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P352598244804544938

/-! ## A260223.P568749053706248825

`∩[A386024(n+1), A386056(n+1)]`
-/

namespace A260223.P568749053706248825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P568749053706248825

/-! ## A260223.P7173940801084849233

`∩[A386024(n+1), A386061(n+1)]`
-/

namespace A260223.P7173940801084849233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P7173940801084849233

/-! ## A260223.P2091860643848808263

`∩[A386024(n+1), A386062(n+1)]`
-/

namespace A260223.P2091860643848808263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P2091860643848808263

/-! ## A260223.P11662287038100810

`∩[A386024(n+1), A386063(n+1)]`
-/

namespace A260223.P11662287038100810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260223.P11662287038100810

/-!
# A260224: Primes having only {1, 3, 5} as digits.

The programs for A260224, the canonical program `A260224.P1438130178473622830` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260224 has offset 1).

The definition of A260224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1504 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260224.P15500695181874650995

`∩[A386024(n+1), A386110(n+1)]`
-/

namespace A260224.P15500695181874650995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P15500695181874650995

namespace A260224

/-- `∩[A386024(n+1), A386110(n+1)]` -/
def P15500695181874650995.Spec : Prop :=
  ∀ n, (P15500695181874650995.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P9276366911369093505

`∩[A386024(n+1), A386112(n+1)]`
-/

namespace A260224.P9276366911369093505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P9276366911369093505

namespace A260224

/-- `∩[A386024(n+1), A386112(n+1)]` -/
def P9276366911369093505.Spec : Prop :=
  ∀ n, (P9276366911369093505.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P8400839085933618636

`∩[A386110(n+1), A386112(n+1)]`
-/

namespace A260224.P8400839085933618636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P8400839085933618636

namespace A260224

/-- `∩[A386110(n+1), A386112(n+1)]` -/
def P8400839085933618636.Spec : Prop :=
  ∀ n, (P8400839085933618636.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P1438130178473622830

`∩[A386024(n+1), A386105(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A260224

/-- `∩[A386024(n+1), A386105(n+1)]` -/
def P1438130178473622830.Spec : Prop :=
  ∀ n, (P1438130178473622830.a n : ℤ) = A260224 (n + 1)

theorem P1438130178473622830.correct : P1438130178473622830.Spec := by
  intro n
  simp only [A260224, Nat.add_sub_cancel]

end A260224

/-! ## A260224.P8837566608357196123

`∩[A386105(n+1), A386110(n+1)]`
-/

namespace A260224.P8837566608357196123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P8837566608357196123

namespace A260224

/-- `∩[A386105(n+1), A386110(n+1)]` -/
def P8837566608357196123.Spec : Prop :=
  ∀ n, (P8837566608357196123.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P1097301008148227425

`∩[A386105(n+1), A386112(n+1)]`
-/

namespace A260224.P1097301008148227425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P1097301008148227425

namespace A260224

/-- `∩[A386105(n+1), A386112(n+1)]` -/
def P1097301008148227425.Spec : Prop :=
  ∀ n, (P1097301008148227425.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P14633127607956564804

`∩[A386024(n+1), A386086(n+1)]`
-/

namespace A260224.P14633127607956564804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P14633127607956564804

namespace A260224

/-- `∩[A386024(n+1), A386086(n+1)]` -/
def P14633127607956564804.Spec : Prop :=
  ∀ n, (P14633127607956564804.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P11989056812185911622

`∩[A386086(n+1), A386105(n+1)]`
-/

namespace A260224.P11989056812185911622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P11989056812185911622

namespace A260224

/-- `∩[A386086(n+1), A386105(n+1)]` -/
def P11989056812185911622.Spec : Prop :=
  ∀ n, (P11989056812185911622.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P6865895756166137873

`∩[A386086(n+1), A386110(n+1)]`
-/

namespace A260224.P6865895756166137873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P6865895756166137873

namespace A260224

/-- `∩[A386086(n+1), A386110(n+1)]` -/
def P6865895756166137873.Spec : Prop :=
  ∀ n, (P6865895756166137873.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P12231727072987788596

`∩[A386086(n+1), A386112(n+1)]`
-/

namespace A260224.P12231727072987788596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P12231727072987788596

namespace A260224

/-- `∩[A386086(n+1), A386112(n+1)]` -/
def P12231727072987788596.Spec : Prop :=
  ∀ n, (P12231727072987788596.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P14902825668864959701

`∩[A386024(n+1), A386111(n+1)]`
-/

namespace A260224.P14902825668864959701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P14902825668864959701

namespace A260224

/-- `∩[A386024(n+1), A386111(n+1)]` -/
def P14902825668864959701.Spec : Prop :=
  ∀ n, (P14902825668864959701.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P13105891589201567440

`∩[A386086(n+1), A386111(n+1)]`
-/

namespace A260224.P13105891589201567440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P13105891589201567440

namespace A260224

/-- `∩[A386086(n+1), A386111(n+1)]` -/
def P13105891589201567440.Spec : Prop :=
  ∀ n, (P13105891589201567440.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P5325896586254531058

`∩[A386105(n+1), A386111(n+1)]`
-/

namespace A260224.P5325896586254531058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P5325896586254531058

namespace A260224

/-- `∩[A386105(n+1), A386111(n+1)]` -/
def P5325896586254531058.Spec : Prop :=
  ∀ n, (P5325896586254531058.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P17360296355950194591

`∩[A386110(n+1), A386111(n+1)]`
-/

namespace A260224.P17360296355950194591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P17360296355950194591

namespace A260224

/-- `∩[A386110(n+1), A386111(n+1)]` -/
def P17360296355950194591.Spec : Prop :=
  ∀ n, (P17360296355950194591.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P10423227253435732908

`∩[A386111(n+1), A386112(n+1)]`
-/

namespace A260224.P10423227253435732908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P10423227253435732908

namespace A260224

/-- `∩[A386111(n+1), A386112(n+1)]` -/
def P10423227253435732908.Spec : Prop :=
  ∀ n, (P10423227253435732908.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P8772699795789980690

`∩[A386024(n+1), A386113(n+1)]`
-/

namespace A260224.P8772699795789980690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P8772699795789980690

namespace A260224

/-- `∩[A386024(n+1), A386113(n+1)]` -/
def P8772699795789980690.Spec : Prop :=
  ∀ n, (P8772699795789980690.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P5301720727291851141

`∩[A386086(n+1), A386113(n+1)]`
-/

namespace A260224.P5301720727291851141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P5301720727291851141

namespace A260224

/-- `∩[A386086(n+1), A386113(n+1)]` -/
def P5301720727291851141.Spec : Prop :=
  ∀ n, (P5301720727291851141.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P2207034877451255384

`∩[A386105(n+1), A386113(n+1)]`
-/

namespace A260224.P2207034877451255384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P2207034877451255384

namespace A260224

/-- `∩[A386105(n+1), A386113(n+1)]` -/
def P2207034877451255384.Spec : Prop :=
  ∀ n, (P2207034877451255384.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P14081289898461680837

`∩[A386110(n+1), A386113(n+1)]`
-/

namespace A260224.P14081289898461680837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P14081289898461680837

namespace A260224

/-- `∩[A386110(n+1), A386113(n+1)]` -/
def P14081289898461680837.Spec : Prop :=
  ∀ n, (P14081289898461680837.a n : ℤ) = A260224 (n + 1)

end A260224

/-! ## A260224.P6158680068443010128

`∩[A386111(n+1), A386113(n+1)]`
-/

namespace A260224.P6158680068443010128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260224.P6158680068443010128

namespace A260224

/-- `∩[A386111(n+1), A386113(n+1)]` -/
def P6158680068443010128.Spec : Prop :=
  ∀ n, (P6158680068443010128.a n : ℤ) = A260224 (n + 1)

end A260224

/-!
# A260225: Primes having only {3, 5, 6} as digits.

The programs for A260225, there is no canonical definition to state claims against.
-/

/-! ## A260225.P3832506358295700077

`∩[A386061(n+1), A386179(n+1)]`
-/

namespace A260225.P3832506358295700077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P3832506358295700077

/-! ## A260225.P8277029790829051464

`∩[A386061(n+1), A386169(n+1)]`
-/

namespace A260225.P8277029790829051464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P8277029790829051464

/-! ## A260225.P5455374805328361841

`∩[A386169(n+1), A386179(n+1)]`
-/

namespace A260225.P5455374805328361841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P5455374805328361841

/-! ## A260225.P7751626788294884280

`∩[A386061(n+1), A386144(n+1)]`
-/

namespace A260225.P7751626788294884280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P7751626788294884280

/-! ## A260225.P16769907383645839075

`∩[A386144(n+1), A386169(n+1)]`
-/

namespace A260225.P16769907383645839075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P16769907383645839075

/-! ## A260225.P789734233803076865

`∩[A386144(n+1), A386179(n+1)]`
-/

namespace A260225.P789734233803076865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P789734233803076865

/-! ## A260225.P15607170233964014476

`∩[A386061(n+1), A386178(n+1)]`
-/

namespace A260225.P15607170233964014476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P15607170233964014476

/-! ## A260225.P1233288674812572671

`∩[A386061(n+1), A386180(n+1)]`
-/

namespace A260225.P1233288674812572671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P1233288674812572671

/-! ## A260225.P16773530809421813627

`∩[A386144(n+1), A386178(n+1)]`
-/

namespace A260225.P16773530809421813627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P16773530809421813627

/-! ## A260225.P2617676643627500569

`∩[A386144(n+1), A386180(n+1)]`
-/

namespace A260225.P2617676643627500569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P2617676643627500569

/-! ## A260225.P4295598400452781166

`∩[A386169(n+1), A386178(n+1)]`
-/

namespace A260225.P4295598400452781166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P4295598400452781166

/-! ## A260225.P10135598316483335733

`∩[A386169(n+1), A386180(n+1)]`
-/

namespace A260225.P10135598316483335733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P10135598316483335733

/-! ## A260225.P16016668013116668559

`∩[A386178(n+1), A386179(n+1)]`
-/

namespace A260225.P16016668013116668559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P16016668013116668559

/-! ## A260225.P6740157675792131277

`∩[A386178(n+1), A386180(n+1)]`
-/

namespace A260225.P6740157675792131277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P6740157675792131277

/-! ## A260225.P4936234468931401350

`∩[A386179(n+1), A386180(n+1)]`
-/

namespace A260225.P4936234468931401350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P4936234468931401350

/-! ## A260225.P10563052365105326779

`∩[A386061(n+1), A386110(n+1)]`
-/

namespace A260225.P10563052365105326779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P10563052365105326779

/-! ## A260225.P12906161356327258416

`∩[A386110(n+1), A386144(n+1)]`
-/

namespace A260225.P12906161356327258416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P12906161356327258416

/-! ## A260225.P16576915095901468865

`∩[A386110(n+1), A386169(n+1)]`
-/

namespace A260225.P16576915095901468865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P16576915095901468865

/-! ## A260225.P4598067999861079354

`∩[A386110(n+1), A386178(n+1)]`
-/

namespace A260225.P4598067999861079354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P4598067999861079354

/-! ## A260225.P12284555709595125582

`∩[A386110(n+1), A386179(n+1)]`
-/

namespace A260225.P12284555709595125582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260225.P12284555709595125582

/-!
# A260226: Primes having only {3, 5, 8} as digits.

The programs for A260226, there is no canonical definition to state claims against.
-/

/-! ## A260226.P18275249271429207809

`∩[A386063(n+1), A386179(n+1)]`
-/

namespace A260226.P18275249271429207809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P18275249271429207809

/-! ## A260226.P4339690285611759094

`∩[A386063(n+1), A386171(n+1)]`
-/

namespace A260226.P4339690285611759094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P4339690285611759094

/-! ## A260226.P910819499452243850

`∩[A386171(n+1), A386179(n+1)]`
-/

namespace A260226.P910819499452243850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P910819499452243850

/-! ## A260226.P776500689193360086

`∩[A386063(n+1), A386145(n+1)]`
-/

namespace A260226.P776500689193360086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P776500689193360086

/-! ## A260226.P7287446317899952248

`∩[A386145(n+1), A386171(n+1)]`
-/

namespace A260226.P7287446317899952248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P7287446317899952248

/-! ## A260226.P13318363020446110299

`∩[A386145(n+1), A386179(n+1)]`
-/

namespace A260226.P13318363020446110299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P13318363020446110299

/-! ## A260226.P3466425881255820402

`∩[A386063(n+1), A386183(n+1)]`
-/

namespace A260226.P3466425881255820402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P3466425881255820402

/-! ## A260226.P9449985996437963193

`∩[A386145(n+1), A386183(n+1)]`
-/

namespace A260226.P9449985996437963193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P9449985996437963193

/-! ## A260226.P8019581669213961587

`∩[A386171(n+1), A386183(n+1)]`
-/

namespace A260226.P8019581669213961587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P8019581669213961587

/-! ## A260226.P12693216734164864565

`∩[A386179(n+1), A386183(n+1)]`
-/

namespace A260226.P12693216734164864565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P12693216734164864565

/-! ## A260226.P2055198931630300038

`∩[A386063(n+1), A386181(n+1)]`
-/

namespace A260226.P2055198931630300038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P2055198931630300038

/-! ## A260226.P10254958304137054141

`∩[A386145(n+1), A386181(n+1)]`
-/

namespace A260226.P10254958304137054141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P10254958304137054141

/-! ## A260226.P6880564201323934096

`∩[A386171(n+1), A386181(n+1)]`
-/

namespace A260226.P6880564201323934096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P6880564201323934096

/-! ## A260226.P15624119796754323412

`∩[A386179(n+1), A386181(n+1)]`
-/

namespace A260226.P15624119796754323412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P15624119796754323412

/-! ## A260226.P10778224726271888718

`∩[A386181(n+1), A386183(n+1)]`
-/

namespace A260226.P10778224726271888718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P10778224726271888718

/-! ## A260226.P11586957841435510187

`∩[A386063(n+1), A386112(n+1)]`
-/

namespace A260226.P11586957841435510187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P11586957841435510187

/-! ## A260226.P5913531593110496098

`∩[A386112(n+1), A386145(n+1)]`
-/

namespace A260226.P5913531593110496098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P5913531593110496098

/-! ## A260226.P12874023569737774632

`∩[A386112(n+1), A386171(n+1)]`
-/

namespace A260226.P12874023569737774632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P12874023569737774632

/-! ## A260226.P4614443773053837390

`∩[A386112(n+1), A386179(n+1)]`
-/

namespace A260226.P4614443773053837390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P4614443773053837390

/-! ## A260226.P17433582222902079546

`∩[A386112(n+1), A386181(n+1)]`
-/

namespace A260226.P17433582222902079546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260226.P17433582222902079546

/-!
# A260227: Primes having only {3, 5, 9} as digits.

The programs for A260227, there is no canonical definition to state claims against.
-/

/-! ## A260227.P14400558765361921162

`∩[A386064(n+1), A386183(n+1)]`
-/

namespace A260227.P14400558765361921162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P14400558765361921162

/-! ## A260227.P920166199182236506

`∩[A386064(n+1), A386172(n+1)]`
-/

namespace A260227.P920166199182236506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P920166199182236506

/-! ## A260227.P8793948630063038970

`∩[A386172(n+1), A386183(n+1)]`
-/

namespace A260227.P8793948630063038970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P8793948630063038970

/-! ## A260227.P14790174363367831375

`∩[A386064(n+1), A386180(n+1)]`
-/

namespace A260227.P14790174363367831375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P14790174363367831375

/-! ## A260227.P13993587919786772696

`∩[A386172(n+1), A386180(n+1)]`
-/

namespace A260227.P13993587919786772696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P13993587919786772696

/-! ## A260227.P4936987141848183126

`∩[A386180(n+1), A386183(n+1)]`
-/

namespace A260227.P4936987141848183126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P4936987141848183126

/-! ## A260227.P8622737560544633627

`∩[A386064(n+1), A386182(n+1)]`
-/

namespace A260227.P8622737560544633627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P8622737560544633627

/-! ## A260227.P17782933735369160387

`∩[A386172(n+1), A386182(n+1)]`
-/

namespace A260227.P17782933735369160387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P17782933735369160387

/-! ## A260227.P11728555555028078147

`∩[A386180(n+1), A386182(n+1)]`
-/

namespace A260227.P11728555555028078147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P11728555555028078147

/-! ## A260227.P12324527383808520005

`∩[A386064(n+1), A386113(n+1)]`
-/

namespace A260227.P12324527383808520005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P12324527383808520005

/-! ## A260227.P13179525769816049516

`∩[A386064(n+1), A386146(n+1)]`
-/

namespace A260227.P13179525769816049516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P13179525769816049516

/-! ## A260227.P12372739528996652882

`∩[A386113(n+1), A386146(n+1)]`
-/

namespace A260227.P12372739528996652882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P12372739528996652882

/-! ## A260227.P17388337006106771100

`∩[A386113(n+1), A386172(n+1)]`
-/

namespace A260227.P17388337006106771100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P17388337006106771100

/-! ## A260227.P11580774324683928261

`∩[A386113(n+1), A386180(n+1)]`
-/

namespace A260227.P11580774324683928261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P11580774324683928261

/-! ## A260227.P11944685165077559043

`∩[A386113(n+1), A386182(n+1)]`
-/

namespace A260227.P11944685165077559043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P11944685165077559043

/-! ## A260227.P10938318765304943993

`∩[A386113(n+1), A386183(n+1)]`
-/

namespace A260227.P10938318765304943993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P10938318765304943993

/-! ## A260227.P4462041250903484431

`∩[A386146(n+1), A386172(n+1)]`
-/

namespace A260227.P4462041250903484431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P4462041250903484431

/-! ## A260227.P12545889165773114016

`∩[A386146(n+1), A386180(n+1)]`
-/

namespace A260227.P12545889165773114016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P12545889165773114016

/-! ## A260227.P12385773414510039755

`∩[A386146(n+1), A386182(n+1)]`
-/

namespace A260227.P12385773414510039755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P12385773414510039755

/-! ## A260227.P10211429979754832843

`∩[A386146(n+1), A386183(n+1)]`
-/

namespace A260227.P10211429979754832843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260227.P10211429979754832843

/-!
# A260228: a(n) = max(gcd(n,F(n-1)),gcd(n,F(n+1))), where F(n) is the n-th Fibonacci number.

The programs for A260228, the canonical program `A260228.P14478418545957725030` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260228 has offset 1).

The definition of A260228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260228.P14478418545957725030

`gcd(A051696(n+1), A059929(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A260228

/-- `gcd(A051696(n+1), A059929(n))` -/
def P14478418545957725030.Spec : Prop :=
  ∀ n, (P14478418545957725030.a n : ℤ) = A260228 (n + 1)

theorem P14478418545957725030.correct : P14478418545957725030.Spec := by
  intro n
  simp only [A260228, Nat.add_sub_cancel]

end A260228

/-! ## A260228.P13464386725492643071

`gcd(n+1, A000045(n)*A122075(∑[n]))`
-/

namespace A260228.P13464386725492643071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000045 n * A122075 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A260228.P13464386725492643071

namespace A260228

/-- `gcd(n+1, A000045(n)*A122075(∑[n]))` -/
def P13464386725492643071.Spec : Prop :=
  ∀ n, (P13464386725492643071.a n : ℤ) = A260228 (n + 1)

end A260228

/-! ## A260228.P12814090737924777339

`gcd(n+1, A058071(A001844(n)))`
-/

namespace A260228.P12814090737924777339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A058071 (A001844 n).toNat)

end

end A260228.P12814090737924777339

namespace A260228

/-- `gcd(n+1, A058071(A001844(n)))` -/
def P12814090737924777339.Spec : Prop :=
  ∀ n, (P12814090737924777339.a n : ℤ) = A260228 (n + 1)

end A260228

/-! ## A260228.P2400440444616882599

`gcd(A000027(n+1), A058071(∑[4*n]+1))`
-/

namespace A260228.P2400440444616882599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A058071 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A260228.P2400440444616882599

namespace A260228

/-- `gcd(A000027(n+1), A058071(∑[4*n]+1))` -/
def P2400440444616882599.Spec : Prop :=
  ∀ n, (P2400440444616882599.a n : ℤ) = A260228 (n + 1)

end A260228

/-! ## A260228.P15771675843160670645

`gcd(A058071(A001844(n)), A141310(n))`
-/

namespace A260228.P15771675843160670645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058071 (A001844 n).toNat) (A141310 n)

end

end A260228.P15771675843160670645

namespace A260228

/-- `gcd(A058071(A001844(n)), A141310(n))` -/
def P15771675843160670645.Spec : Prop :=
  ∀ n, (P15771675843160670645.a n : ℤ) = A260228 (n + 1)

end A260228

/-! ## A260228.P8419148046365413298

`gcd(A020639(A086957(n+1)), A270313(n+1))`
-/

namespace A260228.P8419148046365413298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (A086957 (n + 1)).toNat) (A270313 (n + 1))

end

end A260228.P8419148046365413298

namespace A260228

/-- `gcd(A020639(A086957(n+1)), A270313(n+1))` -/
def P8419148046365413298.Spec : Prop :=
  ∀ n, (P8419148046365413298.a n : ℤ) = A260228 (n + 1)

end A260228

/-!
# A260229: 

The programs for A260229, there is no canonical definition to state claims against.
-/

/-! ## A260229.P15881852332049805681

`floor(exp((n+1)!))`
-/

namespace A260229.P15881852332049805681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Nat.factorial (n + 1) : ℝ)⌋

end

end A260229.P15881852332049805681

/-!
# A260231: a(n) = Product_{k=1..n} (1 + k^k).

The programs for A260231, there is no canonical definition to state claims against.
-/

/-! ## A260231.P5548583208055946813

`∏[Δ[∑[n^n]+n]]`
-/

namespace A260231.P5548583208055946813
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A260231.P5548583208055946813

/-! ## A260231.P16849231942081538199

`((n+1)^(n+1)+1)*a(n-1)` with `a(0)=2`
-/

namespace A260231.P16849231942081538199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ((n + 1) ^ (n + 1) + 1) * a (n - 1)

end

end A260231.P16849231942081538199

/-! ## A260231.P6375638679187746750

`a(n-1)+a(n-1)/(1/(n+1))^(n+1)` with `a(0)=2`
-/

namespace A260231.P6375638679187746750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + a (n - 1) / (1 / (n + 1 : ℚ)) ^ (n + 1)

end

end A260231.P6375638679187746750

/-! ## A260231.P3928489395660017700

`a(n-1)*A014566(n+1)` with `a(0)=2`
-/

namespace A260231.P3928489395660017700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A014566 (n + 1)

end

end A260231.P3928489395660017700

/-!
# A260233: Smallest prime factor of the n-th hexagonal number (A000384).

The programs for A260233, there is no canonical definition to state claims against.
-/

/-! ## A260233.P6142865205176967897

`A020639(A000384(n+2))`
-/

namespace A260233.P6142865205176967897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000384 (n + 2)).toNat

end

end A260233.P6142865205176967897

/-! ## A260233.P10340685660304451845

`A069901(2*n+3)`
-/

namespace A260233.P10340685660304451845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (2 * n + 3)

end

end A260233.P10340685660304451845

/-! ## A260233.P11503801196738851259

`A000027(A069901(Δ[(n+1)²]))`
-/

namespace A260233.P11503801196738851259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A069901 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A260233.P11503801196738851259

/-! ## A260233.P12980748372238512853

`A020639((n+2)*A281680(n+1))`
-/

namespace A260233.P12980748372238512853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 2 : ℤ) * A281680 (n + 1)).toNat

end

end A260233.P12980748372238512853

/-! ## A260233.P8927515336789350223

`A000217(2*n+3)/A226540(2*n+3)`
-/

namespace A260233.P8927515336789350223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (2 * n + 3) : ℚ) / (A226540 (2 * n + 3) : ℚ)

end

end A260233.P8927515336789350223

/-! ## A260233.P17501715183981028381

`A020639((n+2)*A075753(n+2))`
-/

namespace A260233.P17501715183981028381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 2 : ℤ) * A075753 (n + 2)).toNat

end

end A260233.P17501715183981028381

/-! ## A260233.P14863963812845073103

`A020639(A020639(n+2)*A090368(n+2))`
-/

namespace A260233.P14863963812845073103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 2) * A090368 (n + 2)).toNat

end

end A260233.P14863963812845073103

/-! ## A260233.P6292114376212943913

`A020639(A020639(n+2)*A132850(2*n+1))`
-/

namespace A260233.P6292114376212943913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 2) * A132850 (2 * n + 1)).toNat

end

end A260233.P6292114376212943913

/-! ## A260233.P13620237070538115096

`A020639(A020639(n+2)*A126800(2*n+3))`
-/

namespace A260233.P13620237070538115096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 2) * A126800 (2 * n + 3)).toNat

end

end A260233.P13620237070538115096

/-! ## A260233.P12133920629591455990

`A020639(A020639(n+2)*A245689(2*n+3))`
-/

namespace A260233.P12133920629591455990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 2) * A245689 (2 * n + 3)).toNat

end

end A260233.P12133920629591455990

/-! ## A260233.P15054392815731980341

`A020639(A020639(n+2)*(2*n+3))`
-/

namespace A260233.P15054392815731980341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 2) * (2 * n + 3 : ℤ)).toNat

end

end A260233.P15054392815731980341

/-! ## A260233.P13672595432391235309

`A020639(A005408(n+1)*A020639(n+2))`
-/

namespace A260233.P13672595432391235309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005408 (n + 1) * A020639 (n + 2)).toNat

end

end A260233.P13672595432391235309

/-! ## A260233.P13658298803138409988

`A020639(A126287(2*(n+2)))`
-/

namespace A260233.P13658298803138409988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A126287 (2 * (n + 2))).toNat

end

end A260233.P13658298803138409988

/-! ## A260233.P43190680129164696

`A020639(A245764(n+1)+n)`
-/

namespace A260233.P43190680129164696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A245764 (n + 1) + (n : ℤ)).toNat

end

end A260233.P43190680129164696

/-! ## A260233.P6108830877519605385

`A020639((n+2)*A042963(n+2))`
-/

namespace A260233.P6108830877519605385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 2 : ℤ) * A042963 (n + 2)).toNat

end

end A260233.P6108830877519605385

/-! ## A260233.P4027355949490788432

`A020639((n+2)*A090368(n+2))`
-/

namespace A260233.P4027355949490788432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 2 : ℤ) * A090368 (n + 2)).toNat

end

end A260233.P4027355949490788432

/-! ## A260233.P11430308609170667149

`A020639(A104675(n)+n²)`
-/

namespace A260233.P11430308609170667149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A104675 n + (n ^ 2 : ℤ)).toNat

end

end A260233.P11430308609170667149

/-!
# A260234: Largest prime factor of the n-th hexagonal number (A000384).

The programs for A260234, the canonical program `A260234.P5914860103157422503` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260234 has offset 2).

The definition of A260234 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A260234.P5914860103157422503

`A006530(A000384(n+2))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A260234

/-- `A006530(A000384(n+2))` -/
def P5914860103157422503.Spec : Prop :=
  ∀ n, P5914860103157422503.a n = A260234 (n + 2)

theorem P5914860103157422503.correct : P5914860103157422503.Spec := by
  intro n
  simp only [A260234, Nat.add_sub_cancel]

end A260234

/-! ## A260234.P14464764797646746818

`A069902(2*n+3)`
-/

namespace A260234.P14464764797646746818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069902 (2 * n + 3)

end

end A260234.P14464764797646746818

namespace A260234

/-- `A069902(2*n+3)` -/
def P14464764797646746818.Spec : Prop :=
  ∀ n, P14464764797646746818.a n = A260234 (n + 2)

end A260234

/-! ## A260234.P7707734487853297627

`A074399(2*n+3)`
-/

namespace A260234.P7707734487853297627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (2 * n + 3)

end

end A260234.P7707734487853297627

namespace A260234

/-- `A074399(2*n+3)` -/
def P7707734487853297627.Spec : Prop :=
  ∀ n, P7707734487853297627.a n = A260234 (n + 2)

end A260234

/-! ## A260234.P1462861741608103291

`A000040(A252489(2*n+3))`
-/

namespace A260234.P1462861741608103291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A252489 (2 * n + 3)).toNat

end

end A260234.P1462861741608103291

namespace A260234

/-- `A000040(A252489(2*n+3))` -/
def P1462861741608103291.Spec : Prop :=
  ∀ n, P1462861741608103291.a n = A260234 (n + 2)

end A260234

/-! ## A260234.P2769195883628708947

`or(1, A074399(A000027(n+1)+2+n))`
-/

namespace A260234.P2769195883628708947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074399 (A000027 (n + 1) + 2 + (n : ℤ)).toNat)

end

end A260234.P2769195883628708947

namespace A260234

/-- `or(1, A074399(A000027(n+1)+2+n))` -/
def P2769195883628708947.Spec : Prop :=
  ∀ n, P2769195883628708947.a n = A260234 (n + 2)

end A260234

/-! ## A260234.P3173613743599839901

`A074399(A000027(n+1)+2+n)%A272298(n)`
-/

namespace A260234.P3173613743599839901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074399 (A000027 (n + 1) + 2 + (n : ℤ)).toNat) (A272298 n)

end

end A260234.P3173613743599839901

namespace A260234

/-- `A074399(A000027(n+1)+2+n)%A272298(n)` -/
def P3173613743599839901.Spec : Prop :=
  ∀ n, P3173613743599839901.a n = A260234 (n + 2)

end A260234

/-! ## A260234.P17349367648670325948

`A328827(6*n+9)`
-/

namespace A260234.P17349367648670325948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328827 (6 * n + 9)

end

end A260234.P17349367648670325948

namespace A260234

/-- `A328827(6*n+9)` -/
def P17349367648670325948.Spec : Prop :=
  ∀ n, P17349367648670325948.a n = A260234 (n + 2)

end A260234

/-! ## A260234.P12966340998862285360

`A076605(4*n+7)`
-/

namespace A260234.P12966340998862285360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (4 * n + 7)

end

end A260234.P12966340998862285360

namespace A260234

/-- `A076605(4*n+7)` -/
def P12966340998862285360.Spec : Prop :=
  ∀ n, P12966340998862285360.a n = A260234 (n + 2)

end A260234

/-! ## A260234.P14317951685975905349

`A006530(A226540(2*n+3))`
-/

namespace A260234.P14317951685975905349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A226540 (2 * n + 3)).toNat

end

end A260234.P14317951685975905349

namespace A260234

/-- `A006530(A226540(2*n+3))` -/
def P14317951685975905349.Spec : Prop :=
  ∀ n, P14317951685975905349.a n = A260234 (n + 2)

end A260234

/-! ## A260234.P12023285079461255766

`A006530(A006530(n+2)*(2*n+3))`
-/

namespace A260234.P12023285079461255766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (n + 2) * (2 * n + 3 : ℤ)).toNat

end

end A260234.P12023285079461255766

namespace A260234

/-- `A006530(A006530(n+2)*(2*n+3))` -/
def P12023285079461255766.Spec : Prop :=
  ∀ n, P12023285079461255766.a n = A260234 (n + 2)

end A260234

/-! ## A260234.P15578280978350771416

`A006530(A005408(n+1)*A006530(n+2))`
-/

namespace A260234.P15578280978350771416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005408 (n + 1) * A006530 (n + 2)).toNat

end

end A260234.P15578280978350771416

namespace A260234

/-- `A006530(A005408(n+1)*A006530(n+2))` -/
def P15578280978350771416.Spec : Prop :=
  ∀ n, P15578280978350771416.a n = A260234 (n + 2)

end A260234

/-! ## A260234.P13739396057179695242

`A006530(lcm(A005408(n+1), A006530(n+2)))`
-/

namespace A260234.P13739396057179695242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A005408 (n + 1)) (A006530 (n + 2)))

end

end A260234.P13739396057179695242

namespace A260234

/-- `A006530(lcm(A005408(n+1), A006530(n+2)))` -/
def P13739396057179695242.Spec : Prop :=
  ∀ n, P13739396057179695242.a n = A260234 (n + 2)

end A260234

/-! ## A260234.P5393718798356872840

`A006530((n+2)*A076565(n+1))`
-/

namespace A260234.P5393718798356872840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 2 : ℤ) * A076565 (n + 1)).toNat

end

end A260234.P5393718798356872840

namespace A260234

/-- `A006530((n+2)*A076565(n+1))` -/
def P5393718798356872840.Spec : Prop :=
  ∀ n, P5393718798356872840.a n = A260234 (n + 2)

end A260234

/-! ## A260234.P13265277220477005704

`A006530(C(2*(n+2), 2))`
-/

namespace A260234.P13265277220477005704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (2 * (n + 2)) 2)

end

end A260234.P13265277220477005704

namespace A260234

/-- `A006530(C(2*(n+2), 2))` -/
def P13265277220477005704.Spec : Prop :=
  ∀ n, P13265277220477005704.a n = A260234 (n + 2)

end A260234

/-! ## A260234.P5561084080790574474

`A006530(Δ[Δ[n*∑[∑[n]]]])`
-/

namespace A260234.P5561084080790574474
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A260234.P5561084080790574474

namespace A260234

/-- `A006530(Δ[Δ[n*∑[∑[n]]]])` -/
def P5561084080790574474.Spec : Prop :=
  ∀ n, P5561084080790574474.a n = A260234 (n + 2)

end A260234

/-! ## A260234.P13770762818360236109

`p?[A006530(A000217(2*n+1))]`
-/

namespace A260234.P13770762818360236109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000217 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260234.P13770762818360236109

namespace A260234

/-- `p?[A006530(A000217(2*n+1))]` -/
def P13770762818360236109.Spec : Prop :=
  ∀ n, P13770762818360236109.a n = A260234 (n + 2)

end A260234

/-! ## A260234.P9640155376569920996

`or(1, A006530(A000217(2*n+3)))`
-/

namespace A260234.P9640155376569920996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A000217 (2 * n + 3)).toNat)

end

end A260234.P9640155376569920996

namespace A260234

/-- `or(1, A006530(A000217(2*n+3)))` -/
def P9640155376569920996.Spec : Prop :=
  ∀ n, P9640155376569920996.a n = A260234 (n + 2)

end A260234

/-! ## A260234.P14151078259067552179

`or(1, A006530(A069268(2*n+3)))`
-/

namespace A260234.P14151078259067552179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A069268 (2 * n + 3)).toNat)

end

end A260234.P14151078259067552179

namespace A260234

/-- `or(1, A006530(A069268(2*n+3)))` -/
def P14151078259067552179.Spec : Prop :=
  ∀ n, P14151078259067552179.a n = A260234 (n + 2)

end A260234

/-! ## A260234.P6039137555222491756

`∏{p}[A006530(A046092(n+1)+n+2), #]`
-/

namespace A260234.P6039137555222491756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046092 (n + 1) + (n + 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A260234.P6039137555222491756

namespace A260234

/-- `∏{p}[A006530(A046092(n+1)+n+2), #]` -/
def P6039137555222491756.Spec : Prop :=
  ∀ n, (P6039137555222491756.a n : ℤ) = A260234 (n + 2)

end A260234

/-!
# A260235: Number of distinct prime factors of the n-th hexagonal number (A000384).

The programs for A260235, the canonical program `A260235.P8919696338789847144` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260235 has offset 2).

The definition of A260235 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A260235.P8919696338789847144

`A001221(A000384(n+2))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A260235

/-- `A001221(A000384(n+2))` -/
def P8919696338789847144.Spec : Prop :=
  ∀ n, P8919696338789847144.a n = A260235 (n + 2)

theorem P8919696338789847144.correct : P8919696338789847144.Spec := by
  intro n
  simp only [A260235, Nat.add_sub_cancel]

end A260235

/-! ## A260235.P18388397593500590011

`A001221(2*n+3)+A001221(n+2)`
-/

namespace A260235.P18388397593500590011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 3) + A001221 (n + 2)

end

end A260235.P18388397593500590011

namespace A260235

/-- `A001221(2*n+3)+A001221(n+2)` -/
def P18388397593500590011.Spec : Prop :=
  ∀ n, P18388397593500590011.a n = A260235 (n + 2)

end A260235

/-! ## A260235.P7529983745356962618

`A092523(n+2)+A001221(n+2)`
-/

namespace A260235.P7529983745356962618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092523 (n + 2) + A001221 (n + 2)

end

end A260235.P7529983745356962618

namespace A260235

/-- `A092523(n+2)+A001221(n+2)` -/
def P7529983745356962618.Spec : Prop :=
  ∀ n, P7529983745356962618.a n = A260235 (n + 2)

end A260235

/-! ## A260235.P6119008362473678553

`A082186(n+2)+A092523(n+2)-A082186(n+1)`
-/

namespace A260235.P6119008362473678553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (n + 2) + (A092523 (n + 2) - A082186 (n + 1))

end

end A260235.P6119008362473678553

namespace A260235

/-- `A082186(n+2)+A092523(n+2)-A082186(n+1)` -/
def P6119008362473678553.Spec : Prop :=
  ∀ n, P6119008362473678553.a n = A260235 (n + 2)

end A260235

/-! ## A260235.P14179965490198554835

`A069903(2*n+3)`
-/

namespace A260235.P14179965490198554835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069903 (2 * n + 3)

end

end A260235.P14179965490198554835

namespace A260235

/-- `A069903(2*n+3)` -/
def P14179965490198554835.Spec : Prop :=
  ∀ n, P14179965490198554835.a n = A260235 (n + 2)

end A260235

/-! ## A260235.P2825565995806989970

`A305614(2*n+3)+A106404(2*(n+2))`
-/

namespace A260235.P2825565995806989970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 (2 * n + 3) + A106404 (2 * (n + 2))

end

end A260235.P2825565995806989970

namespace A260235

/-- `A305614(2*n+3)+A106404(2*(n+2))` -/
def P2825565995806989970.Spec : Prop :=
  ∀ n, P2825565995806989970.a n = A260235 (n + 2)

end A260235

/-! ## A260235.P4363146951950131162

`A092523(A048673(n+2))+A092523(n+2)`
-/

namespace A260235.P4363146951950131162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092523 (A048673 (n + 2)).toNat + A092523 (n + 2)

end

end A260235.P4363146951950131162

namespace A260235

/-- `A092523(A048673(n+2))+A092523(n+2)` -/
def P4363146951950131162.Spec : Prop :=
  ∀ n, P4363146951950131162.a n = A260235 (n + 2)

end A260235

/-! ## A260235.P13640500042098512414

`∑{p}[∑[4*n+5]+1, A001222(#)]`
-/

namespace A260235.P13640500042098512414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A260235.P13640500042098512414

namespace A260235

/-- `∑{p}[∑[4*n+5]+1, A001222(#)]` -/
def P13640500042098512414.Spec : Prop :=
  ∀ n, P13640500042098512414.a n = A260235 (n + 2)

end A260235

/-! ## A260235.P16848691632309827674

`A087802(2*n+3)+A087802(n+2)`
-/

namespace A260235.P16848691632309827674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 (2 * n + 3) + A087802 (n + 2)

end

end A260235.P16848691632309827674

namespace A260235

/-- `A087802(2*n+3)+A087802(n+2)` -/
def P16848691632309827674.Spec : Prop :=
  ∀ n, P16848691632309827674.a n = A260235 (n + 2)

end A260235

/-! ## A260235.P1507592455994855161

`A001222(∏{p}[C(2*(n+2), 2), #])`
-/

namespace A260235.P1507592455994855161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A260235.P1507592455994855161

namespace A260235

/-- `A001222(∏{p}[C(2*(n+2), 2), #])` -/
def P1507592455994855161.Spec : Prop :=
  ∀ n, P1507592455994855161.a n = A260235 (n + 2)

end A260235

/-! ## A260235.P5560172589358929772

`A001222(∏{p}[(2*n+3)*(n+2), #])`
-/

namespace A260235.P5560172589358929772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A260235.P5560172589358929772

namespace A260235

/-- `A001222(∏{p}[(2*n+3)*(n+2), #])` -/
def P5560172589358929772.Spec : Prop :=
  ∀ n, P5560172589358929772.a n = A260235 (n + 2)

end A260235

/-! ## A260235.P14402277818531249594

`A001221(C(2*(n+2), 2))`
-/

namespace A260235.P14402277818531249594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (2 * (n + 2)) 2)

end

end A260235.P14402277818531249594

namespace A260235

/-- `A001221(C(2*(n+2), 2))` -/
def P14402277818531249594.Spec : Prop :=
  ∀ n, P14402277818531249594.a n = A260235 (n + 2)

end A260235

/-! ## A260235.P18357478705323605994

`A001221(Δ[Δ[n*∑[∑[n]]]])`
-/

namespace A260235.P18357478705323605994
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A260235.P18357478705323605994

namespace A260235

/-- `A001221(Δ[Δ[n*∑[∑[n]]]])` -/
def P18357478705323605994.Spec : Prop :=
  ∀ n, P18357478705323605994.a n = A260235 (n + 2)

end A260235

/-! ## A260235.P12846492280713689749

`and(7, A001221(A000217(2*n+3)))`
-/

namespace A260235.P12846492280713689749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A001221 (A000217 (2 * n + 3)).toNat)

end

end A260235.P12846492280713689749

namespace A260235

/-- `and(7, A001221(A000217(2*n+3)))` -/
def P12846492280713689749.Spec : Prop :=
  ∀ n, P12846492280713689749.a n = A260235 (n + 2)

end A260235

/-!
# A260236: Number of prime factors, with multiplicity, of the n-th hexagonal number (A000384).

The programs for A260236, the canonical program `A260236.P14916367128005953828` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260236 has offset 2).

The definition of A260236 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A260236.P14916367128005953828

`A001222(A000384(n+2))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A260236

/-- `A001222(A000384(n+2))` -/
def P14916367128005953828.Spec : Prop :=
  ∀ n, P14916367128005953828.a n = A260236 (n + 2)

theorem P14916367128005953828.correct : P14916367128005953828.Spec := by
  intro n
  simp only [A260236, Nat.add_sub_cancel]

end A260236

/-! ## A260236.P2012747409396084603

`Δ[A022559(2*(n+1))]-1`
-/

namespace A260236.P2012747409396084603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A260236.P2012747409396084603

namespace A260236

/-- `Δ[A022559(2*(n+1))]-1` -/
def P2012747409396084603.Spec : Prop :=
  ∀ n, P2012747409396084603.a n = A260236 (n + 2)

end A260236

/-! ## A260236.P18149021833900012654

`A023443(Δ[A022559(2*(n+1))])`
-/

namespace A260236.P18149021833900012654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A260236.P18149021833900012654

namespace A260236

/-- `A023443(Δ[A022559(2*(n+1))])` -/
def P18149021833900012654.Spec : Prop :=
  ∀ n, P18149021833900012654.a n = A260236 (n + 2)

end A260236

/-! ## A260236.P11988706624885997397

`∑[A023834(n+1)-A023836(n+1)]`
-/

namespace A260236.P11988706624885997397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023834 (n + 1) - A023836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260236.P11988706624885997397

namespace A260236

/-- `∑[A023834(n+1)-A023836(n+1)]` -/
def P11988706624885997397.Spec : Prop :=
  ∀ n, P11988706624885997397.a n = A260236 (n + 2)

end A260236

/-! ## A260236.P14847725214926435543

`A001222(2*n+3)+A001222(n+2)`
-/

namespace A260236.P14847725214926435543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 3) + A001222 (n + 2)

end

end A260236.P14847725214926435543

namespace A260236

/-- `A001222(2*n+3)+A001222(n+2)` -/
def P14847725214926435543.Spec : Prop :=
  ∀ n, P14847725214926435543.a n = A260236 (n + 2)

end A260236

/-! ## A260236.P7050480845435420191

`A069904(2*n+3)`
-/

namespace A260236.P7050480845435420191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (2 * n + 3)

end

end A260236.P7050480845435420191

namespace A260236

/-- `A069904(2*n+3)` -/
def P7050480845435420191.Spec : Prop :=
  ∀ n, P7050480845435420191.a n = A260236 (n + 2)

end A260236

/-! ## A260236.P9555152960315400670

`A091304(n+2)+A001222(n+2)`
-/

namespace A260236.P9555152960315400670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (n + 2) + A001222 (n + 2)

end

end A260236.P9555152960315400670

namespace A260236

/-- `A091304(n+2)+A001222(n+2)` -/
def P9555152960315400670.Spec : Prop :=
  ∀ n, P9555152960315400670.a n = A260236 (n + 2)

end A260236

/-! ## A260236.P11788972185576606728

`Δ[A348675(n+1)]-1`
-/

namespace A260236.P11788972185576606728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A260236.P11788972185576606728

namespace A260236

/-- `Δ[A348675(n+1)]-1` -/
def P11788972185576606728.Spec : Prop :=
  ∀ n, P11788972185576606728.a n = A260236 (n + 2)

end A260236

/-! ## A260236.P17973401721186363738

`Δ[A210241(2*(n+1))]-3`
-/

namespace A260236.P17973401721186363738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210241 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A260236.P17973401721186363738

namespace A260236

/-- `Δ[A210241(2*(n+1))]-3` -/
def P17973401721186363738.Spec : Prop :=
  ∀ n, P17973401721186363738.a n = A260236 (n + 2)

end A260236

/-! ## A260236.P13391377882624431423

`A086436(2*n+3)+A086436(n+2)`
-/

namespace A260236.P13391377882624431423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (2 * n + 3) + A086436 (n + 2)

end

end A260236.P13391377882624431423

namespace A260236

/-- `A086436(2*n+3)+A086436(n+2)` -/
def P13391377882624431423.Spec : Prop :=
  ∀ n, P13391377882624431423.a n = A260236 (n + 2)

end A260236

/-! ## A260236.P15902704223738955482

`A064800(2*n+3)-A069345(2*(n+2))`
-/

namespace A260236.P15902704223738955482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (2 * n + 3) - A069345 (2 * (n + 2))

end

end A260236.P15902704223738955482

namespace A260236

/-- `A064800(2*n+3)-A069345(2*(n+2))` -/
def P15902704223738955482.Spec : Prop :=
  ∀ n, P15902704223738955482.a n = A260236 (n + 2)

end A260236

/-! ## A260236.P12696055915700576287

`A091304(A048673(n+2))+A091304(n+2)`
-/

namespace A260236.P12696055915700576287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (A048673 (n + 2)).toNat + A091304 (n + 2)

end

end A260236.P12696055915700576287

namespace A260236

/-- `A091304(A048673(n+2))+A091304(n+2)` -/
def P12696055915700576287.Spec : Prop :=
  ∀ n, P12696055915700576287.a n = A260236 (n + 2)

end A260236

/-! ## A260236.P13605519305602894046

`∑{e}[C(2*(n+2), 2), #]`
-/

namespace A260236.P13605519305602894046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A260236.P13605519305602894046

namespace A260236

/-- `∑{e}[C(2*(n+2), 2), #]` -/
def P13605519305602894046.Spec : Prop :=
  ∀ n, (P13605519305602894046.a n : ℤ) = A260236 (n + 2)

end A260236

/-! ## A260236.P4553836750257795906

`∑{e}[(2*n+3)*(n+2), #]`
-/

namespace A260236.P4553836750257795906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) * (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A260236.P4553836750257795906

namespace A260236

/-- `∑{e}[(2*n+3)*(n+2), #]` -/
def P4553836750257795906.Spec : Prop :=
  ∀ n, (P4553836750257795906.a n : ℤ) = A260236 (n + 2)

end A260236

/-! ## A260236.P10512660544083240334

`A001222((n+2)*A278223(n+2))`
-/

namespace A260236.P10512660544083240334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 2 : ℤ) * A278223 (n + 2)).toNat

end

end A260236.P10512660544083240334

namespace A260236

/-- `A001222((n+2)*A278223(n+2))` -/
def P10512660544083240334.Spec : Prop :=
  ∀ n, P10512660544083240334.a n = A260236 (n + 2)

end A260236

/-! ## A260236.P11560618410379773352

`A001222((n+2)*A064216(n+2))`
-/

namespace A260236.P11560618410379773352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 2 : ℤ) * A064216 (n + 2)).toNat

end

end A260236.P11560618410379773352

namespace A260236

/-- `A001222((n+2)*A064216(n+2))` -/
def P11560618410379773352.Spec : Prop :=
  ∀ n, P11560618410379773352.a n = A260236 (n + 2)

end A260236

/-! ## A260236.P10193877132063720007

`A001222(C(2*(n+2), 2))`
-/

namespace A260236.P10193877132063720007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (2 * (n + 2)) 2)

end

end A260236.P10193877132063720007

namespace A260236

/-- `A001222(C(2*(n+2), 2))` -/
def P10193877132063720007.Spec : Prop :=
  ∀ n, P10193877132063720007.a n = A260236 (n + 2)

end A260236

/-! ## A260236.P1869718006810168928

`A001222(Δ[Δ[n*∑[∑[n]]]])`
-/

namespace A260236.P1869718006810168928
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A260236.P1869718006810168928

namespace A260236

/-- `A001222(Δ[Δ[n*∑[∑[n]]]])` -/
def P1869718006810168928.Spec : Prop :=
  ∀ n, P1869718006810168928.a n = A260236 (n + 2)

end A260236

/-! ## A260236.P15544921212473256239

`A001222(A000217(2*n+3))%11`
-/

namespace A260236.P15544921212473256239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A000217 (2 * n + 3)).toNat) 11

end

end A260236.P15544921212473256239

namespace A260236

/-- `A001222(A000217(2*n+3))%11` -/
def P15544921212473256239.Spec : Prop :=
  ∀ n, P15544921212473256239.a n = A260236 (n + 2)

end A260236

/-! ## A260236.P12212616861905444546

`A001222(A266665(2*n+3))%11`
-/

namespace A260236.P12212616861905444546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A266665 (2 * n + 3)).toNat) 11

end

end A260236.P12212616861905444546

namespace A260236

/-- `A001222(A266665(2*n+3))%11` -/
def P12212616861905444546.Spec : Prop :=
  ∀ n, P12212616861905444546.a n = A260236 (n + 2)

end A260236

/-!
# A260238: Denominators of the characteristic polynomials of the von Mangoldt function matrix.

The programs for A260238, there is no canonical definition to state claims against.
-/

/-! ## A260238.P13001779274630495623

`A290641(A214631(n+1))%(n+3)`
-/

namespace A260238.P13001779274630495623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290641 (A214631 (n + 1)).toNat) (n + 3 : ℤ)

end

end A260238.P13001779274630495623

/-! ## A260238.P10076566045073672490

`gcd(A212883(2*n+1), A358501(A086810(n+2)))`
-/

namespace A260238.P10076566045073672490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A212883 (2 * n + 1)) (A358501 (A086810 (n + 2)).toNat)

end

end A260238.P10076566045073672490

/-!
# A260239: Consider the 2^n values of A147562(i)/i^2 for 2^n <= i < 2^(n+1); a(n) = value of i where this quantity is minimized.

The programs for A260239, there is no canonical definition to state claims against.
-/

/-! ## A260239.P4055748915821975544

`2*A292248(a(n-1))+1` with `a(0)=1`
-/

namespace A260239.P4055748915821975544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A292248 (a (n - 1)).toNat + 1

end

end A260239.P4055748915821975544

/-! ## A260239.P5120261953062160925

`A005408(A292248(a(n-1)))` with `a(0)=1`
-/

namespace A260239.P5120261953062160925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005408 (A292248 (a (n - 1)).toNat).toNat

end

end A260239.P5120261953062160925

/-! ## A260239.P17573398699684618222

`A004396(A293337(n)-A293328(n))`
-/

namespace A260239.P17573398699684618222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A293337 n - A293328 n).toNat

end

end A260239.P17573398699684618222

/-! ## A260239.P16672258778701165484

`A004525(ceil(2^n/ϕ)+floor(sqrt(5)*2^n))`
-/

namespace A260239.P16672258778701165484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (⌈(2 ^ n : ℝ) / Real.goldenRatio⌉ + ⌊Real.sqrt (5 : ℝ) * (2 ^ n : ℝ)⌋).toNat

end

end A260239.P16672258778701165484

/-! ## A260239.P2992799478490478996

`A049206(A293331(n)+A293323(n))`
-/

namespace A260239.P2992799478490478996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049206 (A293331 n + A293323 n).toNat

end

end A260239.P2992799478490478996

/-!
# A260240: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00001001.

The programs for A260240, there is no canonical definition to state claims against.
-/

/-! ## A260240.P17171302608689142195

`A260248(∑[4*n]+1)`
-/

namespace A260240.P17171302608689142195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260240.P17171302608689142195

/-! ## A260240.P2999960206112753549

`and(-1, A260248(A001844(n)))`
-/

namespace A260240.P2999960206112753549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A260248 (A001844 n).toNat)

end

end A260240.P2999960206112753549

/-! ## A260240.P7809168288953161486

`record[A003982(n)*A260248(n+1)]`
-/

namespace A260240.P7809168288953161486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A260248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260240.P7809168288953161486

/-! ## A260240.P3821189898357353376

`record[A214505(n)*A260248(n+1)]`
-/

namespace A260240.P3821189898357353376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A260248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260240.P3821189898357353376

/-! ## A260240.P15174473438366883437

`record[A010052(2*n+1)*A260248(n+1)]`
-/

namespace A260240.P15174473438366883437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A260248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260240.P15174473438366883437

/-!
# A260241: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000101 or 00001001.

The programs for A260241, there is no canonical definition to state claims against.
-/

/-! ## A260241.P6421838444607956468

`A260248(∑[n]+1)`
-/

namespace A260241.P6421838444607956468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260241.P6421838444607956468

/-! ## A260241.P8516740211137433220

`record[A260248(A329854(n))]`
-/

namespace A260241.P8516740211137433220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A329854 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260241.P8516740211137433220

/-! ## A260241.P6819844527658726186

`and(-1, A260248(A000124(n)))`
-/

namespace A260241.P6819844527658726186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A260248 (A000124 n).toNat)

end

end A260241.P6819844527658726186

/-! ## A260241.P7667590363419386380

`record[A260248(A056536(n+1))]`
-/

namespace A260241.P7667590363419386380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260241.P7667590363419386380

/-! ## A260241.P9146315936506602376

`record[A260248(A226387(n+1))]`
-/

namespace A260241.P9146315936506602376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A226387 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260241.P9146315936506602376

/-!
# A260242: Number of (n+2)X(2+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00001001.

The programs for A260242, there is no canonical definition to state claims against.
-/

/-! ## A260242.P7706207261864235526

`A260248(∑[n+1]+2)`
-/

namespace A260242.P7706207261864235526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A260242.P7706207261864235526

/-! ## A260242.P9274580078819521967

`or(char[1], A260248(A133263(n+1)))`
-/

namespace A260242.P9274580078819521967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260248 (A133263 (n + 1)).toNat)

end

end A260242.P9274580078819521967

/-! ## A260242.P10969006728177881720

`record[A260248(n+2)/A299927(n+1)]`
-/

namespace A260242.P10969006728177881720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260248 (n + 2) : ℚ) / (A299927 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260242.P10969006728177881720

/-! ## A260242.P8963895388533481714

`A007318(C(2, n))*A260248(A133263(n+1))`
-/

namespace A260242.P8963895388533481714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A260248 (A133263 (n + 1)).toNat

end

end A260242.P8963895388533481714

/-! ## A260242.P3224268558007018304

`A000041(C(2, n+2))*A260248(A133263(n+1))`
-/

namespace A260242.P3224268558007018304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A260248 (A133263 (n + 1)).toNat

end

end A260242.P3224268558007018304

/-!
# A260243: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00001001.

The programs for A260243, there is no canonical definition to state claims against.
-/

/-! ## A260243.P4140756441248938040

`A260248(∑[n+2]+4)`
-/

namespace A260243.P4140756441248938040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A260243.P4140756441248938040

/-! ## A260243.P8479182521387308396

`and(-1, A260248(A167614(n+1)))`
-/

namespace A260243.P8479182521387308396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A260248 (A167614 (n + 1)).toNat)

end

end A260243.P8479182521387308396

/-! ## A260243.P15294412102146477171

`record[A260248(A226387(n+2)+2)]`
-/

namespace A260243.P15294412102146477171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A226387 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260243.P15294412102146477171

/-! ## A260243.P16626074144858823278

`or(char[1], A260248(A046691(n)+7))`
-/

namespace A260243.P16626074144858823278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260248 (A046691 n + 7).toNat)

end

end A260243.P16626074144858823278

/-! ## A260243.P538763000111058290

`A260248(A167614(n+1))+A025438(n)`
-/

namespace A260243.P538763000111058290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A167614 (n + 1)).toNat + A025438 n

end

end A260243.P538763000111058290

/-!
# A260244: Number of (n+2) X (4+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000101 or 00001001.

The programs for A260244, there is no canonical definition to state claims against.
-/

/-! ## A260244.P16386787880772675872

`A260248(∑[n+3]+7)`
-/

namespace A260244.P16386787880772675872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A260244.P16386787880772675872

/-! ## A260244.P6980954937908583534

`or(1, A260248(A052905(n)+9))`
-/

namespace A260244.P6980954937908583534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A260248 (A052905 n + 9).toNat)

end

end A260244.P6980954937908583534

/-! ## A260244.P11843336226198589007

`or(1, A260248(A167614(n+2)+1))`
-/

namespace A260244.P11843336226198589007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A260248 (A167614 (n + 2) + 1).toNat)

end

end A260244.P11843336226198589007

/-! ## A260244.P17268118619892421276

`A007318(C(2, n))*A260248(A052905(n)+9)`
-/

namespace A260244.P17268118619892421276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A260248 (A052905 n + 9).toNat

end

end A260244.P17268118619892421276

/-! ## A260244.P16859802168618397359

`A007318(val(n+1, 4))*A260248(A052905(n)+9)`
-/

namespace A260244.P16859802168618397359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 4) * A260248 (A052905 n + 9).toNat

end

end A260244.P16859802168618397359

/-!
# A260245: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00001001.

The programs for A260245, there is no canonical definition to state claims against.
-/

/-! ## A260245.P271428918913715869

`A260248(A374005(n+1))`
-/

namespace A260245.P271428918913715869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A374005 (n + 1)).toNat

end

end A260245.P271428918913715869

/-! ## A260245.P9154594362170108810

`A260248(A167499(n+3))`
-/

namespace A260245.P9154594362170108810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A167499 (n + 3)).toNat

end

end A260245.P9154594362170108810

/-! ## A260245.P8433341439499501454

`A260248(A155212(n)+13)`
-/

namespace A260245.P8433341439499501454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A155212 n + 13).toNat

end

end A260245.P8433341439499501454

/-! ## A260245.P6470633645751805797

`A260248(A056000(n)+15)`
-/

namespace A260245.P6470633645751805797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A056000 n + 15).toNat

end

end A260245.P6470633645751805797

/-! ## A260245.P6707410759361055521

`A260248(eq[7, A066657(n)])`
-/

namespace A260245.P6707410759361055521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260245.P6707410759361055521

/-!
# A260246: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00001001.

The programs for A260246, there is no canonical definition to state claims against.
-/

/-! ## A260246.P11655313915271066966

`A260248(A374007(n+1))`
-/

namespace A260246.P11655313915271066966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A374007 (n + 1)).toNat

end

end A260246.P11655313915271066966

/-! ## A260246.P7418619171858331079

`A260248(A056115(n)+21)`
-/

namespace A260246.P7418619171858331079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A056115 n + 21).toNat

end

end A260246.P7418619171858331079

/-! ## A260246.P17441449613664261446

`A260248(A167614(n+4)+3)`
-/

namespace A260246.P17441449613664261446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A167614 (n + 4) + 3).toNat

end

end A260246.P17441449613664261446

/-! ## A260246.P5372783604546432191

`A260248(A000124(n+5)+5)`
-/

namespace A260246.P5372783604546432191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A000124 (n + 5) + 5).toNat

end

end A260246.P5372783604546432191

/-! ## A260246.P17866597844973917737

`A260248(A000096(n+4)+7)`
-/

namespace A260246.P17866597844973917737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A000096 (n + 4) + 7).toNat

end

end A260246.P17866597844973917737

/-!
# A260247: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000101 or 00001001.

The programs for A260247, there is no canonical definition to state claims against.
-/

/-! ## A260247.P17942099964104397389

`A260248(A374008(n+1))`
-/

namespace A260247.P17942099964104397389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A374008 (n + 1)).toNat

end

end A260247.P17942099964104397389

/-! ## A260247.P2643651831209745747

`A260248(A167487(n+5))`
-/

namespace A260247.P2643651831209745747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A167487 (n + 5)).toNat

end

end A260247.P2643651831209745747

/-! ## A260247.P4685427047574086433

`A260248(A167499(n+5)+2)`
-/

namespace A260247.P4685427047574086433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A167499 (n + 5) + 2).toNat

end

end A260247.P4685427047574086433

/-! ## A260247.P13433344933351337924

`A260248(A167614(n+5)+4)`
-/

namespace A260247.P13433344933351337924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A167614 (n + 5) + 4).toNat

end

end A260247.P13433344933351337924

/-! ## A260247.P12413363169786026547

`A260248(A000124(n+6)+6)`
-/

namespace A260247.P12413363169786026547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260248 (A000124 (n + 6) + 6).toNat

end

end A260247.P12413363169786026547

/-!
# A260251: Indices of terms in Recamán's sequence A005132 that do not appear for the first time.

The programs for A260251, there is no canonical definition to state claims against.
-/

/-! ## A260251.P18093014188799513038

`lt[A057167(A005132(n)), n]`
-/

namespace A260251.P18093014188799513038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 (A005132 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A260251.P18093014188799513038

/-! ## A260251.P6741035355532618441

`lt[A057167(A209386(n)/2), n]`
-/

namespace A260251.P6741035355532618441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 (SequenceMachineLib.roundAway ((A209386 n : ℚ) / 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A260251.P6741035355532618441

/-! ## A260251.P13466370211435031058

`lt[A057167(floor(A209387(n)/2)), n]`
-/

namespace A260251.P13466370211435031058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 ⌊(A209387 n : ℚ) / 2⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A260251.P13466370211435031058

/-! ## A260251.P17616096110562716415

`lt[A057167(A063733(n+1)-1), n]`
-/

namespace A260251.P17616096110562716415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 (A063733 (n + 1) - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A260251.P17616096110562716415

/-! ## A260251.P890880341403908199

`lt[A057167(A334951(n+1)+1+n), n]`
-/

namespace A260251.P890880341403908199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 (A334951 (n + 1) + 1 + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A260251.P890880341403908199

/-! ## A260251.P6911602460932866133

`comp[A057167(n)]`
-/

namespace A260251.P6911602460932866133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A260251.P6911602460932866133

/-!
# A260253: Number of symmetry-allowed, linearly-independent terms at n-th order in the expansion of E x (e+a) rovibrational perturbation matrix H(Jx,Jy,Jz).

The programs for A260253, the canonical program `A260253.P12331015840602331045` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260253 has offset 0).

The definition of A260253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260253.P12331015840602331045

`2*a(n-2)-a(n-4)+a(n-6)-2*a(n-8)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=1, a(4)=9, a(5)=2, a(6)=16, a(7)=4, a(8)=25, a(9)=7`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260253

/-- `2*a(n-2)-a(n-4)+a(n-6)-2*a(n-8)+a(n-10)` -/
def P12331015840602331045.Spec : Prop :=
  ∀ n, P12331015840602331045.a n = A260253 n

theorem P12331015840602331045.correct : P12331015840602331045.Spec := by
  intro n
  simp only [A260253]

end A260253

/-! ## A260253.P10382485323882573374

`A008796(n)+A001840(A237420(n))`
-/

namespace A260253.P10382485323882573374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 n + A001840 (A237420 n).toNat

end

end A260253.P10382485323882573374

namespace A260253

/-- `A008796(n)+A001840(A237420(n))` -/
def P10382485323882573374.Spec : Prop :=
  ∀ n, P10382485323882573374.a n = A260253 n

end A260253

/-! ## A260253.P16563053963139185820

`A008796(A093178(n))+A027656(n)²`
-/

namespace A260253.P16563053963139185820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008796 (A093178 n).toNat + A027656 n ^ 2

end

end A260253.P16563053963139185820

namespace A260253

/-- `A008796(A093178(n))+A027656(n)²` -/
def P16563053963139185820.Spec : Prop :=
  ∀ n, P16563053963139185820.a n = A260253 n

end A260253

/-! ## A260253.P15148288253299936489

`A211540(n+2)+A059841(n)*A156040(n+1)`
-/

namespace A260253.P15148288253299936489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (n + 2) + A059841 n * A156040 (n + 1)

end

end A260253.P15148288253299936489

namespace A260253

/-- `A211540(n+2)+A059841(n)*A156040(n+1)` -/
def P15148288253299936489.Spec : Prop :=
  ∀ n, P15148288253299936489.a n = A260253 n

end A260253

/-! ## A260253.P5003758705647050623

`abs(A181120(A165754(n))-A181120(n))`
-/

namespace A260253.P5003758705647050623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A181120 (A165754 n).toNat - A181120 n|

end

end A260253.P5003758705647050623

namespace A260253

/-- `abs(A181120(A165754(n))-A181120(n))` -/
def P5003758705647050623.Spec : Prop :=
  ∀ n, P5003758705647050623.a n = A260253 n

end A260253

/-! ## A260253.P13954800759178221289

`A001399(A266303(n))-A131723(n)`
-/

namespace A260253.P13954800759178221289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A266303 n).toNat - A131723 n

end

end A260253.P13954800759178221289

namespace A260253

/-- `A001399(A266303(n))-A131723(n)` -/
def P13954800759178221289.Spec : Prop :=
  ∀ n, P13954800759178221289.a n = A260253 n

end A260253

/-! ## A260253.P3115718997074095776

`A005044(A266303(n))+A027656(n)²`
-/

namespace A260253.P3115718997074095776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A266303 n).toNat + A027656 n ^ 2

end

end A260253.P3115718997074095776

namespace A260253

/-- `A005044(A266303(n))+A027656(n)²` -/
def P3115718997074095776.Spec : Prop :=
  ∀ n, P3115718997074095776.a n = A260253 n

end A260253

/-! ## A260253.P6015233118417807934

`A004396(A051494(n)+∑[A110655(n)])`
-/

namespace A260253.P6015233118417807934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A051494 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A260253.P6015233118417807934

namespace A260253

/-- `A004396(A051494(n)+∑[A110655(n)])` -/
def P6015233118417807934.Spec : Prop :=
  ∀ n, P6015233118417807934.a n = A260253 n

end A260253

/-! ## A260253.P1927816767020504337

`A002264(∑[n+1]+A131723(n+1)+1)`
-/

namespace A260253.P1927816767020504337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A131723 (n + 1) + 1)).toNat

end

end A260253.P1927816767020504337

namespace A260253

/-- `A002264(∑[n+1]+A131723(n+1)+1)` -/
def P1927816767020504337.Spec : Prop :=
  ∀ n, P1927816767020504337.a n = A260253 n

end A260253

/-!
# A260254: Number of ways to write n as sum of two palindromes in decimal representation.

The programs for A260254, there is no canonical definition to state claims against.
-/

/-! ## A260254.P14680733297712900703

`A319468(n)+A136522(n)`
-/

namespace A260254.P14680733297712900703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319468 n + A136522 n

end

end A260254.P14680733297712900703

/-! ## A260254.P2329217181688336208

`A261132(n)-A261131(n)`
-/

namespace A260254.P2329217181688336208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261132 n - A261131 n

end

end A260254.P2329217181688336208

/-! ## A260254.P4864831012910993340

`A319468(n)+char[A261423(n)]`
-/

namespace A260254.P4864831012910993340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319468 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260254.P4864831012910993340

/-! ## A260254.P1227568301508920012

`A319468(n)+char[A002113(n+1)]`
-/

namespace A260254.P1227568301508920012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319468 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260254.P1227568301508920012

/-! ## A260254.P363208465516925161

`A319468(n)+A000007(A338827(n))`
-/

namespace A260254.P363208465516925161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319468 n + A000007 (A338827 n).toNat

end

end A260254.P363208465516925161

/-! ## A260254.P14275322267797670919

`A319468(n)+char[A020485(n)]`
-/

namespace A260254.P14275322267797670919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319468 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260254.P14275322267797670919

/-! ## A260254.P13177186125189987995

`A319468(n)+char[A082216(n)]`
-/

namespace A260254.P13177186125189987995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319468 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260254.P13177186125189987995

/-! ## A260254.P12866062779810943375

`A319468(n)+char[A047813(n)]`
-/

namespace A260254.P12866062779810943375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319468 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260254.P12866062779810943375

/-! ## A260254.P365861231966774558

`A319468(n)+char[A265525(n)]`
-/

namespace A260254.P365861231966774558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319468 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A260254.P365861231966774558

/-!
# A260255: Numbers that can be written as the sum of two nonnegative palindromes in base 10.

The programs for A260255, there is no canonical definition to state claims against.
-/

/-! ## A260255.P2558141465867278544

`comp[A035137(n+1)]`
-/

namespace A260255.P2558141465867278544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A260255.P2558141465867278544

/-! ## A260255.P7280914504476012143

`lt[0, A260254(n)]`
-/

namespace A260255.P7280914504476012143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A260255.P7280914504476012143

/-! ## A260255.P15925240244919893319

`lt[n, A047819(A262087(n))]`
-/

namespace A260255.P15925240244919893319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047819 (A262087 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A260255.P15925240244919893319

/-! ## A260255.P7957081163641510866

`lt[A319387(n), A008619(n)]`
-/

namespace A260255.P7957081163641510866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319387 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260255.P7957081163641510866

/-!
# A260256: Numbers m such that tau(m + 2) = tau(m - 2) where tau(k) = A000005(k).

The programs for A260256, the canonical program `A260256.P436292535346818829` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260256 has offset 1).

The definition of A260256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260256.P436292535346818829

`eq[A000005(n+1), A000005(n+5)]+3`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A260256

/-- `eq[A000005(n+1), A000005(n+5)]+3` -/
def P436292535346818829.Spec : Prop :=
  ∀ n, (P436292535346818829.a n : ℤ) = A260256 (n + 1)

theorem P436292535346818829.correct : P436292535346818829.Spec := by
  intro n
  simp only [A260256, Nat.add_sub_cancel]

end A260256

/-! ## A260256.P17033762455698115595

`eq[A189827(n+2), A189827(n+4)]+3`
-/

namespace A260256.P17033762455698115595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189827 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A260256.P17033762455698115595

namespace A260256

/-- `eq[A189827(n+2), A189827(n+4)]+3` -/
def P17033762455698115595.Spec : Prop :=
  ∀ n, (P17033762455698115595.a n : ℤ) = A260256 (n + 1)

end A260256

/-! ## A260256.P13754220588050730072

`A009005(eq[A000005(n+1), A000005(n+5)])`
-/

namespace A260256.P13754220588050730072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A260256.P13754220588050730072

namespace A260256

/-- `A009005(eq[A000005(n+1), A000005(n+5)])` -/
def P13754220588050730072.Spec : Prop :=
  ∀ n, P13754220588050730072.a n = A260256 (n + 1)

end A260256

/-! ## A260256.P16534909479860663811

`eq[A032741(n+4), A032741(n)]+2`
-/

namespace A260256.P16534909479860663811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A260256.P16534909479860663811

namespace A260256

/-- `eq[A032741(n+4), A032741(n)]+2` -/
def P16534909479860663811.Spec : Prop :=
  ∀ n, (P16534909479860663811.a n : ℤ) = A260256 (n + 1)

end A260256

/-! ## A260256.P9620931647647545188

`eq[A145154(n+4), A145154(n)]+2`
-/

namespace A260256.P9620931647647545188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A260256.P9620931647647545188

namespace A260256

/-- `eq[A145154(n+4), A145154(n)]+2` -/
def P9620931647647545188.Spec : Prop :=
  ∀ n, (P9620931647647545188.a n : ℤ) = A260256 (n + 1)

end A260256

/-! ## A260256.P16564566821045174387

`eq[A070824(n+2), A070824(n+6)]+4`
-/

namespace A260256.P16564566821045174387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 4

end

end A260256.P16564566821045174387

namespace A260256

/-- `eq[A070824(n+2), A070824(n+6)]+4` -/
def P16564566821045174387.Spec : Prop :=
  ∀ n, (P16564566821045174387.a n : ℤ) = A260256 (n + 1)

end A260256

/-! ## A260256.P10068088328841069733

`eq[A280583(n+2), A280583(n+6)]+4`
-/

namespace A260256.P10068088328841069733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280583 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280583 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 4

end

end A260256.P10068088328841069733

namespace A260256

/-- `eq[A280583(n+2), A280583(n+6)]+4` -/
def P10068088328841069733.Spec : Prop :=
  ∀ n, (P10068088328841069733.a n : ℤ) = A260256 (n + 1)

end A260256

/-! ## A260256.P12004456752867858525

`eq[A023645(n+3), A023645(n+7)]+5`
-/

namespace A260256.P12004456752867858525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 5

end

end A260256.P12004456752867858525

namespace A260256

/-- `eq[A023645(n+3), A023645(n+7)]+5` -/
def P12004456752867858525.Spec : Prop :=
  ∀ n, (P12004456752867858525.a n : ℤ) = A260256 (n + 1)

end A260256

/-! ## A260256.P8180250262450086394

`eq[A035116(n+3), A035116(n+7)]+5`
-/

namespace A260256.P8180250262450086394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 5

end

end A260256.P8180250262450086394

namespace A260256

/-- `eq[A035116(n+3), A035116(n+7)]+5` -/
def P8180250262450086394.Spec : Prop :=
  ∀ n, (P8180250262450086394.a n : ℤ) = A260256 (n + 1)

end A260256

/-! ## A260256.P16228222034014353667

`eq[A076984(n+3), A076984(n+7)]+5`
-/

namespace A260256.P16228222034014353667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 5

end

end A260256.P16228222034014353667

namespace A260256

/-- `eq[A076984(n+3), A076984(n+7)]+5` -/
def P16228222034014353667.Spec : Prop :=
  ∀ n, (P16228222034014353667.a n : ℤ) = A260256 (n + 1)

end A260256

/-! ## A260256.P7630742273211662755

`eq[A096737(n+2), A096737(n+6)]+4`
-/

namespace A260256.P7630742273211662755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096737 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096737 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 4

end

end A260256.P7630742273211662755

namespace A260256

/-- `eq[A096737(n+2), A096737(n+6)]+4` -/
def P7630742273211662755.Spec : Prop :=
  ∀ n, (P7630742273211662755.a n : ℤ) = A260256 (n + 1)

end A260256

/-!
# A260257: Numbers n such that A259935(n) = A259935(n-1).

The programs for A260257, there is no canonical definition to state claims against.
-/

/-! ## A260257.P2203742631860016122

`eq[A259935(n+1), A259935(n+2)]+2`
-/

namespace A260257.P2203742631860016122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259935 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A260257.P2203742631860016122

/-!
# A260258: T(n,k) is the array read by rows, n>0 and k=1..q (with q = number of prime distinct divisors of n^2+1) giving the number of occurrences of the k-th prime divisor of n^2+1 counted from the prime divisors of m^2+1 for m=1..n.

The programs for A260258, there is no canonical definition to state claims against.
-/

/-! ## A260258.P14747508348892509094

`A341675(2*n+5)+A318721(A116621(2*(n+1)))`
-/

namespace A260258.P14747508348892509094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (2 * n + 5) + A318721 (A116621 (2 * (n + 1))).toNat

end

end A260258.P14747508348892509094

/-! ## A260258.P14610091055912480076

`A070878(A219659(n)+A101622(n))`
-/

namespace A260258.P14610091055912480076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 (A219659 n + A101622 n).toNat

end

end A260258.P14610091055912480076

/-!
# A260259: a(n) = F(n)*F(n+1) - (-1)^n, where F = A000045.

The programs for A260259, the canonical program `A260259.P9434797908977225199` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260259 has offset 0).

The definition of A260259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260259.P9434797908977225199

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=-1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260259

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P9434797908977225199.Spec : Prop :=
  ∀ n, P9434797908977225199.a n = A260259 n

theorem P9434797908977225199.correct : P9434797908977225199.Spec := by
  intro n
  simp only [A260259]

end A260259

/-! ## A260259.P14397432851546125166

`ogf((1-4x+x^2)/(-1+2x+2x^2-x^3))`
-/

namespace A260259.P14397432851546125166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 4, -1] [1, -2, -2, 1] n

end

end A260259.P14397432851546125166

namespace A260259

/-- `ogf((1-4x+x^2)/(-1+2x+2x^2-x^3))` -/
def P14397432851546125166.Spec : Prop :=
  ∀ n, P14397432851546125166.a n = A260259 n

end A260259

/-! ## A260259.P14321075036789139456

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=-1, a(1)=2, a(2)=1`
-/

namespace A260259.P14321075036789139456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, 1] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A260259.P14321075036789139456

namespace A260259

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P14321075036789139456.Spec : Prop :=
  ∀ n, P14321075036789139456.a n = A260259 n

theorem P14321075036789139456.correct : P14321075036789139456.Spec := by
  intro n
  simp only [A260259, Nat.add_sub_cancel, A260259.P14321075036789139456.a, A260259.P9434797908977225199.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A260259

/-! ## A260259.P4252049967065252033

`A111569(2*n)`
-/

namespace A260259.P4252049967065252033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 (2 * n)

end

end A260259.P4252049967065252033

namespace A260259

/-- `A111569(2*n)` -/
def P4252049967065252033.Spec : Prop :=
  ∀ n, P4252049967065252033.a n = A260259 n

end A260259

/-! ## A260259.P410230104286530409

`A001654(n)-(-1)^n`
-/

namespace A260259.P410230104286530409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n - (-1) ^ n

end

end A260259.P410230104286530409

namespace A260259

/-- `A001654(n)-(-1)^n` -/
def P410230104286530409.Spec : Prop :=
  ∀ n, P410230104286530409.a n = A260259 n

end A260259

/-! ## A260259.P7147262217430788147

`∑[A007598(n)]-(-1)^n`
-/

namespace A260259.P7147262217430788147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (-1) ^ n

end

end A260259.P7147262217430788147

namespace A260259

/-- `∑[A007598(n)]-(-1)^n` -/
def P7147262217430788147.Spec : Prop :=
  ∀ n, P7147262217430788147.a n = A260259 n

end A260259

/-! ## A260259.P1396024107410590821

`∑[A000045(n)²]-(-1)^n`
-/

namespace A260259.P1396024107410590821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (-1) ^ n

end

end A260259.P1396024107410590821

namespace A260259

/-- `∑[A000045(n)²]-(-1)^n` -/
def P1396024107410590821.Spec : Prop :=
  ∀ n, P1396024107410590821.a n = A260259 n

end A260259

/-! ## A260259.P11998463821006104534

`A033999(n+1)+A001654(n)`
-/

namespace A260259.P11998463821006104534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A001654 n

end

end A260259.P11998463821006104534

namespace A260259

/-- `A033999(n+1)+A001654(n)` -/
def P11998463821006104534.Spec : Prop :=
  ∀ n, P11998463821006104534.a n = A260259 n

end A260259

/-! ## A260259.P14950221042611495577

`A105812(n+2)+A001654(n)`
-/

namespace A260259.P14950221042611495577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (n + 2) + A001654 n

end

end A260259.P14950221042611495577

namespace A260259

/-- `A105812(n+2)+A001654(n)` -/
def P14950221042611495577.Spec : Prop :=
  ∀ n, P14950221042611495577.a n = A260259 n

end A260259

/-! ## A260259.P13946701476782033133

`A074677(2*n)-A033999(n)`
-/

namespace A260259.P13946701476782033133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (2 * n) - A033999 n

end

end A260259.P13946701476782033133

namespace A260259

/-- `A074677(2*n)-A033999(n)` -/
def P13946701476782033133.Spec : Prop :=
  ∀ n, P13946701476782033133.a n = A260259 n

end A260259

/-! ## A260259.P16665026281716699604

`2*A007598(n)-A212804(n)²`
-/

namespace A260259.P16665026281716699604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007598 n - A212804 n ^ 2

end

end A260259.P16665026281716699604

namespace A260259

/-- `2*A007598(n)-A212804(n)²` -/
def P16665026281716699604.Spec : Prop :=
  ∀ n, P16665026281716699604.a n = A260259 n

end A260259

/-! ## A260259.P6384816607257090508

`A033999(n+1)+∑[A007598(n)]`
-/

namespace A260259.P6384816607257090508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260259.P6384816607257090508

namespace A260259

/-- `A033999(n+1)+∑[A007598(n)]` -/
def P6384816607257090508.Spec : Prop :=
  ∀ n, P6384816607257090508.a n = A260259 n

end A260259

/-! ## A260259.P6604204040040031976

`Δ[A212804(n)²]+A000045(n)²`
-/

namespace A260259.P6604204040040031976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000045 n ^ 2

end

end A260259.P6604204040040031976

namespace A260259

/-- `Δ[A212804(n)²]+A000045(n)²` -/
def P6604204040040031976.Spec : Prop :=
  ∀ n, P6604204040040031976.a n = A260259 n

end A260259

/-! ## A260259.P6863270950726725122

`A007598(n)+Δ[Δ[A000045(n)]²]`
-/

namespace A260259.P6863270950726725122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + (f1 (n + 1) - f1 n)

end

end A260259.P6863270950726725122

namespace A260259

/-- `A007598(n)+Δ[Δ[A000045(n)]²]` -/
def P6863270950726725122.Spec : Prop :=
  ∀ n, P6863270950726725122.a n = A260259 n

end A260259

/-! ## A260259.P16551015738077326396

`A286983(n+1)-A007492(n+1)`
-/

namespace A260259.P16551015738077326396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286983 (n + 1) - A007492 (n + 1)

end

end A260259.P16551015738077326396

namespace A260259

/-- `A286983(n+1)-A007492(n+1)` -/
def P16551015738077326396.Spec : Prop :=
  ∀ n, P16551015738077326396.a n = A260259 n

end A260259

/-! ## A260259.P17377774895541760649

`A059840(n+1)-A327767(n+1)`
-/

namespace A260259.P17377774895541760649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 (n + 1) - A327767 (n + 1)

end

end A260259.P17377774895541760649

namespace A260259

/-- `A059840(n+1)-A327767(n+1)` -/
def P17377774895541760649.Spec : Prop :=
  ∀ n, P17377774895541760649.a n = A260259 n

end A260259

/-! ## A260259.P13559258724231319216

`A087960(2*(n+1))+A001654(n)`
-/

namespace A260259.P13559258724231319216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * (n + 1)) + A001654 n

end

end A260259.P13559258724231319216

namespace A260259

/-- `A087960(2*(n+1))+A001654(n)` -/
def P13559258724231319216.Spec : Prop :=
  ∀ n, P13559258724231319216.a n = A260259 n

end A260259

/-! ## A260259.P10722734701802162600

`A226205(n+1)-2*A033999(n)`
-/

namespace A260259.P10722734701802162600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (n + 1) - 2 * A033999 n

end

end A260259.P10722734701802162600

namespace A260259

/-- `A226205(n+1)-2*A033999(n)` -/
def P10722734701802162600.Spec : Prop :=
  ∀ n, P10722734701802162600.a n = A260259 n

end A260259

/-! ## A260259.P5567485674757028807

`A074677(2*n)-A056594(2*n)`
-/

namespace A260259.P5567485674757028807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (2 * n) - A056594 (2 * n)

end

end A260259.P5567485674757028807

namespace A260259

/-- `A074677(2*n)-A056594(2*n)` -/
def P5567485674757028807.Spec : Prop :=
  ∀ n, P5567485674757028807.a n = A260259 n

end A260259

/-! ## A260259.P10617202769852345365

`A074677(2*n)-A057077(2*n)`
-/

namespace A260259.P10617202769852345365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (2 * n) - A057077 (2 * n)

end

end A260259.P10617202769852345365

namespace A260259

/-- `A074677(2*n)-A057077(2*n)` -/
def P10617202769852345365.Spec : Prop :=
  ∀ n, P10617202769852345365.a n = A260259 n

end A260259

/-!
# A260260: a(n) = n*(16*n^2 - 21*n + 7)/2.

The programs for A260260, the canonical program `A260260.P14420548649296281513` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260260 has offset 0).

The definition of A260260 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(16*n²-21*n+7)/2` (program `A260260.P2967200836460392303`, by `A260260.P2967200836460392303.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A260260.P2967200836460392303

`n*(16*n²-21*n+7)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260260.P2967200836460392303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((16 * n ^ 2 : ℤ) - (21 * n : ℤ) + 7) : ℚ) / 2

end

end A260260.P2967200836460392303

namespace A260260

/-- `n*(16*n²-21*n+7)/2` -/
def P2967200836460392303.Spec : Prop :=
  ∀ n, P2967200836460392303.a n = (A260260 n : ℚ)

theorem P2967200836460392303.correct : P2967200836460392303.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A260260, Nat.add_sub_cancel, A260260.P2967200836460392303.a, A260260.P14420548649296281513.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A260260, Nat.add_sub_cancel, A260260.P2967200836460392303.a, A260260.P14420548649296281513.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A260260

/-! ## A260260.P14420548649296281513

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=29, a(3)=132`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260260

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14420548649296281513.Spec : Prop :=
  ∀ n, P14420548649296281513.a n = A260260 n

theorem P14420548649296281513.correct : P14420548649296281513.Spec := by
  intro n
  simp only [A260260]

end A260260

/-! ## A260260.P8030491203236942297

`A016743(n)-A152744(n)`
-/

namespace A260260.P8030491203236942297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 n - A152744 n

end

end A260260.P8030491203236942297

namespace A260260

/-- `A016743(n)-A152744(n)` -/
def P8030491203236942297.Spec : Prop :=
  ∀ n, P8030491203236942297.a n = A260260 n

end A260260

/-! ## A260260.P10776838655229838828

`A144138(n)-A152759(n)`
-/

namespace A260260.P10776838655229838828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144138 n - A152759 n

end

end A260260.P10776838655229838828

namespace A260260

/-- `A144138(n)-A152759(n)` -/
def P10776838655229838828.Spec : Prop :=
  ∀ n, P10776838655229838828.a n = A260260 n

end A260260

/-! ## A260260.P13227514941984953327

`A173200(n+1)-A022278(n)`
-/

namespace A260260.P13227514941984953327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173200 (n + 1) - A022278 n

end

end A260260.P13227514941984953327

namespace A260260

/-- `A173200(n+1)-A022278(n)` -/
def P13227514941984953327.Spec : Prop :=
  ∀ n, P13227514941984953327.a n = A260260 n

end A260260

/-! ## A260260.P4647701038457840302

`2*A256646(n)-A255184(n)`
-/

namespace A260260.P4647701038457840302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256646 n - A255184 n

end

end A260260.P4647701038457840302

namespace A260260

/-- `2*A256646(n)-A255184(n)` -/
def P4647701038457840302.Spec : Prop :=
  ∀ n, P4647701038457840302.a n = A260260 n

end A260260

/-! ## A260260.P8771939972996796196

`A007531(2*n)+A000326(n)`
-/

namespace A260260.P8771939972996796196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (2 * n) + A000326 n

end

end A260260.P8771939972996796196

namespace A260260

/-- `A007531(2*n)+A000326(n)` -/
def P8771939972996796196.Spec : Prop :=
  ∀ n, P8771939972996796196.a n = A260260 n

end A260260

/-! ## A260260.P11950983817148230775

`A007531(A004277(n))+C(3*n, 2)/3`
-/

namespace A260260.P11950983817148230775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 (A004277 n).toNat : ℚ) + (Nat.choose (3 * n) 2 : ℚ) / 3

end

end A260260.P11950983817148230775

namespace A260260

/-- `A007531(A004277(n))+C(3*n, 2)/3` -/
def P11950983817148230775.Spec : Prop :=
  ∀ n, P11950983817148230775.a n = (A260260 n : ℚ)

end A260260

/-! ## A260260.P11699149249827035359

`A007531(A005843(n))+C(3*n, 2)/3`
-/

namespace A260260.P11699149249827035359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 (A005843 n).toNat : ℚ) + (Nat.choose (3 * n) 2 : ℚ) / 3

end

end A260260.P11699149249827035359

namespace A260260

/-- `A007531(A005843(n))+C(3*n, 2)/3` -/
def P11699149249827035359.Spec : Prop :=
  ∀ n, P11699149249827035359.a n = (A260260 n : ℚ)

end A260260

/-! ## A260260.P4081564904735946530

`A007531(A004277(n))+A005449(n)-n`
-/

namespace A260260.P4081564904735946530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A004277 n).toNat + (A005449 n - (n : ℤ))

end

end A260260.P4081564904735946530

namespace A260260

/-- `A007531(A004277(n))+A005449(n)-n` -/
def P4081564904735946530.Spec : Prop :=
  ∀ n, P4081564904735946530.a n = A260260 n

end A260260

/-! ## A260260.P7852466677445571009

`A005449(n)+A007531(A005843(n))-n`
-/

namespace A260260.P7852466677445571009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n + (A007531 (A005843 n).toNat - (n : ℤ))

end

end A260260.P7852466677445571009

namespace A260260

/-- `A005449(n)+A007531(A005843(n))-n` -/
def P7852466677445571009.Spec : Prop :=
  ∀ n, P7852466677445571009.a n = A260260 n

end A260260

/-! ## A260260.P17589010977696892634

`A007531(A004277(n))+A000567(2*n)/8`
-/

namespace A260260.P17589010977696892634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 (A004277 n).toNat : ℚ) + (A000567 (2 * n) : ℚ) / 8

end

end A260260.P17589010977696892634

namespace A260260

/-- `A007531(A004277(n))+A000567(2*n)/8` -/
def P17589010977696892634.Spec : Prop :=
  ∀ n, P17589010977696892634.a n = (A260260 n : ℚ)

end A260260

/-! ## A260260.P6705591145531040758

`A007531(A005843(n))+A000567(2*n)/8`
-/

namespace A260260.P6705591145531040758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 (A005843 n).toNat : ℚ) + (A000567 (2 * n) : ℚ) / 8

end

end A260260.P6705591145531040758

namespace A260260

/-- `A007531(A005843(n))+A000567(2*n)/8` -/
def P6705591145531040758.Spec : Prop :=
  ∀ n, P6705591145531040758.a n = (A260260 n : ℚ)

end A260260

/-! ## A260260.P1367322841631490312

`A007531(A004277(n))+A104249(n)-(n+1)`
-/

namespace A260260.P1367322841631490312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A004277 n).toNat + (A104249 n - (n + 1 : ℤ))

end

end A260260.P1367322841631490312

namespace A260260

/-- `A007531(A004277(n))+A104249(n)-(n+1)` -/
def P1367322841631490312.Spec : Prop :=
  ∀ n, P1367322841631490312.a n = A260260 n

end A260260

/-! ## A260260.P3785933645648088816

`A007531(A005843(n))+A104249(n)-(n+1)`
-/

namespace A260260.P3785933645648088816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A005843 n).toNat + (A104249 n - (n + 1 : ℤ))

end

end A260260.P3785933645648088816

namespace A260260

/-- `A007531(A005843(n))+A104249(n)-(n+1)` -/
def P3785933645648088816.Spec : Prop :=
  ∀ n, P3785933645648088816.a n = A260260 n

end A260260

/-! ## A260260.P3717260198832134760

`A007531(A004277(n))+A000217(n)+n²-n`
-/

namespace A260260.P3717260198832134760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A004277 n).toNat + (A000217 n + (n ^ 2 : ℤ) - (n : ℤ))

end

end A260260.P3717260198832134760

namespace A260260

/-- `A007531(A004277(n))+A000217(n)+n²-n` -/
def P3717260198832134760.Spec : Prop :=
  ∀ n, P3717260198832134760.a n = A260260 n

end A260260

/-! ## A260260.P1522031066441225711

`A007531(A005843(n))+A000217(n)+n²-n`
-/

namespace A260260.P1522031066441225711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (A005843 n).toNat + (A000217 n + (n ^ 2 : ℤ) - (n : ℤ))

end

end A260260.P1522031066441225711

namespace A260260

/-- `A007531(A005843(n))+A000217(n)+n²-n` -/
def P1522031066441225711.Spec : Prop :=
  ∀ n, P1522031066441225711.a n = A260260 n

end A260260

/-! ## A260260.P6184620217332636471

`n*A001844(2*n+1)-A005475(3*n)`
-/

namespace A260260.P6184620217332636471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001844 (2 * n + 1) - A005475 (3 * n)

end

end A260260.P6184620217332636471

namespace A260260

/-- `n*A001844(2*n+1)-A005475(3*n)` -/
def P6184620217332636471.Spec : Prop :=
  ∀ n, P6184620217332636471.a n = A260260 n

end A260260

/-! ## A260260.P16012901331456609138

`A135503(2*n)+A050407(3*n)-A135503(n+1)`
-/

namespace A260260.P16012901331456609138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 (2 * n) + (A050407 (3 * n) - A135503 (n + 1))

end

end A260260.P16012901331456609138

namespace A260260

/-- `A135503(2*n)+A050407(3*n)-A135503(n+1)` -/
def P16012901331456609138.Spec : Prop :=
  ∀ n, P16012901331456609138.a n = A260260 n

end A260260

/-!
# A260263: a(n+1) = a(n) + largest digit not in a(n), starting with a(1) = 1.

The programs for A260263, there is no canonical definition to state claims against.
-/

/-! ## A260263.P13740497743265546656

`A116667(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A260263.P13740497743265546656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A116667 (a (n - 1)).toNat + a (n - 1)

end

end A260263.P13740497743265546656

/-! ## A260263.P3475778848096615240

`A260264(n)+A248908(A033873(n+1))`
-/

namespace A260263.P3475778848096615240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260264 n + A248908 (A033873 (n + 1)).toNat

end

end A260263.P3475778848096615240

/-! ## A260263.P18126885333663228045

`A260264(n)+A005361(A261016(n+1))`
-/

namespace A260263.P18126885333663228045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260264 n + A005361 (A261016 (n + 1)).toNat

end

end A260263.P18126885333663228045

/-! ## A260263.P14739824439183527982

`A017173(n)-A083917(A183508(n+1))`
-/

namespace A260263.P14739824439183527982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n - A083917 (A183508 (n + 1)).toNat

end

end A260263.P14739824439183527982

/-! ## A260263.P2966799265513306416

`A340222(n²)+a(n-1)` with `a(0)=1`
-/

namespace A260263.P2966799265513306416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A340222 (n ^ 2) + a (n - 1)

end

end A260263.P2966799265513306416

/-!
# A260264: a(n+1) = a(n) + largest digit not in a(n), starting with a(0) = 0.

The programs for A260264, there is no canonical definition to state claims against.
-/

/-! ## A260264.P16848852428707471366

`A116667(a(n-1))+a(n-1)` with `a(0)=0`
-/

namespace A260264.P16848852428707471366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A116667 (a (n - 1)).toNat + a (n - 1)

end

end A260264.P16848852428707471366

/-! ## A260264.P10219592460818997555

`A260263(n+1)-A248908(A033873(n+1))`
-/

namespace A260264.P10219592460818997555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260263 (n + 1) - A248908 (A033873 (n + 1)).toNat

end

end A260264.P10219592460818997555

/-! ## A260264.P15756033175971446555

`9*n-A124010(A196545(n+1))`
-/

namespace A260264.P15756033175971446555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - A124010 (A196545 (n + 1)).toNat

end

end A260264.P15756033175971446555

/-!
# A260266: Primes having only {0, 1, 4} as digits.

The programs for A260266, there is no canonical definition to state claims against.
-/

/-! ## A260266.P16497227456288369599

`∩[A386027(n+1), A386030(n+1)]`
-/

namespace A260266.P16497227456288369599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P16497227456288369599

/-! ## A260266.P2768027473257793171

`∩[A386027(n+1), A386028(n+1)]`
-/

namespace A260266.P2768027473257793171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P2768027473257793171

/-! ## A260266.P2452569219518469629

`∩[A386028(n+1), A386030(n+1)]`
-/

namespace A260266.P2452569219518469629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P2452569219518469629

/-! ## A260266.P14864578403218966735

`∩[A386017(n+1), A386027(n+1)]`
-/

namespace A260266.P14864578403218966735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P14864578403218966735

/-! ## A260266.P18083514523778492332

`∩[A386017(n+1), A386028(n+1)]`
-/

namespace A260266.P18083514523778492332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P18083514523778492332

/-! ## A260266.P7405793720628556786

`∩[A386017(n+1), A386030(n+1)]`
-/

namespace A260266.P7405793720628556786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P7405793720628556786

/-! ## A260266.P15676789384332956980

`∩[A061246(n+1), A386017(n+1)]`
-/

namespace A260266.P15676789384332956980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P15676789384332956980

/-! ## A260266.P14124629082236804573

`∩[A061246(n+1), A386027(n+1)]`
-/

namespace A260266.P14124629082236804573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P14124629082236804573

/-! ## A260266.P13950901907486779939

`∩[A061246(n+1), A386028(n+1)]`
-/

namespace A260266.P13950901907486779939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P13950901907486779939

/-! ## A260266.P7265570165404805003

`∩[A061246(n+1), A386030(n+1)]`
-/

namespace A260266.P7265570165404805003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P7265570165404805003

/-! ## A260266.P197727524924709480

`∩[A061246(n+1), A386029(n+1)]`
-/

namespace A260266.P197727524924709480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P197727524924709480

/-! ## A260266.P4097396329510183778

`∩[A386017(n+1), A386029(n+1)]`
-/

namespace A260266.P4097396329510183778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P4097396329510183778

/-! ## A260266.P12741183872894810887

`∩[A386027(n+1), A386029(n+1)]`
-/

namespace A260266.P12741183872894810887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P12741183872894810887

/-! ## A260266.P2119347052046681846

`∩[A386028(n+1), A386029(n+1)]`
-/

namespace A260266.P2119347052046681846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P2119347052046681846

/-! ## A260266.P982805615951515722

`∩[A386029(n+1), A386030(n+1)]`
-/

namespace A260266.P982805615951515722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P982805615951515722

/-! ## A260266.P17609245282291466346

`∩[A061246(n+1), A386023(n+1)]`
-/

namespace A260266.P17609245282291466346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P17609245282291466346

/-! ## A260266.P14039165978759437515

`∩[A386017(n+1), A386023(n+1)]`
-/

namespace A260266.P14039165978759437515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P14039165978759437515

/-! ## A260266.P12673647455037828311

`∩[A386023(n+1), A386027(n+1)]`
-/

namespace A260266.P12673647455037828311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P12673647455037828311

/-! ## A260266.P5583564977440218870

`∩[A386023(n+1), A386028(n+1)]`
-/

namespace A260266.P5583564977440218870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P5583564977440218870

/-! ## A260266.P1008051670833134097

`∩[A386023(n+1), A386029(n+1)]`
-/

namespace A260266.P1008051670833134097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260266.P1008051670833134097

/-!
# A260267: Primes having only {1, 2, 4} as digits.

The programs for A260267, the canonical program `A260267.P1888912496524943488` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260267 has offset 1).

The definition of A260267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 775 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260267.P7683666232517228480

`∩[A383371(n+1), A386017(n+1)]`
-/

namespace A260267.P7683666232517228480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P7683666232517228480

namespace A260267

/-- `∩[A383371(n+1), A386017(n+1)]` -/
def P7683666232517228480.Spec : Prop :=
  ∀ n, (P7683666232517228480.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P16447321992545499541

`∩[A383371(n+1), A386091(n+1)]`
-/

namespace A260267.P16447321992545499541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P16447321992545499541

namespace A260267

/-- `∩[A383371(n+1), A386091(n+1)]` -/
def P16447321992545499541.Spec : Prop :=
  ∀ n, (P16447321992545499541.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P7676958640220083460

`∩[A383371(n+1), A386092(n+1)]`
-/

namespace A260267.P7676958640220083460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P7676958640220083460

namespace A260267

/-- `∩[A383371(n+1), A386092(n+1)]` -/
def P7676958640220083460.Spec : Prop :=
  ∀ n, (P7676958640220083460.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P6556086925440587414

`∩[A386017(n+1), A386091(n+1)]`
-/

namespace A260267.P6556086925440587414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P6556086925440587414

namespace A260267

/-- `∩[A386017(n+1), A386091(n+1)]` -/
def P6556086925440587414.Spec : Prop :=
  ∀ n, (P6556086925440587414.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P11736018843442792460

`∩[A386017(n+1), A386092(n+1)]`
-/

namespace A260267.P11736018843442792460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P11736018843442792460

namespace A260267

/-- `∩[A386017(n+1), A386092(n+1)]` -/
def P11736018843442792460.Spec : Prop :=
  ∀ n, (P11736018843442792460.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P3936324861108738841

`∩[A386091(n+1), A386092(n+1)]`
-/

namespace A260267.P3936324861108738841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P3936324861108738841

namespace A260267

/-- `∩[A386091(n+1), A386092(n+1)]` -/
def P3936324861108738841.Spec : Prop :=
  ∀ n, (P3936324861108738841.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P1888912496524943488

`∩[A383371(n+1), A386093(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A260267

/-- `∩[A383371(n+1), A386093(n+1)]` -/
def P1888912496524943488.Spec : Prop :=
  ∀ n, (P1888912496524943488.a n : ℤ) = A260267 (n + 1)

theorem P1888912496524943488.correct : P1888912496524943488.Spec := by
  intro n
  simp only [A260267, Nat.add_sub_cancel]

end A260267

/-! ## A260267.P2361354071614867236

`∩[A383371(n+1), A386094(n+1)]`
-/

namespace A260267.P2361354071614867236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P2361354071614867236

namespace A260267

/-- `∩[A383371(n+1), A386094(n+1)]` -/
def P2361354071614867236.Spec : Prop :=
  ∀ n, (P2361354071614867236.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P2625093253238007444

`∩[A386017(n+1), A386093(n+1)]`
-/

namespace A260267.P2625093253238007444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P2625093253238007444

namespace A260267

/-- `∩[A386017(n+1), A386093(n+1)]` -/
def P2625093253238007444.Spec : Prop :=
  ∀ n, (P2625093253238007444.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P14301312352225289836

`∩[A386017(n+1), A386094(n+1)]`
-/

namespace A260267.P14301312352225289836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P14301312352225289836

namespace A260267

/-- `∩[A386017(n+1), A386094(n+1)]` -/
def P14301312352225289836.Spec : Prop :=
  ∀ n, (P14301312352225289836.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P13775812651413669667

`∩[A386091(n+1), A386093(n+1)]`
-/

namespace A260267.P13775812651413669667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P13775812651413669667

namespace A260267

/-- `∩[A386091(n+1), A386093(n+1)]` -/
def P13775812651413669667.Spec : Prop :=
  ∀ n, (P13775812651413669667.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P1452174327942622506

`∩[A386091(n+1), A386094(n+1)]`
-/

namespace A260267.P1452174327942622506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P1452174327942622506

namespace A260267

/-- `∩[A386091(n+1), A386094(n+1)]` -/
def P1452174327942622506.Spec : Prop :=
  ∀ n, (P1452174327942622506.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P12873748668772243639

`∩[A386092(n+1), A386093(n+1)]`
-/

namespace A260267.P12873748668772243639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P12873748668772243639

namespace A260267

/-- `∩[A386092(n+1), A386093(n+1)]` -/
def P12873748668772243639.Spec : Prop :=
  ∀ n, (P12873748668772243639.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P15632695827076550181

`∩[A386092(n+1), A386094(n+1)]`
-/

namespace A260267.P15632695827076550181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P15632695827076550181

namespace A260267

/-- `∩[A386092(n+1), A386094(n+1)]` -/
def P15632695827076550181.Spec : Prop :=
  ∀ n, (P15632695827076550181.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P2413138876527225073

`∩[A386093(n+1), A386094(n+1)]`
-/

namespace A260267.P2413138876527225073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P2413138876527225073

namespace A260267

/-- `∩[A386093(n+1), A386094(n+1)]` -/
def P2413138876527225073.Spec : Prop :=
  ∀ n, (P2413138876527225073.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P4607751797899980714

`∩[A383371(n+1), A386085(n+1)]`
-/

namespace A260267.P4607751797899980714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P4607751797899980714

namespace A260267

/-- `∩[A383371(n+1), A386085(n+1)]` -/
def P4607751797899980714.Spec : Prop :=
  ∀ n, (P4607751797899980714.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P6231937464223500677

`∩[A386017(n+1), A386085(n+1)]`
-/

namespace A260267.P6231937464223500677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P6231937464223500677

namespace A260267

/-- `∩[A386017(n+1), A386085(n+1)]` -/
def P6231937464223500677.Spec : Prop :=
  ∀ n, (P6231937464223500677.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P11572451767990495224

`∩[A386085(n+1), A386091(n+1)]`
-/

namespace A260267.P11572451767990495224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P11572451767990495224

namespace A260267

/-- `∩[A386085(n+1), A386091(n+1)]` -/
def P11572451767990495224.Spec : Prop :=
  ∀ n, (P11572451767990495224.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P13404721789563045267

`∩[A386085(n+1), A386092(n+1)]`
-/

namespace A260267.P13404721789563045267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P13404721789563045267

namespace A260267

/-- `∩[A386085(n+1), A386092(n+1)]` -/
def P13404721789563045267.Spec : Prop :=
  ∀ n, (P13404721789563045267.a n : ℤ) = A260267 (n + 1)

end A260267

/-! ## A260267.P7332083891263064202

`∩[A386085(n+1), A386093(n+1)]`
-/

namespace A260267.P7332083891263064202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260267.P7332083891263064202

namespace A260267

/-- `∩[A386085(n+1), A386093(n+1)]` -/
def P7332083891263064202.Spec : Prop :=
  ∀ n, (P7332083891263064202.a n : ℤ) = A260267 (n + 1)

end A260267

/-!
# A260268: Primes having only {1, 4, 5} as digits.

The programs for A260268, the canonical program `A260268.P1809234303632853884` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260268 has offset 1).

The definition of A260268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260268.P13566617522699548652

`∩[A386027(n+1), A386119(n+1)]`
-/

namespace A260268.P13566617522699548652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P13566617522699548652

namespace A260268

/-- `∩[A386027(n+1), A386119(n+1)]` -/
def P13566617522699548652.Spec : Prop :=
  ∀ n, (P13566617522699548652.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P755957638216396641

`∩[A386027(n+1), A386121(n+1)]`
-/

namespace A260268.P755957638216396641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P755957638216396641

namespace A260268

/-- `∩[A386027(n+1), A386121(n+1)]` -/
def P755957638216396641.Spec : Prop :=
  ∀ n, (P755957638216396641.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P10485385887149986856

`∩[A386119(n+1), A386121(n+1)]`
-/

namespace A260268.P10485385887149986856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P10485385887149986856

namespace A260268

/-- `∩[A386119(n+1), A386121(n+1)]` -/
def P10485385887149986856.Spec : Prop :=
  ∀ n, (P10485385887149986856.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P6134268036954207772

`∩[A386027(n+1), A386091(n+1)]`
-/

namespace A260268.P6134268036954207772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P6134268036954207772

namespace A260268

/-- `∩[A386027(n+1), A386091(n+1)]` -/
def P6134268036954207772.Spec : Prop :=
  ∀ n, (P6134268036954207772.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P13552441737476295264

`∩[A386091(n+1), A386119(n+1)]`
-/

namespace A260268.P13552441737476295264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P13552441737476295264

namespace A260268

/-- `∩[A386091(n+1), A386119(n+1)]` -/
def P13552441737476295264.Spec : Prop :=
  ∀ n, (P13552441737476295264.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P3910723461933636762

`∩[A386091(n+1), A386121(n+1)]`
-/

namespace A260268.P3910723461933636762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P3910723461933636762

namespace A260268

/-- `∩[A386091(n+1), A386121(n+1)]` -/
def P3910723461933636762.Spec : Prop :=
  ∀ n, (P3910723461933636762.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P10230041411211683468

`∩[A386027(n+1), A386120(n+1)]`
-/

namespace A260268.P10230041411211683468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P10230041411211683468

namespace A260268

/-- `∩[A386027(n+1), A386120(n+1)]` -/
def P10230041411211683468.Spec : Prop :=
  ∀ n, (P10230041411211683468.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P15986922606022945538

`∩[A386027(n+1), A386122(n+1)]`
-/

namespace A260268.P15986922606022945538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P15986922606022945538

namespace A260268

/-- `∩[A386027(n+1), A386122(n+1)]` -/
def P15986922606022945538.Spec : Prop :=
  ∀ n, (P15986922606022945538.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P14621781809360088090

`∩[A386091(n+1), A386120(n+1)]`
-/

namespace A260268.P14621781809360088090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P14621781809360088090

namespace A260268

/-- `∩[A386091(n+1), A386120(n+1)]` -/
def P14621781809360088090.Spec : Prop :=
  ∀ n, (P14621781809360088090.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P1116364994517895570

`∩[A386091(n+1), A386122(n+1)]`
-/

namespace A260268.P1116364994517895570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P1116364994517895570

namespace A260268

/-- `∩[A386091(n+1), A386122(n+1)]` -/
def P1116364994517895570.Spec : Prop :=
  ∀ n, (P1116364994517895570.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P15578096688227868066

`∩[A386119(n+1), A386120(n+1)]`
-/

namespace A260268.P15578096688227868066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P15578096688227868066

namespace A260268

/-- `∩[A386119(n+1), A386120(n+1)]` -/
def P15578096688227868066.Spec : Prop :=
  ∀ n, (P15578096688227868066.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P5031832229787330459

`∩[A386119(n+1), A386122(n+1)]`
-/

namespace A260268.P5031832229787330459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P5031832229787330459

namespace A260268

/-- `∩[A386119(n+1), A386122(n+1)]` -/
def P5031832229787330459.Spec : Prop :=
  ∀ n, (P5031832229787330459.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P404178635334173357

`∩[A386120(n+1), A386121(n+1)]`
-/

namespace A260268.P404178635334173357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P404178635334173357

namespace A260268

/-- `∩[A386120(n+1), A386121(n+1)]` -/
def P404178635334173357.Spec : Prop :=
  ∀ n, (P404178635334173357.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P364361427323025582

`∩[A386120(n+1), A386122(n+1)]`
-/

namespace A260268.P364361427323025582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P364361427323025582

namespace A260268

/-- `∩[A386120(n+1), A386122(n+1)]` -/
def P364361427323025582.Spec : Prop :=
  ∀ n, (P364361427323025582.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P9520589111367871413

`∩[A386121(n+1), A386122(n+1)]`
-/

namespace A260268.P9520589111367871413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P9520589111367871413

namespace A260268

/-- `∩[A386121(n+1), A386122(n+1)]` -/
def P9520589111367871413.Spec : Prop :=
  ∀ n, (P9520589111367871413.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P5967680942585305920

`∩[A386027(n+1), A386105(n+1)]`
-/

namespace A260268.P5967680942585305920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P5967680942585305920

namespace A260268

/-- `∩[A386027(n+1), A386105(n+1)]` -/
def P5967680942585305920.Spec : Prop :=
  ∀ n, (P5967680942585305920.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P13274200747438853136

`∩[A386091(n+1), A386105(n+1)]`
-/

namespace A260268.P13274200747438853136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P13274200747438853136

namespace A260268

/-- `∩[A386091(n+1), A386105(n+1)]` -/
def P13274200747438853136.Spec : Prop :=
  ∀ n, (P13274200747438853136.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P14756677971742551070

`∩[A386105(n+1), A386119(n+1)]`
-/

namespace A260268.P14756677971742551070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P14756677971742551070

namespace A260268

/-- `∩[A386105(n+1), A386119(n+1)]` -/
def P14756677971742551070.Spec : Prop :=
  ∀ n, (P14756677971742551070.a n : ℤ) = A260268 (n + 1)

end A260268

/-! ## A260268.P1809234303632853884

`∩[A386105(n+1), A386120(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A260268

/-- `∩[A386105(n+1), A386120(n+1)]` -/
def P1809234303632853884.Spec : Prop :=
  ∀ n, (P1809234303632853884.a n : ℤ) = A260268 (n + 1)

theorem P1809234303632853884.correct : P1809234303632853884.Spec := by
  intro n
  simp only [A260268, Nat.add_sub_cancel]

end A260268

/-! ## A260268.P11782210707884102242

`∩[A386105(n+1), A386121(n+1)]`
-/

namespace A260268.P11782210707884102242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260268.P11782210707884102242

namespace A260268

/-- `∩[A386105(n+1), A386121(n+1)]` -/
def P11782210707884102242.Spec : Prop :=
  ∀ n, (P11782210707884102242.a n : ℤ) = A260268 (n + 1)

end A260268

/-!
# A260269: Primes having only {1, 4, 6} as digits.

The programs for A260269, there is no canonical definition to state claims against.
-/

/-! ## A260269.P8473536611304325296

`∩[A386028(n+1), A386124(n+1)]`
-/

namespace A260269.P8473536611304325296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P8473536611304325296

/-! ## A260269.P577870836262480550

`∩[A386028(n+1), A386119(n+1)]`
-/

namespace A260269.P577870836262480550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P577870836262480550

/-! ## A260269.P15293210258664437821

`∩[A386119(n+1), A386124(n+1)]`
-/

namespace A260269.P15293210258664437821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P15293210258664437821

/-! ## A260269.P13669681909572149203

`∩[A386028(n+1), A386092(n+1)]`
-/

namespace A260269.P13669681909572149203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P13669681909572149203

/-! ## A260269.P2459172983863355752

`∩[A386092(n+1), A386119(n+1)]`
-/

namespace A260269.P2459172983863355752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P2459172983863355752

/-! ## A260269.P10153710273141012792

`∩[A386092(n+1), A386124(n+1)]`
-/

namespace A260269.P10153710273141012792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P10153710273141012792

/-! ## A260269.P2050590426508351964

`∩[A386028(n+1), A386123(n+1)]`
-/

namespace A260269.P2050590426508351964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P2050590426508351964

/-! ## A260269.P1145442611732749063

`∩[A386028(n+1), A386125(n+1)]`
-/

namespace A260269.P1145442611732749063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P1145442611732749063

/-! ## A260269.P15228722396959711218

`∩[A386092(n+1), A386123(n+1)]`
-/

namespace A260269.P15228722396959711218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P15228722396959711218

/-! ## A260269.P18306672729013507152

`∩[A386092(n+1), A386125(n+1)]`
-/

namespace A260269.P18306672729013507152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P18306672729013507152

/-! ## A260269.P92882242434350315

`∩[A386119(n+1), A386123(n+1)]`
-/

namespace A260269.P92882242434350315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P92882242434350315

/-! ## A260269.P7244203793873585744

`∩[A386119(n+1), A386125(n+1)]`
-/

namespace A260269.P7244203793873585744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P7244203793873585744

/-! ## A260269.P16502681095783204556

`∩[A386123(n+1), A386124(n+1)]`
-/

namespace A260269.P16502681095783204556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P16502681095783204556

/-! ## A260269.P7201479438033311601

`∩[A386123(n+1), A386125(n+1)]`
-/

namespace A260269.P7201479438033311601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P7201479438033311601

/-! ## A260269.P12097853688334297614

`∩[A386124(n+1), A386125(n+1)]`
-/

namespace A260269.P12097853688334297614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P12097853688334297614

/-! ## A260269.P6509245785667781541

`∩[A386028(n+1), A386106(n+1)]`
-/

namespace A260269.P6509245785667781541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P6509245785667781541

/-! ## A260269.P9838560418599455034

`∩[A386092(n+1), A386106(n+1)]`
-/

namespace A260269.P9838560418599455034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P9838560418599455034

/-! ## A260269.P672959152993460334

`∩[A386106(n+1), A386119(n+1)]`
-/

namespace A260269.P672959152993460334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P672959152993460334

/-! ## A260269.P16732133825825019484

`∩[A386106(n+1), A386123(n+1)]`
-/

namespace A260269.P16732133825825019484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P16732133825825019484

/-! ## A260269.P2327960388229493505

`∩[A386106(n+1), A386124(n+1)]`
-/

namespace A260269.P2327960388229493505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260269.P2327960388229493505

/-!
# A260270: Primes having only {1, 4, 8} as digits.

The programs for A260270, there is no canonical definition to state claims against.
-/

/-! ## A260270.P3959458681966178563

`∩[A386030(n+1), A386121(n+1)]`
-/

namespace A260270.P3959458681966178563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P3959458681966178563

/-! ## A260270.P15148569366850066103

`∩[A386030(n+1), A386124(n+1)]`
-/

namespace A260270.P15148569366850066103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P15148569366850066103

/-! ## A260270.P17030469025012736971

`∩[A386121(n+1), A386124(n+1)]`
-/

namespace A260270.P17030469025012736971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P17030469025012736971

/-! ## A260270.P2593203650692366323

`∩[A383371(n+1), A386030(n+1)]`
-/

namespace A260270.P2593203650692366323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P2593203650692366323

/-! ## A260270.P11404886368350831063

`∩[A383371(n+1), A386121(n+1)]`
-/

namespace A260270.P11404886368350831063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P11404886368350831063

/-! ## A260270.P8971228892295082731

`∩[A383371(n+1), A386124(n+1)]`
-/

namespace A260270.P8971228892295082731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P8971228892295082731

/-! ## A260270.P11339732532474941819

`∩[A383371(n+1), A386128(n+1)]`
-/

namespace A260270.P11339732532474941819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P11339732532474941819

/-! ## A260270.P16334252809971681833

`∩[A386030(n+1), A386128(n+1)]`
-/

namespace A260270.P16334252809971681833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P16334252809971681833

/-! ## A260270.P11655931124151084111

`∩[A386121(n+1), A386128(n+1)]`
-/

namespace A260270.P11655931124151084111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P11655931124151084111

/-! ## A260270.P9489189841827656925

`∩[A386124(n+1), A386128(n+1)]`
-/

namespace A260270.P9489189841827656925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P9489189841827656925

/-! ## A260270.P850617438679359611

`∩[A383371(n+1), A386126(n+1)]`
-/

namespace A260270.P850617438679359611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P850617438679359611

/-! ## A260270.P11598072040126249795

`∩[A386030(n+1), A386126(n+1)]`
-/

namespace A260270.P11598072040126249795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P11598072040126249795

/-! ## A260270.P12811539075632198946

`∩[A386121(n+1), A386126(n+1)]`
-/

namespace A260270.P12811539075632198946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P12811539075632198946

/-! ## A260270.P8685736391766061137

`∩[A386124(n+1), A386126(n+1)]`
-/

namespace A260270.P8685736391766061137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P8685736391766061137

/-! ## A260270.P1551191654302530509

`∩[A386126(n+1), A386128(n+1)]`
-/

namespace A260270.P1551191654302530509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P1551191654302530509

/-! ## A260270.P14382390332161505457

`∩[A383371(n+1), A386108(n+1)]`
-/

namespace A260270.P14382390332161505457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P14382390332161505457

/-! ## A260270.P1252136561004900232

`∩[A386030(n+1), A386108(n+1)]`
-/

namespace A260270.P1252136561004900232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P1252136561004900232

/-! ## A260270.P9667455842468679789

`∩[A386108(n+1), A386121(n+1)]`
-/

namespace A260270.P9667455842468679789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P9667455842468679789

/-! ## A260270.P16683804318244036407

`∩[A386108(n+1), A386124(n+1)]`
-/

namespace A260270.P16683804318244036407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P16683804318244036407

/-! ## A260270.P5947541064791683017

`∩[A386108(n+1), A386126(n+1)]`
-/

namespace A260270.P5947541064791683017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260270.P5947541064791683017

/-!
# A260271: Primes having only {1, 4, 9} as digits.

The programs for A260271, there is no canonical definition to state claims against.
-/

/-! ## A260271.P4625241051764064033

`∩[A061246(n+1), A386094(n+1)]`
-/

namespace A260271.P4625241051764064033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P4625241051764064033

/-! ## A260271.P11657881196626314771

`∩[A061246(n+1), A386122(n+1)]`
-/

namespace A260271.P11657881196626314771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P11657881196626314771

/-! ## A260271.P4717712701904250862

`∩[A061246(n+1), A386125(n+1)]`
-/

namespace A260271.P4717712701904250862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P4717712701904250862

/-! ## A260271.P1847835568848535635

`∩[A061246(n+1), A386128(n+1)]`
-/

namespace A260271.P1847835568848535635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P1847835568848535635

/-! ## A260271.P10785202525174179840

`∩[A061246(n+1), A386127(n+1)]`
-/

namespace A260271.P10785202525174179840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P10785202525174179840

/-! ## A260271.P16657282970376773973

`∩[A061246(n+1), A386109(n+1)]`
-/

namespace A260271.P16657282970376773973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P16657282970376773973

/-! ## A260271.P14615443716529045932

`∩[A036435(n+1), A061246(n+1)]`
-/

namespace A260271.P14615443716529045932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P14615443716529045932

/-! ## A260271.P10759204531489101617

`∩[A036435(n+1), A386094(n+1)]`
-/

namespace A260271.P10759204531489101617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P10759204531489101617

/-! ## A260271.P1911816970578671616

`∩[A036435(n+1), A386109(n+1)]`
-/

namespace A260271.P1911816970578671616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P1911816970578671616

/-! ## A260271.P10238861846505149837

`∩[A036435(n+1), A386122(n+1)]`
-/

namespace A260271.P10238861846505149837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P10238861846505149837

/-! ## A260271.P4125216944618064086

`∩[A036435(n+1), A386125(n+1)]`
-/

namespace A260271.P4125216944618064086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P4125216944618064086

/-! ## A260271.P16057417823465212359

`∩[A036435(n+1), A386127(n+1)]`
-/

namespace A260271.P16057417823465212359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P16057417823465212359

/-! ## A260271.P5094460190670110144

`∩[A036435(n+1), A386128(n+1)]`
-/

namespace A260271.P5094460190670110144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P5094460190670110144

/-! ## A260271.P13183760258430436594

`∩[A036435(n+1), A152313(n+1)]`
-/

namespace A260271.P13183760258430436594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P13183760258430436594

/-! ## A260271.P17462507800095414790

`∩[A061246(n+1), A152313(n+1)]`
-/

namespace A260271.P17462507800095414790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P17462507800095414790

/-! ## A260271.P2885804022623194752

`∩[A152313(n+1), A386094(n+1)]`
-/

namespace A260271.P2885804022623194752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P2885804022623194752

/-! ## A260271.P9873109541602883994

`∩[A386122(n+1), A152313(n+1)]`
-/

namespace A260271.P9873109541602883994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P9873109541602883994

/-! ## A260271.P8979613179744513755

`∩[A036435(n+1), A068493(n+1)]`
-/

namespace A260271.P8979613179744513755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P8979613179744513755

/-! ## A260271.P1723963519334671631

`∩[A036435(n+1), A066591(n+1)]`
-/

namespace A260271.P1723963519334671631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P1723963519334671631

/-! ## A260271.P10657037885639470307

`∩[A034844(n+1), A036435(n+1)]`
-/

namespace A260271.P10657037885639470307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260271.P10657037885639470307

/-!
# A260273: Successively add the smallest nonzero binary number that is not a substring.

The programs for A260273, there is no canonical definition to state claims against.
-/

/-! ## A260273.P14680279678941532085

`A261018(n)+a(n-1)` with `a(0)=1`
-/

namespace A260273.P14680279678941532085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261018 n + a (n - 1)

end

end A260273.P14680279678941532085

/-! ## A260273.P7392794154715914826

`∑[A261018(A028310(n))]-1`
-/

namespace A260273.P7392794154715914826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261018 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A260273.P7392794154715914826

/-! ## A260273.P7409203181921161637

`∑[A261018(n+1)]+1-A261018(n+1)`
-/

namespace A260273.P7409203181921161637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261018 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A261018 (n + 1))

end

end A260273.P7409203181921161637

/-! ## A260273.P6121794936794481325

`∑[A261018(A065033(2*n))]-1`
-/

namespace A260273.P6121794936794481325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261018 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A260273.P6121794936794481325

/-! ## A260273.P759396550763685853

`A261461(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A260273.P759396550763685853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261461 (a (n - 1)).toNat + a (n - 1)

end

end A260273.P759396550763685853

/-! ## A260273.P11321476091471020712

`a(n-1)+A144016(a(n-1))+1` with `a(0)=1`
-/

namespace A260273.P11321476091471020712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A144016 (a (n - 1)).toNat + 1)

end

end A260273.P11321476091471020712

/-! ## A260273.P4115576658636454676

`∑[A261018(A233583(n+1))]-1`
-/

namespace A260273.P4115576658636454676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261018 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A260273.P4115576658636454676

/-!
# A260275: Fixed points of the function A260529(n) = concatenation of the positions of digits 9, 8,..., 0 in the decimal representation of n, using 1 for the rightmost digit etc., skipping digits which don't occur.

The programs for A260275, there is no canonical definition to state claims against.
-/

/-! ## A260275.P1421029715352518195

`∩[A030299(n+1), A260386(n+1)]`
-/

namespace A260275.P1421029715352518195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260275.P1421029715352518195

/-! ## A260275.P10257148988854154746

`∩[A240763(n+1), A260386(n+1)]`
-/

namespace A260275.P10257148988854154746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260275.P10257148988854154746

/-! ## A260275.P9531249523430455058

`∩[A038528(n+1), A260386(n+1)]`
-/

namespace A260275.P9531249523430455058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260275.P9531249523430455058

/-! ## A260275.P1894559775226769965

`∩[A227073(n+1), A260386(n+1)]`
-/

namespace A260275.P1894559775226769965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260275.P1894559775226769965

/-! ## A260275.P15371732469743937182

`∩[A038527(n+1), A260386(n+1)]`
-/

namespace A260275.P15371732469743937182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260275.P15371732469743937182

/-!
# A260276: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00001011.

The programs for A260276, there is no canonical definition to state claims against.
-/

/-! ## A260276.P505505033204898664

`A260284((n+1)²+n²)`
-/

namespace A260276.P505505033204898664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 ((n + 1) ^ 2 + n ^ 2)

end

end A260276.P505505033204898664

/-! ## A260276.P6760749054783298148

`record[A003982(n)*A260284(n+1)]`
-/

namespace A260276.P6760749054783298148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A260284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260276.P6760749054783298148

/-! ## A260276.P9096729853621339033

`record[A214505(n)*A260284(n+1)]`
-/

namespace A260276.P9096729853621339033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A260284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260276.P9096729853621339033

/-! ## A260276.P16632023360809376491

`record[gcd(A003987(n), A260284(n+1))]`
-/

namespace A260276.P16632023360809376491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A260284 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260276.P16632023360809376491

/-! ## A260276.P14071824144564878547

`A007318(C(2, n))*A260284(A001844(n))`
-/

namespace A260276.P14071824144564878547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A260284 (A001844 n).toNat

end

end A260276.P14071824144564878547

/-!
# A260277: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00001011.

The programs for A260277, there is no canonical definition to state claims against.
-/

/-! ## A260277.P10963826353531468590

`A260284(∑[n]+1)`
-/

namespace A260277.P10963826353531468590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260277.P10963826353531468590

/-! ## A260277.P12277090173929879964

`record[A010054(n)*A260284(n+1)]`
-/

namespace A260277.P12277090173929879964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A260284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260277.P12277090173929879964

/-! ## A260277.P13398429594772378733

`record[A103451(n)*A260284(n+1)]`
-/

namespace A260277.P13398429594772378733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A260284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260277.P13398429594772378733

/-! ## A260277.P8966235227197355001

`record[A260284(n+1)/A079502(n)]`
-/

namespace A260277.P8966235227197355001
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260284 (n + 1) : ℚ) / (A079502 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260277.P8966235227197355001

/-! ## A260277.P4432255301566851819

`or(A000038(n), A260284(A000124(n)))`
-/

namespace A260277.P4432255301566851819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A260284 (A000124 n).toNat)

end

end A260277.P4432255301566851819

/-!
# A260278: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 00000001 or 00001011.

The programs for A260278, there is no canonical definition to state claims against.
-/

/-! ## A260278.P12390636452992419761

`A260284(∑[n+1]+2)`
-/

namespace A260278.P12390636452992419761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A260278.P12390636452992419761

/-! ## A260278.P17753531477136663899

`record[A010054(n)*A260284(n+2)]`
-/

namespace A260278.P17753531477136663899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A260284 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260278.P17753531477136663899

/-! ## A260278.P18057797302853936780

`or(A000038(n), A260284(A133263(n+1)))`
-/

namespace A260278.P18057797302853936780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A260284 (A133263 (n + 1)).toNat)

end

end A260278.P18057797302853936780

/-! ## A260278.P738292102491610136

`char[A089867(n)]*A260284(A133263(n+1))`
-/

namespace A260278.P738292102491610136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A260284 (A133263 (n + 1)).toNat

end

end A260278.P738292102491610136

/-! ## A260278.P8576910970124804717

`A260284(A133263(n+1))+A000035(2*n)`
-/

namespace A260278.P8576910970124804717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A133263 (n + 1)).toNat + A000035 (2 * n)

end

end A260278.P8576910970124804717

/-!
# A260279: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00001011.

The programs for A260279, there is no canonical definition to state claims against.
-/

/-! ## A260279.P14456864421338280016

`A260284(∑[n+2]+4)`
-/

namespace A260279.P14456864421338280016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A260279.P14456864421338280016

/-! ## A260279.P4701017564608960630

`lcm(A033999(n), A260284(A167614(n+1)))`
-/

namespace A260279.P4701017564608960630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A260284 (A167614 (n + 1)).toNat)

end

end A260279.P4701017564608960630

/-! ## A260279.P7008241259091270839

`A260284(A167614(n+1))%A236054(n+1)`
-/

namespace A260279.P7008241259091270839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260284 (A167614 (n + 1)).toNat) (A236054 (n + 1))

end

end A260279.P7008241259091270839

/-! ## A260279.P4054241724546330028

`or(A000038(n), A260284(A000217(n+2)+3))`
-/

namespace A260279.P4054241724546330028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A260284 (A000217 (n + 2) + 3).toNat)

end

end A260279.P4054241724546330028

/-! ## A260279.P2263608703757848386

`record[A260284(A198464(n+1))]`
-/

namespace A260279.P2263608703757848386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260279.P2263608703757848386

/-!
# A260280: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00001011.

The programs for A260280, there is no canonical definition to state claims against.
-/

/-! ## A260280.P1289329204640682203

`A260284(A374004(n+1))`
-/

namespace A260280.P1289329204640682203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A374004 (n + 1)).toNat

end

end A260280.P1289329204640682203

/-! ## A260280.P1653774802138666951

`A260284(A052905(n)+9)`
-/

namespace A260280.P1653774802138666951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A052905 n + 9).toNat

end

end A260280.P1653774802138666951

/-! ## A260280.P2370701951537103781

`A260284(A167614(n+2)+1)`
-/

namespace A260280.P2370701951537103781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A167614 (n + 2) + 1).toNat

end

end A260280.P2370701951537103781

/-! ## A260280.P3993098044630675916

`A260284(Δ[A264443(n)-n²])`
-/

namespace A260280.P3993098044630675916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (f1 (n + 1) - f1 n).toNat

end

end A260280.P3993098044630675916

/-! ## A260280.P7360718330919671930

`A260284(Δ[A023545(n+1)-n²])`
-/

namespace A260280.P7360718330919671930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (f1 (n + 1) - f1 n).toNat

end

end A260280.P7360718330919671930

/-!
# A260281: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00001011.

The programs for A260281, there is no canonical definition to state claims against.
-/

/-! ## A260281.P5794182555679794034

`A260284(A374005(n+1))`
-/

namespace A260281.P5794182555679794034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A374005 (n + 1)).toNat

end

end A260281.P5794182555679794034

/-! ## A260281.P13880091195058105466

`A260284(A167499(n+3))`
-/

namespace A260281.P13880091195058105466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A167499 (n + 3)).toNat

end

end A260281.P13880091195058105466

/-! ## A260281.P5825289463256896594

`A260284(Δ[A264443(n)])`
-/

namespace A260281.P5825289463256896594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (f1 (n + 1) - f1 n).toNat

end

end A260281.P5825289463256896594

/-! ## A260281.P633390583758289181

`A260284(A046691(n+3))`
-/

namespace A260281.P633390583758289181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A046691 (n + 3)).toNat

end

end A260281.P633390583758289181

/-! ## A260281.P4446903760691745226

`A260284(Δ[A023545(n+1)])`
-/

namespace A260281.P4446903760691745226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (f1 (n + 1) - f1 n).toNat

end

end A260281.P4446903760691745226

/-!
# A260282: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00001011.

The programs for A260282, there is no canonical definition to state claims against.
-/

/-! ## A260282.P8519099299239571105

`A260284(A374007(n+1))`
-/

namespace A260282.P8519099299239571105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A374007 (n + 1)).toNat

end

end A260282.P8519099299239571105

/-! ## A260282.P5126269507714686466

`A260284(A000096(n+4)+7)`
-/

namespace A260282.P5126269507714686466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A000096 (n + 4) + 7).toNat

end

end A260282.P5126269507714686466

/-! ## A260282.P10706665467013041025

`A260284(A000217(n+5)+6)`
-/

namespace A260282.P10706665467013041025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A000217 (n + 5) + 6).toNat

end

end A260282.P10706665467013041025

/-! ## A260282.P5377254765880392038

`A260284(A161680(n+6)+6)`
-/

namespace A260282.P5377254765880392038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A161680 (n + 6) + 6).toNat

end

end A260282.P5377254765880392038

/-! ## A260282.P6793625660823862087

`A260284(A000124(n+6)-(n+1))`
-/

namespace A260282.P6793625660823862087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A260282.P6793625660823862087

/-!
# A260283: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 00000001 or 00001011.

The programs for A260283, there is no canonical definition to state claims against.
-/

/-! ## A260283.P17876114693268257626

`A260284(A374008(n+1))`
-/

namespace A260283.P17876114693268257626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A374008 (n + 1)).toNat

end

end A260283.P17876114693268257626

/-! ## A260283.P3068763077044598800

`A260284(A167499(n+5)+2)`
-/

namespace A260283.P3068763077044598800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A167499 (n + 5) + 2).toNat

end

end A260283.P3068763077044598800

/-! ## A260283.P2581532353115835642

`A260284(A000124(n+6)+6)`
-/

namespace A260283.P2581532353115835642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A000124 (n + 6) + 6).toNat

end

end A260283.P2581532353115835642

/-! ## A260283.P5166895962194552848

`A260284(A000217(n+6)+7)`
-/

namespace A260283.P5166895962194552848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A000217 (n + 6) + 7).toNat

end

end A260283.P5166895962194552848

/-! ## A260283.P2311616401422494084

`A260284(A000096(n+6)-(n-1))`
-/

namespace A260283.P2311616401422494084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260284 (A000096 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A260283.P2311616401422494084

/-!
# A260286: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001001.

The programs for A260286, there is no canonical definition to state claims against.
-/

/-! ## A260286.P7679167759153716490

`A260294(∑[4*n]+1)`
-/

namespace A260286.P7679167759153716490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260286.P7679167759153716490

/-! ## A260286.P14538199490771937556

`record[A260294(A152271(n²))]`
-/

namespace A260286.P14538199490771937556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260286.P14538199490771937556

/-! ## A260286.P563131474071221564

`A260294(A001844(n))+char[23]`
-/

namespace A260286.P563131474071221564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A260286.P563131474071221564

/-! ## A260286.P11538025303248343811

`record[A003982(n)*A260294(n+1)]`
-/

namespace A260286.P11538025303248343811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A260294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260286.P11538025303248343811

/-! ## A260286.P15319767094704759537

`record[gcd(A037012(n), A260294(n+1))]`
-/

namespace A260286.P15319767094704759537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A260294 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260286.P15319767094704759537

/-!
# A260287: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001001.

The programs for A260287, there is no canonical definition to state claims against.
-/

/-! ## A260287.P17220821440723729605

`A260294(∑[n]+1)`
-/

namespace A260287.P17220821440723729605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260287.P17220821440723729605

/-! ## A260287.P16075384753567373143

`lcm(2, A260294(A000124(n)))`
-/

namespace A260287.P16075384753567373143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A260294 (A000124 n).toNat)

end

end A260287.P16075384753567373143

/-! ## A260287.P15756980199445927548

`record[A260294(A056534(n+1))]`
-/

namespace A260287.P15756980199445927548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260287.P15756980199445927548

/-! ## A260287.P11169855865187659016

`record[A260294(A056536(n+1))]`
-/

namespace A260287.P11169855865187659016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260287.P11169855865187659016

/-! ## A260287.P8630726320970928157

`record[A260294(A114091(n+1))]`
-/

namespace A260287.P8630726320970928157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260287.P8630726320970928157

/-!
# A260288: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001001.

The programs for A260288, there is no canonical definition to state claims against.
-/

/-! ## A260288.P6013086342478211607

`A260294(∑[n+1]+2)`
-/

namespace A260288.P6013086342478211607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A260288.P6013086342478211607

/-! ## A260288.P17520531301056353636

`or(char[1], A260294(A133263(n+1)))`
-/

namespace A260288.P17520531301056353636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A260294 (A133263 (n + 1)).toNat)

end

end A260288.P17520531301056353636

/-! ## A260288.P14422790648915474505

`record[A260294(C(A278539(n+1), 2)+2)]`
-/

namespace A260288.P14422790648915474505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (Nat.choose (A278539 (n + 1)).toNat 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260288.P14422790648915474505

/-! ## A260288.P15401225371917835511

`record[A260294(A161680(ceil(n/2)+n%2)+2)]`
-/

namespace A260288.P15401225371917835511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A161680 (⌈(n : ℚ) / 2⌉ + ((n % 2 : ℕ) : ℤ)).toNat + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260288.P15401225371917835511

/-! ## A260288.P6816617166833963407

`record[A260294(A161680(ceil(n/2)+(-1)^n)+2)]`
-/

namespace A260288.P6816617166833963407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A161680 (⌈(n : ℚ) / 2⌉ + (-1) ^ n).toNat + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260288.P6816617166833963407

/-!
# A260289: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001001.

The programs for A260289, there is no canonical definition to state claims against.
-/

/-! ## A260289.P11073663602249322805

`A260294(∑[n+2]+4)`
-/

namespace A260289.P11073663602249322805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A260289.P11073663602249322805

/-! ## A260289.P10226436156532171578

`lcm(2, A260294(A167614(n+1)))`
-/

namespace A260289.P10226436156532171578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A260294 (A167614 (n + 1)).toNat)

end

end A260289.P10226436156532171578

/-! ## A260289.P882082196689806405

`record[A260294(A004526((2-n)²+n)+2)]`
-/

namespace A260289.P882082196689806405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A004526 ((2 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260289.P882082196689806405

/-! ## A260289.P13448639476320473033

`A260294(A167614(n+1))%A260290(n+1)`
-/

namespace A260289.P13448639476320473033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260294 (A167614 (n + 1)).toNat) (A260290 (n + 1))

end

end A260289.P13448639476320473033

/-! ## A260289.P4641020823459658475

`A260294(A167614(n+1))+A007814(2*n+3)`
-/

namespace A260289.P4641020823459658475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A167614 (n + 1)).toNat + A007814 (2 * n + 3)

end

end A260289.P4641020823459658475

/-!
# A260290: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001001.

The programs for A260290, there is no canonical definition to state claims against.
-/

/-! ## A260290.P3509215657284795182

`A260294(∑[n+3]+7)`
-/

namespace A260290.P3509215657284795182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A260290.P3509215657284795182

/-! ## A260290.P1318785018773579095

`A152271(2*n)*A260294(A141214(n+1))`
-/

namespace A260290.P1318785018773579095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (2 * n) * A260294 (A141214 (n + 1)).toNat

end

end A260290.P1318785018773579095

/-! ## A260290.P1367829623616196969

`A260294(A141214(n+1))%A260291(n+1)`
-/

namespace A260290.P1367829623616196969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260294 (A141214 (n + 1)).toNat) (A260291 (n + 1))

end

end A260290.P1367829623616196969

/-! ## A260290.P13479972980914885882

`A260294(A141214(n+1))+A003982(2*n+1)`
-/

namespace A260290.P13479972980914885882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A141214 (n + 1)).toNat + A003982 (2 * n + 1)

end

end A260290.P13479972980914885882

/-! ## A260290.P17079902398501717541

`record[A260294(A141214(val(n+1, 2)+1))]`
-/

namespace A260290.P17079902398501717541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A141214 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260290.P17079902398501717541

/-!
# A260291: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001001.

The programs for A260291, there is no canonical definition to state claims against.
-/

/-! ## A260291.P11837208483066499760

`A260294(∑[n+4]+11)`
-/

namespace A260291.P11837208483066499760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A260291.P11837208483066499760

/-! ## A260291.P15961594259653220686

`lcm(2, A260294(A052905(n+1)+10))`
-/

namespace A260291.P15961594259653220686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A260294 (A052905 (n + 1) + 10).toNat)

end

end A260291.P15961594259653220686

/-! ## A260291.P7774226578207541487

`A260294(A167499(n+3))+A122841(2*n+3)`
-/

namespace A260291.P7774226578207541487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A167499 (n + 3)).toNat + A122841 (2 * n + 3)

end

end A260291.P7774226578207541487

/-! ## A260291.P6776831515963649303

`A000034(2*(n+2))*A260294(A056000(n)+15)`
-/

namespace A260291.P6776831515963649303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * (n + 2)) * A260294 (A056000 n + 15).toNat

end

end A260291.P6776831515963649303

/-! ## A260291.P14577850006015032915

`A007318(C(n, 2))*A260294(A052905(n+1)+10)`
-/

namespace A260291.P14577850006015032915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A260294 (A052905 (n + 1) + 10).toNat

end

end A260291.P14577850006015032915

/-!
# A260292: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001001.

The programs for A260292, there is no canonical definition to state claims against.
-/

/-! ## A260292.P9619157106892400129

`A260294(C(n+7, 2)-n)`
-/

namespace A260292.P9619157106892400129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (Nat.choose (n + 7) 2 - n)

end

end A260292.P9619157106892400129

/-! ## A260292.P8294528656062192887

`A260294(A374007(n+1))`
-/

namespace A260292.P8294528656062192887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A374007 (n + 1)).toNat

end

end A260292.P8294528656062192887

/-! ## A260292.P17161520087739451491

`A260294(A167499(n+4)+1)`
-/

namespace A260292.P17161520087739451491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A167499 (n + 4) + 1).toNat

end

end A260292.P17161520087739451491

/-! ## A260292.P1611181503544591262

`A260294(A167614(n+4)+3)`
-/

namespace A260292.P1611181503544591262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A167614 (n + 4) + 3).toNat

end

end A260292.P1611181503544591262

/-! ## A260292.P15752855723000044409

`A260294(A145018(n+6)+2)`
-/

namespace A260292.P15752855723000044409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A145018 (n + 6) + 2).toNat

end

end A260292.P15752855723000044409

/-!
# A260293: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00000011 or 00001001.

The programs for A260293, there is no canonical definition to state claims against.
-/

/-! ## A260293.P10863159717282561247

`A260294(A374008(n+1))`
-/

namespace A260293.P10863159717282561247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A374008 (n + 1)).toNat

end

end A260293.P10863159717282561247

/-! ## A260293.P10648184747440544387

`A260294(A167487(n+5))`
-/

namespace A260293.P10648184747440544387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A167487 (n + 5)).toNat

end

end A260293.P10648184747440544387

/-! ## A260293.P603153611416287164

`A260294(A056119(n)+28)`
-/

namespace A260293.P603153611416287164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A056119 n + 28).toNat

end

end A260293.P603153611416287164

/-! ## A260293.P17615838998806477874

`A260294(A166136(n+5)+1)`
-/

namespace A260293.P17615838998806477874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A166136 (n + 5) + 1).toNat

end

end A260293.P17615838998806477874

/-! ## A260293.P12614560087086702232

`A260294(A167499(n+5)+2)`
-/

namespace A260293.P12614560087086702232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (A167499 (n + 5) + 2).toNat

end

end A260293.P12614560087086702232

/-!
# A260295: Expansion of f(-x^2)^3 * f(-x^6)^3 / f(-x)^2 in powers of x where f() is a Ramanujan theta function.

The programs for A260295, the canonical program `A260295.P3101623688400467269` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260295 has offset 0).

The definition of A260295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260295.P16965843643643816426

`A260158(Δ[n²])/3`
-/

namespace A260295.P16965843643643816426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260158 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A260295.P16965843643643816426

namespace A260295

/-- `A260158(Δ[n²])/3` -/
def P16965843643643816426.Spec : Prop :=
  ∀ n, P16965843643643816426.a n = (A260295 n : ℚ)

end A260295

/-! ## A260295.P7576582497694068188

`1/3*A260158(2*n+1)`
-/

namespace A260295.P7576582497694068188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A260158 (2 * n + 1) : ℚ)

end

end A260295.P7576582497694068188

namespace A260295

/-- `1/3*A260158(2*n+1)` -/
def P7576582497694068188.Spec : Prop :=
  ∀ n, P7576582497694068188.a n = (A260295 n : ℚ)

end A260295

/-! ## A260295.P3101623688400467269

`A263021(A016789(n))/4`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A260295

/-- `A263021(A016789(n))/4` -/
def P3101623688400467269.Spec : Prop :=
  ∀ n, P3101623688400467269.a n = (A260295 n : ℚ)

end A260295

/-! ## A260295.P6209225921158544298

`A002264(A260158(2*n+1))`
-/

namespace A260295.P6209225921158544298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A260158 (2 * n + 1)).toNat

end

end A260295.P6209225921158544298

namespace A260295

/-- `A002264(A260158(2*n+1))` -/
def P6209225921158544298.Spec : Prop :=
  ∀ n, P6209225921158544298.a n = A260295 n

end A260295

/-! ## A260295.P10308817993196480543

`A008615(2*A260158(2*n+1))`
-/

namespace A260295.P10308817993196480543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A260158 (2 * n + 1)).toNat

end

end A260295.P10308817993196480543

namespace A260295

/-- `A008615(2*A260158(2*n+1))` -/
def P10308817993196480543.Spec : Prop :=
  ∀ n, P10308817993196480543.a n = A260295 n

end A260295

/-! ## A260295.P1820623709560785843

`A257656(A017653(n))/12`
-/

namespace A260295.P1820623709560785843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257656 (A017653 n).toNat : ℚ) / 12

end

end A260295.P1820623709560785843

namespace A260295

/-- `A257656(A017653(n))/12` -/
def P1820623709560785843.Spec : Prop :=
  ∀ n, P1820623709560785843.a n = (A260295 n : ℚ)

end A260295

/-!
# A260296: Sum over the genera g of the number of immersions of an oriented circle with n crossing in an oriented surface of genus g.

The programs for A260296, there is no canonical definition to state claims against.
-/

/-! ## A260296.P8144291802849116545

`A172272(∑[∑[A243676(n)]])`
-/

namespace A260296.P8144291802849116545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243676 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172272 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A260296.P8144291802849116545

/-!
# A260297: a(n) = prime(n) - (hyperfactorial(prime(n)-1) mod prime(n)).

The programs for A260297, there is no canonical definition to state claims against.
-/

/-! ## A260297.P10251135930357710366

`A000040(n+1)-A260178(n+1)`
-/

namespace A260297.P10251135930357710366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A260178 (n + 1)

end

end A260297.P10251135930357710366

/-! ## A260297.P1942196087253743397

`A008578(n+2)-A260178(n+1)`
-/

namespace A260297.P1942196087253743397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A260178 (n + 1)

end

end A260297.P1942196087253743397

/-! ## A260297.P14501539546326053960

`p?[A000961(n+1)]-A260178(n+1)`
-/

namespace A260297.P14501539546326053960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A260178 (n + 1)

end

end A260297.P14501539546326053960

/-! ## A260297.P16548845196367913981

`record[A006530(n+2)]-A260178(n+1)`
-/

namespace A260297.P16548845196367913981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A260178 (n + 1)

end

end A260297.P16548845196367913981

/-! ## A260297.P15052801371610219055

`record[A037225(n)+1]-A260178(n+1)`
-/

namespace A260297.P15052801371610219055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A260178 (n + 1)

end

end A260297.P15052801371610219055

/-! ## A260297.P5524921014681948729

`p?[A000037(n+1)]-A260178(n+1)`
-/

namespace A260297.P5524921014681948729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A260178 (n + 1)

end

end A260297.P5524921014681948729

/-! ## A260297.P7735826735848464011

`p?[A014681(n)]-A260178(n+1)`
-/

namespace A260297.P7735826735848464011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A260178 (n + 1)

end

end A260297.P7735826735848464011

/-! ## A260297.P8943545031184047068

`record[A074399(n+1)]-A260178(n+1)`
-/

namespace A260297.P8943545031184047068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A260178 (n + 1)

end

end A260297.P8943545031184047068

/-! ## A260297.P12199899173490176192

`p?[A007948(n+1)]-A260178(n+1)`
-/

namespace A260297.P12199899173490176192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A260178 (n + 1)

end

end A260297.P12199899173490176192

/-! ## A260297.P8102290312939823778

`p?[A130065(n+1)]-A260178(n+1)`
-/

namespace A260297.P8102290312939823778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A260178 (n + 1)

end

end A260297.P8102290312939823778

/-! ## A260297.P6849300765256721722

`p?[n-A026741(n)]-A260178(n+1)`
-/

namespace A260297.P6849300765256721722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A260178 (n + 1)

end

end A260297.P6849300765256721722

/-! ## A260297.P12261782715634865371

`A347309(A347313(n+1))-A260178(n+1)`
-/

namespace A260297.P12261782715634865371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347309 (A347313 (n + 1)).toNat - A260178 (n + 1)

end

end A260297.P12261782715634865371

/-!
# A260298: Primes p such that hyperfactorial(p-1) == 1 (mod p).

The programs for A260298, the canonical program `A260298.P4761561818638806536` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260298 has offset 1).

The definition of A260298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260298.P17979569115349055151

`A000040(A260299(n+1))`
-/

namespace A260298.P17979569115349055151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A260299 (n + 1)).toNat

end

end A260298.P17979569115349055151

namespace A260298

/-- `A000040(A260299(n+1))` -/
def P17979569115349055151.Spec : Prop :=
  ∀ n, P17979569115349055151.a n = A260298 (n + 1)

end A260298

/-! ## A260298.P16120997486130512386

`A008578(A260299(n+1)+1)`
-/

namespace A260298.P16120997486130512386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A260299 (n + 1) + 1).toNat

end

end A260298.P16120997486130512386

namespace A260298

/-- `A008578(A260299(n+1)+1)` -/
def P16120997486130512386.Spec : Prop :=
  ∀ n, P16120997486130512386.a n = A260298 (n + 1)

end A260298

/-! ## A260298.P1334447302293481243

`A158611(A260299(n+1)+2)`
-/

namespace A260298.P1334447302293481243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A260299 (n + 1) + 2).toNat

end

end A260298.P1334447302293481243

namespace A260298

/-- `A158611(A260299(n+1)+2)` -/
def P1334447302293481243.Spec : Prop :=
  ∀ n, P1334447302293481243.a n = A260298 (n + 1)

end A260298

/-! ## A260298.P8328997796793242163

`A000040(lt[A260178(n+1), 2]+1)`
-/

namespace A260298.P8328997796793242163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260178 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A260298.P8328997796793242163

namespace A260298

/-- `A000040(lt[A260178(n+1), 2]+1)` -/
def P8328997796793242163.Spec : Prop :=
  ∀ n, P8328997796793242163.a n = A260298 (n + 1)

end A260298

/-! ## A260298.P14048983173952799253

`record[A000040(n+1)/A260178(n+1)]`
-/

namespace A260298.P14048983173952799253
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A260178 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260298.P14048983173952799253

namespace A260298

/-- `record[A000040(n+1)/A260178(n+1)]` -/
def P14048983173952799253.Spec : Prop :=
  ∀ n, P14048983173952799253.a n = (A260298 (n + 1) : ℚ)

end A260298

/-! ## A260298.P5107901287434853321

`record[A260611(n+1)+2-A260178(n+1)]`
-/

namespace A260298.P5107901287434853321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260611 (n + 1) + (2 - A260178 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260298.P5107901287434853321

namespace A260298

/-- `record[A260611(n+1)+2-A260178(n+1)]` -/
def P5107901287434853321.Spec : Prop :=
  ∀ n, P5107901287434853321.a n = A260298 (n + 1)

end A260298

/-! ## A260298.P4761561818638806536

`A000040(eq[A260611(n+1)+1, A000040(n+1)]+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A260298

/-- `A000040(eq[A260611(n+1)+1, A000040(n+1)]+1)` -/
def P4761561818638806536.Spec : Prop :=
  ∀ n, P4761561818638806536.a n = A260298 (n + 1)

theorem P4761561818638806536.correct : P4761561818638806536.Spec := by
  intro n
  simp only [A260298, Nat.add_sub_cancel]

end A260298

/-! ## A260298.P9417112957263418533

`record[A119688(A111284(n+1))+1]`
-/

namespace A260298.P9417112957263418533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119688 (A111284 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260298.P9417112957263418533

namespace A260298

/-- `record[A119688(A111284(n+1))+1]` -/
def P9417112957263418533.Spec : Prop :=
  ∀ n, P9417112957263418533.a n = A260298 (n + 1)

end A260298

/-! ## A260298.P8842607886377092457

`record[A014963(A260611(n+1)+1)]`
-/

namespace A260298.P8842607886377092457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A260611 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260298.P8842607886377092457

namespace A260298

/-- `record[A014963(A260611(n+1)+1)]` -/
def P8842607886377092457.Spec : Prop :=
  ∀ n, P8842607886377092457.a n = A260298 (n + 1)

end A260298

/-! ## A260298.P9682695821484126848

`record[record[A074399(n+1)]/A260178(n+1)]`
-/

namespace A260298.P9682695821484126848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (A260178 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260298.P9682695821484126848

namespace A260298

/-- `record[record[A074399(n+1)]/A260178(n+1)]` -/
def P9682695821484126848.Spec : Prop :=
  ∀ n, P9682695821484126848.a n = (A260298 (n + 1) : ℚ)

end A260298

/-! ## A260298.P6018912893390647290

`A014963(A260297(A260299(n+1))+1)`
-/

namespace A260298.P6018912893390647290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A260297 (A260299 (n + 1)).toNat + 1).toNat

end

end A260298.P6018912893390647290

namespace A260298

/-- `A014963(A260297(A260299(n+1))+1)` -/
def P6018912893390647290.Spec : Prop :=
  ∀ n, P6018912893390647290.a n = A260298 (n + 1)

end A260298

/-! ## A260298.P11887987796403841089

`eq[A003415(n), A214054(n+1)]`
-/

namespace A260298.P11887987796403841089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260298.P11887987796403841089

namespace A260298

/-- `eq[A003415(n), A214054(n+1)]` -/
def P11887987796403841089.Spec : Prop :=
  ∀ n, (P11887987796403841089.a n : ℤ) = A260298 (n + 1)

end A260298

/-! ## A260298.P17809101641202479236

`eq[A018783(n), A214054(n+1)]`
-/

namespace A260298.P17809101641202479236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260298.P17809101641202479236

namespace A260298

/-- `eq[A018783(n), A214054(n+1)]` -/
def P17809101641202479236.Spec : Prop :=
  ∀ n, (P17809101641202479236.a n : ℤ) = A260298 (n + 1)

end A260298

/-! ## A260298.P12651348032227265561

`eq[A107286(n), A214054(n+1)]`
-/

namespace A260298.P12651348032227265561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260298.P12651348032227265561

namespace A260298

/-- `eq[A107286(n), A214054(n+1)]` -/
def P12651348032227265561.Spec : Prop :=
  ∀ n, (P12651348032227265561.a n : ℤ) = A260298 (n + 1)

end A260298

/-! ## A260298.P1445957239621555421

`eq[A107463(n), A214054(n+1)]`
-/

namespace A260298.P1445957239621555421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260298.P1445957239621555421

namespace A260298

/-- `eq[A107463(n), A214054(n+1)]` -/
def P1445957239621555421.Spec : Prop :=
  ∀ n, (P1445957239621555421.a n : ℤ) = A260298 (n + 1)

end A260298

/-! ## A260298.P7732192135487753601

`eq[A175126(n), A214054(n+1)]`
-/

namespace A260298.P7732192135487753601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260298.P7732192135487753601

namespace A260298

/-- `eq[A175126(n), A214054(n+1)]` -/
def P7732192135487753601.Spec : Prop :=
  ∀ n, (P7732192135487753601.a n : ℤ) = A260298 (n + 1)

end A260298

/-! ## A260298.P5825617494085605573

`eq[A214054(n+1), A257000(n)]`
-/

namespace A260298.P5825617494085605573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260298.P5825617494085605573

namespace A260298

/-- `eq[A214054(n+1), A257000(n)]` -/
def P5825617494085605573.Spec : Prop :=
  ∀ n, (P5825617494085605573.a n : ℤ) = A260298 (n + 1)

end A260298

/-! ## A260298.P14944574324316148681

`eq[A214054(n+1), A302055(n)]`
-/

namespace A260298.P14944574324316148681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260298.P14944574324316148681

namespace A260298

/-- `eq[A214054(n+1), A302055(n)]` -/
def P14944574324316148681.Spec : Prop :=
  ∀ n, (P14944574324316148681.a n : ℤ) = A260298 (n + 1)

end A260298

/-! ## A260298.P17455603726106822374

`eq[A214054(n+1), A309892(n)]`
-/

namespace A260298.P17455603726106822374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260298.P17455603726106822374

namespace A260298

/-- `eq[A214054(n+1), A309892(n)]` -/
def P17455603726106822374.Spec : Prop :=
  ∀ n, (P17455603726106822374.a n : ℤ) = A260298 (n + 1)

end A260298

/-! ## A260298.P10492338367371741333

`eq[A214054(n+1), A335405(n)]`
-/

namespace A260298.P10492338367371741333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335405 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260298.P10492338367371741333

namespace A260298

/-- `eq[A214054(n+1), A335405(n)]` -/
def P10492338367371741333.Spec : Prop :=
  ∀ n, (P10492338367371741333.a n : ℤ) = A260298 (n + 1)

end A260298

/-!
# A260299: Numbers k such that hyperfactorial(prime(k)-1) == 1 (mod prime(k)).

The programs for A260299, the canonical program `A260299.P3373541649294797026` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260299 has offset 1).

The definition of A260299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260299.P14395441482693652592

`eq[1, A260178(n+1)]+1`
-/

namespace A260299.P14395441482693652592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260178 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260299.P14395441482693652592

namespace A260299

/-- `eq[1, A260178(n+1)]+1` -/
def P14395441482693652592.Spec : Prop :=
  ∀ n, (P14395441482693652592.a n : ℤ) = A260299 (n + 1)

end A260299

/-! ## A260299.P2578938733220770787

`lt[A260178(C(n+1, n)), 2]+1`
-/

namespace A260299.P2578938733220770787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260178 (Nat.choose (n + 1) n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A260299.P2578938733220770787

namespace A260299

/-- `lt[A260178(C(n+1, n)), 2]+1` -/
def P2578938733220770787.Spec : Prop :=
  ∀ n, (P2578938733220770787.a n : ℤ) = A260299 (n + 1)

end A260299

/-! ## A260299.P13764567419447545029

`record[A020703(A020703(n+1))/A260178(n+1)]`
-/

namespace A260299.P13764567419447545029
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020703 (A020703 (n + 1)).toNat : ℚ) / (A260178 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260299.P13764567419447545029

namespace A260299

/-- `record[A020703(A020703(n+1))/A260178(n+1)]` -/
def P13764567419447545029.Spec : Prop :=
  ∀ n, P13764567419447545029.a n = (A260299 (n + 1) : ℚ)

end A260299

/-! ## A260299.P3373541649294797026

`A000720(A260298(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A260299

/-- `A000720(A260298(n+1))` -/
def P3373541649294797026.Spec : Prop :=
  ∀ n, P3373541649294797026.a n = A260299 (n + 1)

theorem P3373541649294797026.correct : P3373541649294797026.Spec := by
  intro n
  simp only [A260299, Nat.add_sub_cancel]

end A260299

/-! ## A260299.P1766733724439419676

`eq[n+1, A000720(A260611(n+1)+1)]+1`
-/

namespace A260299.P1766733724439419676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A260611 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260299.P1766733724439419676

namespace A260299

/-- `eq[n+1, A000720(A260611(n+1)+1)]+1` -/
def P1766733724439419676.Spec : Prop :=
  ∀ n, (P1766733724439419676.a n : ℤ) = A260299 (n + 1)

end A260299

/-! ## A260299.P1869983335692294611

`A000720(record[A000040(n+1)/A260178(n+1)])`
-/

namespace A260299.P1869983335692294611
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A260178 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A260299.P1869983335692294611

namespace A260299

/-- `A000720(record[A000040(n+1)/A260178(n+1)])` -/
def P1869983335692294611.Spec : Prop :=
  ∀ n, P1869983335692294611.a n = A260299 (n + 1)

end A260299

/-! ## A260299.P9336430800850163335

`record[A000720(n+2)/A260178(A000720(n+2))]`
-/

namespace A260299.P9336430800850163335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (n + 2) : ℚ) / (A260178 (A000720 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260299.P9336430800850163335

namespace A260299

/-- `record[A000720(n+2)/A260178(A000720(n+2))]` -/
def P9336430800850163335.Spec : Prop :=
  ∀ n, P9336430800850163335.a n = (A260299 (n + 1) : ℚ)

end A260299

/-! ## A260299.P16410664772608106365

`A000720(record[A000040(n+1)-A260178(n+1)²]+1)`
-/

namespace A260299.P16410664772608106365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A260178 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A260299.P16410664772608106365

namespace A260299

/-- `A000720(record[A000040(n+1)-A260178(n+1)²]+1)` -/
def P16410664772608106365.Spec : Prop :=
  ∀ n, P16410664772608106365.a n = A260299 (n + 1)

end A260299

