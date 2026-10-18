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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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

/-!
# A143400: Expansion of x^k/Product_{t=k..2k} (1-tx) for k=5.

The programs for A143400, there is no canonical definition to state claims against.
-/

/-! ## A143400.P2533399335588005396

`A143395(A077169(n)+n)`
-/

namespace A143400.P2533399335588005396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143395 (A077169 n + (n : ℤ)).toNat

end

end A143400.P2533399335588005396

/-! ## A143400.P15231277687453132420

`A112316(A008776(n))%A052919(n)`
-/

namespace A143400.P15231277687453132420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112316 (A008776 n).toNat) (A052919 n)

end

end A143400.P15231277687453132420

/-! ## A143400.P2987685877342297903

`A025439(A351150(n)-A048865(n+1))`
-/

namespace A143400.P2987685877342297903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 (A351150 n - A048865 (n + 1)).toNat

end

end A143400.P2987685877342297903

/-! ## A143400.P1300281590293114861

`A135907(A052284(n))*A143858(n+5)`
-/

namespace A143400.P1300281590293114861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135907 (A052284 n).toNat * A143858 (n + 5)

end

end A143400.P1300281590293114861

/-!
# A143401: Expansion of x^k/Product_{t=k..2k} (1-tx) for k=6.

The programs for A143401, there is no canonical definition to state claims against.
-/

/-! ## A143401.P11497153060441601996

`A305463(A132465(n+1))`
-/

namespace A143401.P11497153060441601996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305463 (A132465 (n + 1)).toNat

end

end A143401.P11497153060441601996

/-!
# A143402: Expansion of x^k/Product_{t=k..2k} (1-tx) for k=7.

The programs for A143402, there is no canonical definition to state claims against.
-/

/-! ## A143402.P226060436176370518

`A241760(C(n, 6))`
-/

namespace A143402.P226060436176370518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241760 (Nat.choose n 6)

end

end A143402.P226060436176370518

/-! ## A143402.P1938467710430076270

`A325332(C(n, 6))`
-/

namespace A143402.P1938467710430076270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325332 (Nat.choose n 6)

end

end A143402.P1938467710430076270

/-! ## A143402.P15412787332631780862

`A116654(C(n, 7))`
-/

namespace A143402.P15412787332631780862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116654 (Nat.choose n 7)

end

end A143402.P15412787332631780862

/-! ## A143402.P10582213669079214161

`A273160(C(n, 7))`
-/

namespace A143402.P10582213669079214161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273160 (Nat.choose n 7)

end

end A143402.P10582213669079214161

/-! ## A143402.P11063894227173226613

`A129594(C(n, 7)²)`
-/

namespace A143402.P11063894227173226613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (Nat.choose n 7 ^ 2)

end

end A143402.P11063894227173226613

/-!
# A143403: Expansion of x^k/Product_{t=k..2k} (1-tx) for k=8.

The programs for A143403, there is no canonical definition to state claims against.
-/

/-! ## A143403.P2668334578905792791

`A170880(∑[C(n, 8)])`
-/

namespace A143403.P2668334578905792791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170880 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143403.P2668334578905792791

/-! ## A143403.P159766285326418807

`Δ[A061479(C(n, 9))]`
-/

namespace A143403.P159766285326418807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061479 (Nat.choose n 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143403.P159766285326418807

/-! ## A143403.P4214984280681941374

`A039941(C(n+1, 9))`
-/

namespace A143403.P4214984280681941374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039941 (Nat.choose (n + 1) 9)

end

end A143403.P4214984280681941374

/-! ## A143403.P15780045723298254453

`A119559(C(n+1, 9))`
-/

namespace A143403.P15780045723298254453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119559 (Nat.choose (n + 1) 9)

end

end A143403.P15780045723298254453

/-! ## A143403.P311494574191930590

`A170880(C(n+1, 9))`
-/

namespace A143403.P311494574191930590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170880 (Nat.choose (n + 1) 9)

end

end A143403.P311494574191930590

/-!
# A143404: Expansion of x^k/Product_{t=k..2k} (1-tx) for k=9.

The programs for A143404, there is no canonical definition to state claims against.
-/

/-! ## A143404.P16049086583008589121

`A105629(C(n, 9))`
-/

namespace A143404.P16049086583008589121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105629 (Nat.choose n 9)

end

end A143404.P16049086583008589121

/-! ## A143404.P6768542728466482463

`A175309(C(n, 9)+1)-2`
-/

namespace A143404.P6768542728466482463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175309 (Nat.choose n 9 + 1) - 2

end

end A143404.P6768542728466482463

/-! ## A143404.P1826957685846056090

`A007032(a(n-1)+n)` with `a(0)=0`
-/

namespace A143404.P1826957685846056090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007032 (a (n - 1) + (n : ℤ)).toNat

end

end A143404.P1826957685846056090

/-! ## A143404.P3962813577610112038

`A106445(C(floor(n²/10), 8))`
-/

namespace A143404.P3962813577610112038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106445 (Nat.choose ⌊(n ^ 2 : ℚ) / 10⌋.toNat 8)

end

end A143404.P3962813577610112038

/-! ## A143404.P17613062698586088230

`A220500(C(round(n²/12), 7))`
-/

namespace A143404.P17613062698586088230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220500 (Nat.choose (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)).toNat 7)

end

end A143404.P17613062698586088230

/-!
# A143405: Number of forests of labeled rooted trees of height at most 1, with n labels, where any root may contain >= 1 labels, also row sums of A143395, A143396 and A143397.

The programs for A143405, there is no canonical definition to state claims against.
-/

/-! ## A143405.P7114866158921641295

`A008619(A030904(n+1)-A068791(n+1))`
-/

namespace A143405.P7114866158921641295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A030904 (n + 1) - A068791 (n + 1)).toNat

end

end A143405.P7114866158921641295

/-! ## A143405.P1200187372068328009

`A206805(A207556(n))`
-/

namespace A143405.P1200187372068328009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206805 (A207556 n).toNat

end

end A143405.P1200187372068328009

/-!
# A143406: Number of forests of labeled rooted trees of height at most 1, with n labels, where each root contains a nonempty set of labels of equal size, also row sums of A143398.

The programs for A143406, there is no canonical definition to state claims against.
-/

/-! ## A143406.P4795596118508368082

`A300068(A138911(n))+A000110(n)`
-/

namespace A143406.P4795596118508368082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (A138911 n).toNat + A000110 n

end

end A143406.P4795596118508368082

/-! ## A143406.P16565595855099265071

`A058032(A000172(n))`
-/

namespace A143406.P16565595855099265071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058032 (A000172 n).toNat

end

end A143406.P16565595855099265071

/-!
# A143407: Largest number k such that the reduced totient function psi(k) = A002174(n).

The programs for A143407, there is no canonical definition to state claims against.
-/

/-! ## A143407.P17132080748324220409

`A079612(A002174(n+1))`
-/

namespace A143407.P17132080748324220409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (A002174 (n + 1)).toNat

end

end A143407.P17132080748324220409

/-! ## A143407.P15715059618568704203

`A270562(A002174(xor(1, xor(1, n+1))))`
-/

namespace A143407.P15715059618568704203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270562 (A002174 (Nat.xor 1 (Nat.xor 1 (n + 1)))).toNat

end

end A143407.P15715059618568704203

/-! ## A143407.P4492403689376871487

`A270562(A002174(2*n+1-n))`
-/

namespace A143407.P4492403689376871487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270562 (A002174 (2 * n + 1 - n)).toNat

end

end A143407.P4492403689376871487

/-! ## A143407.P4666833006166825951

`A270562(or(A000007(n), A002174(n+1)))`
-/

namespace A143407.P4666833006166825951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270562 (Int.lor (A000007 n) (A002174 (n + 1))).toNat

end

end A143407.P4666833006166825951

/-! ## A143407.P10062675691320228331

`A270562(A002174(n+1)%A000040(n+1))`
-/

namespace A143407.P10062675691320228331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270562 (Int.tmod (A002174 (n + 1)) (A000040 (n + 1))).toNat

end

end A143407.P10062675691320228331

/-! ## A143407.P10652959322332680076

`A079612(eq[A079612(n+1), A270562(n+1)]+1)`
-/

namespace A143407.P10652959322332680076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A143407.P10652959322332680076

/-! ## A143407.P7637254292617134482

`A079612(A002322(A002396(n+1)))`
-/

namespace A143407.P7637254292617134482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (A002322 (A002396 (n + 1)).toNat).toNat

end

end A143407.P7637254292617134482

/-!
# A143408: Number of numbers k such that the reduced totient function psi(k) = A002174(n).

The programs for A143408, there is no canonical definition to state claims against.
-/

/-! ## A143408.P16077725374939895215

`A321713(A002174(n+1))`
-/

namespace A143408.P16077725374939895215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321713 (A002174 (n + 1)).toNat

end

end A143408.P16077725374939895215

/-! ## A143408.P18039208612835093871

`A321713(record[A322315(n+1)+n]-n)`
-/

namespace A143408.P18039208612835093871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322315 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321713 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A143408.P18039208612835093871

/-! ## A143408.P3719561857533930549

`A321713(record[A002174(ceil(C(or(1, n), n)/2))])`
-/

namespace A143408.P3719561857533930549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002174 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321713 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A143408.P3719561857533930549

/-! ## A143408.P6361950901818313064

`A321713(comp[n-(n+1)*A321713(n+1)]+1)`
-/

namespace A143408.P6361950901818313064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n + 1 : ℤ) * A321713 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321713 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A143408.P6361950901818313064

/-! ## A143408.P18218616903417485793

`A321713(A001489(n)+record[A322315(n+1)+n])`
-/

namespace A143408.P18218616903417485793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322315 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321713 (A001489 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A143408.P18218616903417485793

/-! ## A143408.P10489278352750747224

`A321713(A002322(A002396(n+1)))`
-/

namespace A143408.P10489278352750747224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321713 (A002322 (A002396 (n + 1)).toNat).toNat

end

end A143408.P10489278352750747224

/-! ## A143408.P2175330958766861972

`filter[A321713(n+1), A178226(#)]`
-/

namespace A143408.P2175330958766861972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A143408.P2175330958766861972

/-! ## A143408.P1554408409145643774

`filter[A321713(n+1), A381735(#)]`
-/

namespace A143408.P1554408409145643774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381735 (f1 j).toNat = 1) n)

end

end A143408.P1554408409145643774

/-! ## A143408.P7870504290926972302

`filter[A321713(n+1), A043545(#)]`
-/

namespace A143408.P7870504290926972302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A143408.P7870504290926972302

/-! ## A143408.P4331217164322111355

`filter[A321713(n+1), A252744(#)]`
-/

namespace A143408.P4331217164322111355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252744 (f1 j).toNat = 1) n)

end

end A143408.P4331217164322111355

/-!
# A143409: Square array read by antidiagonals: form the Euler-Seidel matrix for the sequence {k!} and then divide column k by k!.

The programs for A143409, there is no canonical definition to state claims against.
-/

/-! ## A143409.P14044225565715734130

`A073474(n)/A008279(n)`
-/

namespace A143409.P14044225565715734130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073474 n : ℚ) / (A008279 n : ℚ)

end

end A143409.P14044225565715734130

/-! ## A143409.P9368272779799629097

`A073474(n)/A094587(A061579(n))`
-/

namespace A143409.P9368272779799629097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073474 n : ℚ) / (A094587 (A061579 n).toNat : ℚ)

end

end A143409.P9368272779799629097

/-! ## A143409.P15919675443665295443

`A073474(n)/A021010(n)*A130595(n)`
-/

namespace A143409.P15919675443665295443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073474 n : ℚ) / (A021010 n : ℚ) * (A130595 n : ℚ)

end

end A143409.P15919675443665295443

/-! ## A143409.P15893955813577410132

`A073474(n)/A090802(n)*A130321(n)`
-/

namespace A143409.P15893955813577410132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073474 n : ℚ) / (A090802 n : ℚ) * (A130321 n : ℚ)

end

end A143409.P15893955813577410132

/-! ## A143409.P13235745904797198922

`A073474(n)/gcd(A073474(n), A121757(n))`
-/

namespace A143409.P13235745904797198922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073474 n : ℚ) / (Int.gcd (A073474 n) (A121757 n) : ℚ)

end

end A143409.P13235745904797198922

/-! ## A143409.P2501310391080653812

`A073474(n)/gcd(A206703(n), A218016(n))`
-/

namespace A143409.P2501310391080653812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073474 n : ℚ) / (Int.gcd (A206703 n) (A218016 n) : ℚ)

end

end A143409.P2501310391080653812

/-! ## A143409.P3356057784665147881

`A046899(n)/A113025(n)*A073474(n)`
-/

namespace A143409.P3356057784665147881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046899 n : ℚ) / (A113025 n : ℚ) * (A073474 n : ℚ)

end

end A143409.P3356057784665147881

/-! ## A143409.P6266202964482653714

`lcm(A073474(n), A326659(n))/A326659(n)`
-/

namespace A143409.P6266202964482653714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A073474 n) (A326659 n) : ℚ) / (A326659 n : ℚ)

end

end A143409.P6266202964482653714

/-!
# A143412: Main diagonal of A143410.

The programs for A143412, the canonical program `A143412.P2749167425533159828` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143412 has offset 0).

The definition of A143412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143412.P2749167425533159828

`4*(2*n-1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A143412

/-- `4*(2*n-1)*a(n-1)+a(n-2)` -/
def P2749167425533159828.Spec : Prop :=
  ∀ n, P2749167425533159828.a n = A143412 n

theorem P2749167425533159828.correct : P2749167425533159828.Spec := by
  intro n
  simp only [A143412]

end A143412

/-! ## A143412.P8944672047383028997

`a(n-2)+(8*n-4)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A143412.P8944672047383028997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + ((8 * n : ℤ) - 4) * a (n - 1)

end

end A143412.P8944672047383028997

namespace A143412

/-- `a(n-2)+(8*n-4)*a(n-1)` -/
def P8944672047383028997.Spec : Prop :=
  ∀ n, P8944672047383028997.a n = A143412 n

end A143412

/-! ## A143412.P4772598654094019504

`A078737(3*n+1)`
-/

namespace A143412.P4772598654094019504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078737 (3 * n + 1)

end

end A143412.P4772598654094019504

namespace A143412

/-- `A078737(3*n+1)` -/
def P4772598654094019504.Spec : Prop :=
  ∀ n, P4772598654094019504.a n = A143412 n

end A143412

/-! ## A143412.P16824850448217819883

`record[A078737(n+1)^(1-n%3)]`
-/

namespace A143412.P16824850448217819883
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078737 (n + 1) : ℚ) ^ (1 - ((n % 3 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143412.P16824850448217819883

namespace A143412

/-- `record[A078737(n+1)^(1-n%3)]` -/
def P16824850448217819883.Spec : Prop :=
  ∀ n, P16824850448217819883.a n = (A143412 n : ℚ)

end A143412

/-! ## A143412.P7120198701098808290

`record[A078737(∑{digits}[n, #]+1+n+n)]`
-/

namespace A143412.P7120198701098808290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078737 (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum + 1 + n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143412.P7120198701098808290

namespace A143412

/-- `record[A078737(∑{digits}[n, #]+1+n+n)]` -/
def P7120198701098808290.Spec : Prop :=
  ∀ n, P7120198701098808290.a n = A143412 n

end A143412

/-!
# A143413: Apéry-like numbers for the constant e: a(n) = 1/(n-1)!*Sum_{k = 0..n+1} (-1)^k*C(n+1,k)*(2*n-k)! for n >= 1.

The programs for A143413, there is no canonical definition to state claims against.
-/

/-! ## A143413.P1612362328084572756

`A060475(A001844(n))-A000038(n)`
-/

namespace A143413.P1612362328084572756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A001844 n).toNat - A000038 n

end

end A143413.P1612362328084572756

/-! ## A143413.P11254307834427758506

`A086764(A132209(n))-A000038(n)`
-/

namespace A143413.P11254307834427758506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 (A132209 n).toNat - A000038 n

end

end A143413.P11254307834427758506

/-! ## A143413.P17473716245910403127

`A060475(A001844(n))-2*A000007(n)`
-/

namespace A143413.P17473716245910403127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A001844 n).toNat - 2 * A000007 n

end

end A143413.P17473716245910403127

/-! ## A143413.P9097417747175036031

`A060475(A001844(n))-A025231(n+1)%3`
-/

namespace A143413.P9097417747175036031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A001844 n).toNat - Int.tmod (A025231 (n + 1)) 3

end

end A143413.P9097417747175036031

/-! ## A143413.P5088358338019377194

`A033999(A000118(n))*A060475(A001844(n))`
-/

namespace A143413.P5088358338019377194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000118 n).toNat * A060475 (A001844 n).toNat

end

end A143413.P5088358338019377194

/-!
# A143414: Apéry-like numbers for the constant 1/e: a(n) = (1/(n-1)!)*Sum_{k = 0..n-1} binomial(n-1,k)*(2*n-k)!.

The programs for A143414, there is no canonical definition to state claims against.
-/

/-! ## A143414.P18224202414321083714

`2*A065920(n)`
-/

namespace A143414.P18224202414321083714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065920 n

end

end A143414.P18224202414321083714

/-! ## A143414.P8310962273087863297

`∑[2*n]*A143415(n)`
-/

namespace A143414.P8310962273087863297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A143415 n

end

end A143414.P8310962273087863297

/-! ## A143414.P14977343466672751724

`lcm(A002378(n), A065920(n))`
-/

namespace A143414.P14977343466672751724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002378 n) (A065920 n)

end

end A143414.P14977343466672751724

/-! ## A143414.P8085676688862593360

`lcm(A005843(∑[n]), A143415(n))`
-/

namespace A143414.P8085676688862593360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005843 (∑ j ∈ Finset.range (n + 1), f1 j)) (A143415 n)

end

end A143414.P8085676688862593360

/-! ## A143414.P1774879149834918496

`2*A000217(n)*A143415(n)`
-/

namespace A143414.P1774879149834918496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000217 n * A143415 n)

end

end A143414.P1774879149834918496

/-! ## A143414.P2558357889925206589

`(n+1)*A143415(n)*A028310(n)`
-/

namespace A143414.P2558357889925206589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A143415 n * A028310 n

end

end A143414.P2558357889925206589

/-! ## A143414.P9803865123503963827

`A065920(A055643(n))+A065920(n)`
-/

namespace A143414.P9803865123503963827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065920 (A055643 n).toNat + A065920 n

end

end A143414.P9803865123503963827

/-! ## A143414.P12460510843777097969

`A065920(n)+A065920(n)%A001518(n)`
-/

namespace A143414.P12460510843777097969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065920 n + Int.tmod (A065920 n) (A001518 n)

end

end A143414.P12460510843777097969

/-!
# A143415: Another sequence of Apery-like numbers for the constant 1/e: a(n) = 1/(n+1)!*Sum_{k = 0..n-1} C(n-1,k)*(2*n-k)!.

The programs for A143415, there is no canonical definition to state claims against.
-/

/-! ## A143415.P216538433550138073

`A065920(n)/A065033(n²+n)`
-/

namespace A143415.P216538433550138073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065920 n : ℚ) / (A065033 (n ^ 2 + n) : ℚ)

end

end A143415.P216538433550138073

/-! ## A143415.P10114349151955824178

`A065920(n)/A028310(A000217(n))`
-/

namespace A143415.P10114349151955824178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065920 n : ℚ) / (A028310 (A000217 n).toNat : ℚ)

end

end A143415.P10114349151955824178

/-! ## A143415.P3039042088288490482

`A065920(n)/A088617(A000124(n))`
-/

namespace A143415.P3039042088288490482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065920 n : ℚ) / (A088617 (A000124 n).toNat : ℚ)

end

end A143415.P3039042088288490482

/-! ## A143415.P6560819983299758447

`A065920(n)/(A065033(n)*A109613(n))`
-/

namespace A143415.P6560819983299758447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065920 n : ℚ) / (A065033 n * A109613 n : ℚ)

end

end A143415.P6560819983299758447

/-! ## A143415.P3918021757393682909

`A143414(n)/A028310(n²+n)`
-/

namespace A143415.P3918021757393682909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143414 n : ℚ) / (A028310 (n ^ 2 + n) : ℚ)

end

end A143415.P3918021757393682909

/-!
# A143418: Triangle read by rows. T(n,k) = binomial(n,k)*(binomial(n,k)-1)/2.

The programs for A143418, the canonical program `A143418.P1053362496203516466` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143418 has offset 1).

The definition of A143418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143418.P12932170299108166012

`A065420(n)/2`
-/

namespace A143418.P12932170299108166012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065420 n : ℚ) / 2

end

end A143418.P12932170299108166012

namespace A143418

/-- `A065420(n)/2` -/
def P12932170299108166012.Spec : Prop :=
  ∀ n, P12932170299108166012.a n = (A143418 (n + 1) : ℚ)

end A143418

/-! ## A143418.P4304970676585952687

`C(A014430(n)+1, 2)`
-/

namespace A143418.P4304970676585952687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014430 n + 1).toNat 2

end

end A143418.P4304970676585952687

namespace A143418

/-- `C(A014430(n)+1, 2)` -/
def P4304970676585952687.Spec : Prop :=
  ∀ n, (P4304970676585952687.a n : ℤ) = A143418 (n + 1)

end A143418

/-! ## A143418.P12616551622087216656

`C(A014410(n+2), 2)`
-/

namespace A143418.P12616551622087216656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014410 (n + 2)).toNat 2

end

end A143418.P12616551622087216656

namespace A143418

/-- `C(A014410(n+2), 2)` -/
def P12616551622087216656.Spec : Prop :=
  ∀ n, (P12616551622087216656.a n : ℤ) = A143418 (n + 1)

end A143418

/-! ## A143418.P13237182422896044938

`C(A074909(comp[∑[n]]), 2)`
-/

namespace A143418.P13237182422896044938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074909 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat 2

end

end A143418.P13237182422896044938

namespace A143418

/-- `C(A074909(comp[∑[n]]), 2)` -/
def P13237182422896044938.Spec : Prop :=
  ∀ n, (P13237182422896044938.a n : ℤ) = A143418 (n + 1)

end A143418

/-! ## A143418.P5603495176597854311

`C(sqrt(A014719(n+2)), 2)`
-/

namespace A143418.P5603495176597854311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A014719 (n + 2) : ℝ))).toNat 2

end

end A143418.P5603495176597854311

namespace A143418

/-- `C(sqrt(A014719(n+2)), 2)` -/
def P5603495176597854311.Spec : Prop :=
  ∀ n, (P5603495176597854311.a n : ℤ) = A143418 (n + 1)

end A143418

/-! ## A143418.P9625953744372592515

`C(A028263(n)-A007318(n), 2)`
-/

namespace A143418.P9625953744372592515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028263 n - A007318 n).toNat 2

end

end A143418.P9625953744372592515

namespace A143418

/-- `C(A028263(n)-A007318(n), 2)` -/
def P9625953744372592515.Spec : Prop :=
  ∀ n, (P9625953744372592515.a n : ℤ) = A143418 (n + 1)

end A143418

/-! ## A143418.P17064095583170473556

`A014410(n+2)/2*A014430(n)`
-/

namespace A143418.P17064095583170473556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014410 (n + 2) : ℚ) / 2 * (A014430 n : ℚ)

end

end A143418.P17064095583170473556

namespace A143418

/-- `A014410(n+2)/2*A014430(n)` -/
def P17064095583170473556.Spec : Prop :=
  ∀ n, P17064095583170473556.a n = (A143418 (n + 1) : ℚ)

end A143418

/-! ## A143418.P9393611672330081980

`C(A028263(n)-ceil(A134059(n)/3), 2)`
-/

namespace A143418.P9393611672330081980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028263 n - ⌈(A134059 n : ℚ) / 3⌉).toNat 2

end

end A143418.P9393611672330081980

namespace A143418

/-- `C(A028263(n)-ceil(A134059(n)/3), 2)` -/
def P9393611672330081980.Spec : Prop :=
  ∀ n, (P9393611672330081980.a n : ℤ) = A143418 (n + 1)

end A143418

/-! ## A143418.P15378556609177065249

`(A014719(n+2)-A014410(n+2))/2`
-/

namespace A143418.P15378556609177065249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014719 (n + 2) - A014410 (n + 2) : ℚ) / 2

end

end A143418.P15378556609177065249

namespace A143418

/-- `(A014719(n+2)-A014410(n+2))/2` -/
def P15378556609177065249.Spec : Prop :=
  ∀ n, P15378556609177065249.a n = (A143418 (n + 1) : ℚ)

end A143418

/-! ## A143418.P1053362496203516466

`C(C(A003057(n+2), A004736(n+1)), 2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143418

/-- `C(C(A003057(n+2), A004736(n+1)), 2)` -/
def P1053362496203516466.Spec : Prop :=
  ∀ n, (P1053362496203516466.a n : ℤ) = A143418 (n + 1)

theorem P1053362496203516466.correct : P1053362496203516466.Spec := by
  intro n
  simp only [A143418, Nat.add_sub_cancel]

end A143418

/-! ## A143418.P1407326310254346519

`C(A007318(lt[1, A007318(n)]), 2)`
-/

namespace A143418.P1407326310254346519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)).toNat 2

end

end A143418.P1407326310254346519

namespace A143418

/-- `C(A007318(lt[1, A007318(n)]), 2)` -/
def P1407326310254346519.Spec : Prop :=
  ∀ n, (P1407326310254346519.a n : ℤ) = A143418 (n + 1)

end A143418

/-! ## A143418.P16543945240173585425

`C(C(A097285(2*(n+1)), A097285(2*n+1)), 2)`
-/

namespace A143418.P16543945240173585425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A097285 (2 * (n + 1))).toNat (A097285 (2 * n + 1)).toNat) 2

end

end A143418.P16543945240173585425

namespace A143418

/-- `C(C(A097285(2*(n+1)), A097285(2*n+1)), 2)` -/
def P16543945240173585425.Spec : Prop :=
  ∀ n, (P16543945240173585425.a n : ℤ) = A143418 (n + 1)

end A143418

/-! ## A143418.P16861619424752850933

`A000217(A014430(n))`
-/

namespace A143418.P16861619424752850933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A014430 n).toNat

end

end A143418.P16861619424752850933

namespace A143418

/-- `A000217(A014430(n))` -/
def P16861619424752850933.Spec : Prop :=
  ∀ n, P16861619424752850933.a n = A143418 (n + 1)

end A143418

/-! ## A143418.P16270998994041551571

`A000217(A014410(n+2)-1)`
-/

namespace A143418.P16270998994041551571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A014410 (n + 2) - 1).toNat

end

end A143418.P16270998994041551571

namespace A143418

/-- `A000217(A014410(n+2)-1)` -/
def P16270998994041551571.Spec : Prop :=
  ∀ n, P16270998994041551571.a n = A143418 (n + 1)

end A143418

/-! ## A143418.P15583792890154529180

`A000217(A074909(n)+A135278(n)-1)`
-/

namespace A143418.P15583792890154529180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A074909 n + (A135278 n - 1)).toNat

end

end A143418.P15583792890154529180

namespace A143418

/-- `A000217(A074909(n)+A135278(n)-1)` -/
def P15583792890154529180.Spec : Prop :=
  ∀ n, P15583792890154529180.a n = A143418 (n + 1)

end A143418

/-! ## A143418.P4633320920284803515

`A000217(A074909(n)-(1-A135278(n)))`
-/

namespace A143418.P4633320920284803515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A074909 n - (1 - A135278 n)).toNat

end

end A143418.P4633320920284803515

namespace A143418

/-- `A000217(A074909(n)-(1-A135278(n)))` -/
def P4633320920284803515.Spec : Prop :=
  ∀ n, P4633320920284803515.a n = A143418 (n + 1)

end A143418

/-! ## A143418.P867657013209529097

`A161680(A014430(n)+1)`
-/

namespace A143418.P867657013209529097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A014430 n + 1).toNat

end

end A143418.P867657013209529097

namespace A143418

/-- `A161680(A014430(n)+1)` -/
def P867657013209529097.Spec : Prop :=
  ∀ n, P867657013209529097.a n = A143418 (n + 1)

end A143418

/-! ## A143418.P5684079474342478062

`A161680(A014410(n+2))`
-/

namespace A143418.P5684079474342478062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A014410 (n + 2)).toNat

end

end A143418.P5684079474342478062

namespace A143418

/-- `A161680(A014410(n+2))` -/
def P5684079474342478062.Spec : Prop :=
  ∀ n, P5684079474342478062.a n = A143418 (n + 1)

end A143418

/-! ## A143418.P10944152662958190600

`A000096(A014430(n)-1)+1`
-/

namespace A143418.P10944152662958190600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A014430 n - 1).toNat + 1

end

end A143418.P10944152662958190600

namespace A143418

/-- `A000096(A014430(n)-1)+1` -/
def P10944152662958190600.Spec : Prop :=
  ∀ n, P10944152662958190600.a n = A143418 (n + 1)

end A143418

/-! ## A143418.P15748445000589174652

`A000096(A014410(n+2)-2)+1`
-/

namespace A143418.P15748445000589174652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A014410 (n + 2) - 2).toNat + 1

end

end A143418.P15748445000589174652

namespace A143418

/-- `A000096(A014410(n+2)-2)+1` -/
def P15748445000589174652.Spec : Prop :=
  ∀ n, P15748445000589174652.a n = A143418 (n + 1)

end A143418

/-!
# A143420: Row sums of triangle A373101.

The programs for A143420, there is no canonical definition to state claims against.
-/

/-! ## A143420.P12407426630757989400

`A365071(n)+A144146(A081016(n))`
-/

namespace A143420.P12407426630757989400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365071 n + A144146 (A081016 n).toNat

end

end A143420.P12407426630757989400

/-!
# A143421: Number of odd numbers k such that phi(k) = n, where n runs through the values (A002202) taken by phi.

The programs for A143421, there is no canonical definition to state claims against.
-/

/-! ## A143421.P16939030955359104277

`A058277(n+1)-A143422(n+1)`
-/

namespace A143421.P16939030955359104277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058277 (n + 1) - A143422 (n + 1)

end

end A143421.P16939030955359104277

/-! ## A143421.P15518754462269303613

`A014197(A002202(n+1))-A143422(n+1)`
-/

namespace A143421.P15518754462269303613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A002202 (n + 1)).toNat - A143422 (n + 1)

end

end A143421.P15518754462269303613

/-! ## A143421.P9785282716388585778

`A014197(A000010(A006511(n+1)))-A143422(n+1)`
-/

namespace A143421.P9785282716388585778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A000010 (A006511 (n + 1)).toNat).toNat - A143422 (n + 1)

end

end A143421.P9785282716388585778

/-! ## A143421.P2472068993901340417

`A066412(A002181(n+1))-A143422(n+1)`
-/

namespace A143421.P2472068993901340417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (A002181 (n + 1)).toNat - A143422 (n + 1)

end

end A143421.P2472068993901340417

/-! ## A143421.P7823932458667598577

`A066412(A143423(n+1))-A143422(n+1)`
-/

namespace A143421.P7823932458667598577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (A143423 (n + 1)).toNat - A143422 (n + 1)

end

end A143421.P7823932458667598577

/-! ## A143421.P1909021639506096527

`A066412(A006511(n+1))-A143422(n+1)`
-/

namespace A143421.P1909021639506096527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (A006511 (n + 1)).toNat - A143422 (n + 1)

end

end A143421.P1909021639506096527

/-! ## A143421.P15509114349422862140

`A320000(A002202(n+1)+A000217(A002202(n+1)))`
-/

namespace A143421.P15509114349422862140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320000 (A002202 (n + 1) + A000217 (A002202 (n + 1)).toNat).toNat

end

end A143421.P15509114349422862140

/-!
# A143422: Number of even numbers k such that phi(k) = n, where n runs through the values (A002202) taken by phi.

The programs for A143422, there is no canonical definition to state claims against.
-/

/-! ## A143422.P1116519963795733152

`A058277(n+1)-A143421(n+1)`
-/

namespace A143422.P1116519963795733152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058277 (n + 1) - A143421 (n + 1)

end

end A143422.P1116519963795733152

/-! ## A143422.P8734261233640903616

`A014197(A002202(n+1))-A143421(n+1)`
-/

namespace A143422.P8734261233640903616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A002202 (n + 1)).toNat - A143421 (n + 1)

end

end A143422.P8734261233640903616

/-! ## A143422.P8018546763251209178

`A014197(A000010(A006511(n+1)))-A143421(n+1)`
-/

namespace A143422.P8018546763251209178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A000010 (A006511 (n + 1)).toNat).toNat - A143421 (n + 1)

end

end A143422.P8018546763251209178

/-! ## A143422.P771119518610548582

`A066412(A002181(n+1))-A143421(n+1)`
-/

namespace A143422.P771119518610548582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (A002181 (n + 1)).toNat - A143421 (n + 1)

end

end A143422.P771119518610548582

/-! ## A143422.P8380337435514216932

`A066412(A143423(n+1))-A143421(n+1)`
-/

namespace A143422.P8380337435514216932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (A143423 (n + 1)).toNat - A143421 (n + 1)

end

end A143422.P8380337435514216932

/-! ## A143422.P5818314532978610222

`A066412(A006511(n+1))-A143421(n+1)`
-/

namespace A143422.P5818314532978610222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066412 (A006511 (n + 1)).toNat - A143421 (n + 1)

end

end A143422.P5818314532978610222

/-!
# A143423: Least even number k such that phi(k) = n, where n runs through the values (A002202) taken by phi.

The programs for A143423, there is no canonical definition to state claims against.
-/

/-! ## A143423.P11149499434348053782

`record[A263981(A004396(A097247(n+1)))]`
-/

namespace A143423.P11149499434348053782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263981 (A004396 (A097247 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143423.P11149499434348053782

/-! ## A143423.P16789107632270634596

`record[A263981(A175213(n))]`
-/

namespace A143423.P16789107632270634596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263981 (A175213 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143423.P16789107632270634596

/-! ## A143423.P15246271383738635172

`record[A263981(n+1)%A216139(n+2)]`
-/

namespace A143423.P15246271383738635172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263981 (n + 1)) (A216139 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143423.P15246271383738635172

/-! ## A143423.P5868016165903501676

`record[A263981(A263977(n+1)-A057944(n))]`
-/

namespace A143423.P5868016165903501676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263981 (A263977 (n + 1) - A057944 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143423.P5868016165903501676

/-! ## A143423.P12301781640206536224

`A132895(∑[A317934(n+1)!])`
-/

namespace A143423.P12301781640206536224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A317934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132895 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143423.P12301781640206536224

/-!
# A143424: Triangle read by rows, A054525 * A130123, 1<=k<=n.

The programs for A143424, the canonical program `A143424.P11284984421560187409` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143424 has offset 1).

The definition of A143424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143424.P14706071779186991099

`2^(n-C(∑[char[∑[n]]], 2))*A054525(n+1)`
-/

namespace A143424.P14706071779186991099
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A054525 (n + 1) : ℚ)

end

end A143424.P14706071779186991099

namespace A143424

/-- `2^(n-C(∑[char[∑[n]]], 2))*A054525(n+1)` -/
def P14706071779186991099.Spec : Prop :=
  ∀ n, P14706071779186991099.a n = (A143424 (n + 1) : ℚ)

end A143424

/-! ## A143424.P11284984421560187409

`A054525(n+1)*A059268(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A143424

/-- `A054525(n+1)*A059268(n)` -/
def P11284984421560187409.Spec : Prop :=
  ∀ n, P11284984421560187409.a n = A143424 (n + 1)

theorem P11284984421560187409.correct : P11284984421560187409.Spec := by
  intro n
  simp only [A143424, Nat.add_sub_cancel]

end A143424

/-! ## A143424.P15393217549001861103

`A054525(n+1)*A143425(n+1)`
-/

namespace A143424.P15393217549001861103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A143425 (n + 1)

end

end A143424.P15393217549001861103

namespace A143424

/-- `A054525(n+1)*A143425(n+1)` -/
def P15393217549001861103.Spec : Prop :=
  ∀ n, P15393217549001861103.a n = A143424 (n + 1)

end A143424

/-! ## A143424.P16967594041988590573

`2^A002262(n)*A054525(n+1)`
-/

namespace A143424.P16967594041988590573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A054525 (n + 1) : ℚ)

end

end A143424.P16967594041988590573

namespace A143424

/-- `2^A002262(n)*A054525(n+1)` -/
def P16967594041988590573.Spec : Prop :=
  ∀ n, P16967594041988590573.a n = (A143424 (n + 1) : ℚ)

end A143424

/-! ## A143424.P13610816329875517078

`A008683(A010766(n+1))*A143425(n+1)`
-/

namespace A143424.P13610816329875517078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A010766 (n + 1)).toNat * A143425 (n + 1)

end

end A143424.P13610816329875517078

namespace A143424

/-- `A008683(A010766(n+1))*A143425(n+1)` -/
def P13610816329875517078.Spec : Prop :=
  ∀ n, P13610816329875517078.a n = A143424 (n + 1)

end A143424

/-! ## A143424.P12799870964650755297

`A008683(A049834(n+1))*A143425(n+1)`
-/

namespace A143424.P12799870964650755297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A049834 (n + 1)).toNat * A143425 (n + 1)

end

end A143424.P12799870964650755297

namespace A143424

/-- `A008683(A049834(n+1))*A143425(n+1)` -/
def P12799870964650755297.Spec : Prop :=
  ∀ n, P12799870964650755297.a n = A143424 (n + 1)

end A143424

/-! ## A143424.P13713006497350271113

`A054525(n+1)/A007318(n)*A013609(n)`
-/

namespace A143424.P13713006497350271113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054525 (n + 1) : ℚ) / (A007318 n : ℚ) * (A013609 n : ℚ)

end

end A143424.P13713006497350271113

namespace A143424

/-- `A054525(n+1)/A007318(n)*A013609(n)` -/
def P13713006497350271113.Spec : Prop :=
  ∀ n, P13713006497350271113.a n = (A143424 (n + 1) : ℚ)

end A143424

/-! ## A143424.P2789033150337336248

`A125093(n+1)/A049840(n+1)*A059268(n)`
-/

namespace A143424.P2789033150337336248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125093 (n + 1) : ℚ) / (A049840 (n + 1) : ℚ) * (A059268 n : ℚ)

end

end A143424.P2789033150337336248

namespace A143424

/-- `A125093(n+1)/A049840(n+1)*A059268(n)` -/
def P2789033150337336248.Spec : Prop :=
  ∀ n, P2789033150337336248.a n = (A143424 (n + 1) : ℚ)

end A143424

/-! ## A143424.P196237220876437477

`A054525(n+1)*A166918(comp[∑[n]])`
-/

namespace A143424.P196237220876437477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A166918 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A143424.P196237220876437477

namespace A143424

/-- `A054525(n+1)*A166918(comp[∑[n]])` -/
def P196237220876437477.Spec : Prop :=
  ∀ n, P196237220876437477.a n = A143424 (n + 1)

end A143424

/-! ## A143424.P10892696707630017409

`A054525(n+1)*A274859(comp[∑[n]])`
-/

namespace A143424.P10892696707630017409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A274859 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A143424.P10892696707630017409

namespace A143424

/-- `A054525(n+1)*A274859(comp[∑[n]])` -/
def P10892696707630017409.Spec : Prop :=
  ∀ n, P10892696707630017409.a n = A143424 (n + 1)

end A143424

/-!
# A143425: Triangle read by rows A051731 * A130123, 1<=k<=n.

The programs for A143425, the canonical program `A143425.P2017308752457203601` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143425 has offset 1).

The definition of A143425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143425.P12396595310857863189

`floor(2^(A127093(n+1)-1))`
-/

namespace A143425.P12396595310857863189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (A127093 (n + 1) - 1 : ℤ)⌋

end

end A143425.P12396595310857863189

namespace A143425

/-- `floor(2^(A127093(n+1)-1))` -/
def P12396595310857863189.Spec : Prop :=
  ∀ n, P12396595310857863189.a n = A143425 (n + 1)

end A143425

/-! ## A143425.P15905650949427955793

`floor(2^A127093(Δ[n²]-n)/2)`
-/

namespace A143425.P15905650949427955793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (A127093 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℤ) / 2⌋

end

end A143425.P15905650949427955793

namespace A143425

/-- `floor(2^A127093(Δ[n²]-n)/2)` -/
def P15905650949427955793.Spec : Prop :=
  ∀ n, P15905650949427955793.a n = A143425 (n + 1)

end A143425

/-! ## A143425.P3095123280950515027

`ceil((2^A127093((n+1)%comp[∑[n]])-1)/2)`
-/

namespace A143425.P3095123280950515027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℚ) ^ (A127093 ((n + 1) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) - 1) / 2⌉

end

end A143425.P3095123280950515027

namespace A143425

/-- `ceil((2^A127093((n+1)%comp[∑[n]])-1)/2)` -/
def P3095123280950515027.Spec : Prop :=
  ∀ n, P3095123280950515027.a n = A143425 (n + 1)

end A143425

/-! ## A143425.P8888415522940806523

`2^(n-C(∑[char[∑[n]]], 2))*A051731(n+1)`
-/

namespace A143425.P8888415522940806523
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A051731 (n + 1) : ℚ)

end

end A143425.P8888415522940806523

namespace A143425

/-- `2^(n-C(∑[char[∑[n]]], 2))*A051731(n+1)` -/
def P8888415522940806523.Spec : Prop :=
  ∀ n, P8888415522940806523.a n = (A143425 (n + 1) : ℚ)

end A143425

/-! ## A143425.P6201374070829980009

`and(-A054522(n+1), 2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A143425.P6201374070829980009
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A054522 (n + 1)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)))

end

end A143425.P6201374070829980009

namespace A143425

/-- `and(-A054522(n+1), 2^(n-C(∑[char[∑[n]]], 2)))` -/
def P6201374070829980009.Spec : Prop :=
  ∀ n, P6201374070829980009.a n = A143425 (n + 1)

end A143425

/-! ## A143425.P13316890256553359341

`and(2^(n-C(∑[char[∑[n]]], 2)), A247146(n-C(∑[char[∑[n+1]]], 2)+2))`
-/

namespace A143425.P13316890256553359341
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))) (A247146 ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + 2).toNat)

end

end A143425.P13316890256553359341

namespace A143425

/-- `and(2^(n-C(∑[char[∑[n]]], 2)), A247146(n-C(∑[char[∑[n+1]]], 2)+2))` -/
def P13316890256553359341.Spec : Prop :=
  ∀ n, P13316890256553359341.a n = A143425 (n + 1)

end A143425

/-! ## A143425.P14280693773640684058

`A131577(A127093(n+1))`
-/

namespace A143425.P14280693773640684058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A127093 (n + 1)).toNat

end

end A143425.P14280693773640684058

namespace A143425

/-- `A131577(A127093(n+1))` -/
def P14280693773640684058.Spec : Prop :=
  ∀ n, P14280693773640684058.a n = A143425 (n + 1)

end A143425

/-! ## A143425.P14866526765087402893

`A131572(A134560(n+1))`
-/

namespace A143425.P14866526765087402893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (A134560 (n + 1)).toNat

end

end A143425.P14866526765087402893

namespace A143425

/-- `A131572(A134560(n+1))` -/
def P14866526765087402893.Spec : Prop :=
  ∀ n, P14866526765087402893.a n = A143425 (n + 1)

end A143425

/-! ## A143425.P2924452934498578673

`A051731(n+1)*A059268(n)`
-/

namespace A143425.P2924452934498578673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A059268 n

end

end A143425.P2924452934498578673

namespace A143425

/-- `A051731(n+1)*A059268(n)` -/
def P2924452934498578673.Spec : Prop :=
  ∀ n, P2924452934498578673.a n = A143425 (n + 1)

end A143425

/-! ## A143425.P10014620595297961000

`lcm(A059268(n), A143110(n+1))`
-/

namespace A143425.P10014620595297961000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059268 n) (A143110 (n + 1))

end

end A143425.P10014620595297961000

namespace A143425

/-- `lcm(A059268(n), A143110(n+1))` -/
def P10014620595297961000.Spec : Prop :=
  ∀ n, (P10014620595297961000.a n : ℤ) = A143425 (n + 1)

end A143425

/-! ## A143425.P2017308752457203601

`and(A046143(n+1), A059268(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143425

/-- `and(A046143(n+1), A059268(n))` -/
def P2017308752457203601.Spec : Prop :=
  ∀ n, P2017308752457203601.a n = A143425 (n + 1)

theorem P2017308752457203601.correct : P2017308752457203601.Spec := by
  intro n
  simp only [A143425, Nat.add_sub_cancel]

end A143425

/-! ## A143425.P1311794421300607982

`and(A046143(n+1), A130328(n))`
-/

namespace A143425.P1311794421300607982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046143 (n + 1)) (A130328 n)

end

end A143425.P1311794421300607982

namespace A143425

/-- `and(A046143(n+1), A130328(n))` -/
def P1311794421300607982.Spec : Prop :=
  ∀ n, P1311794421300607982.a n = A143425 (n + 1)

end A143425

/-! ## A143425.P4342691444642341063

`and(A046143(n+1), A130329(n))`
-/

namespace A143425.P4342691444642341063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046143 (n + 1)) (A130329 n)

end

end A143425.P4342691444642341063

namespace A143425

/-- `and(A046143(n+1), A130329(n))` -/
def P4342691444642341063.Spec : Prop :=
  ∀ n, P4342691444642341063.a n = A143425 (n + 1)

end A143425

/-! ## A143425.P10166261965758600831

`and(A059268(n), A130888(n+1))`
-/

namespace A143425.P10166261965758600831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059268 n) (A130888 (n + 1))

end

end A143425.P10166261965758600831

namespace A143425

/-- `and(A059268(n), A130888(n+1))` -/
def P10166261965758600831.Spec : Prop :=
  ∀ n, P10166261965758600831.a n = A143425 (n + 1)

end A143425

/-! ## A143425.P7724768971251546039

`and(A046143(n+1), A175840(n))`
-/

namespace A143425.P7724768971251546039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046143 (n + 1)) (A175840 n)

end

end A143425.P7724768971251546039

namespace A143425

/-- `and(A046143(n+1), A175840(n))` -/
def P7724768971251546039.Spec : Prop :=
  ∀ n, P7724768971251546039.a n = A143425 (n + 1)

end A143425

/-! ## A143425.P6352439206565985260

`and(A046143(n+1), A193859(n))`
-/

namespace A143425.P6352439206565985260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046143 (n + 1)) (A193859 n)

end

end A143425.P6352439206565985260

namespace A143425

/-- `and(A046143(n+1), A193859(n))` -/
def P6352439206565985260.Spec : Prop :=
  ∀ n, P6352439206565985260.a n = A143425 (n + 1)

end A143425

/-! ## A143425.P8092216955741376817

`and(A130328(n), A130888(n+1))`
-/

namespace A143425.P8092216955741376817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130328 n) (A130888 (n + 1))

end

end A143425.P8092216955741376817

namespace A143425

/-- `and(A130328(n), A130888(n+1))` -/
def P8092216955741376817.Spec : Prop :=
  ∀ n, P8092216955741376817.a n = A143425 (n + 1)

end A143425

/-! ## A143425.P928485376421724855

`and(A130329(n), A130888(n+1))`
-/

namespace A143425.P928485376421724855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130329 n) (A130888 (n + 1))

end

end A143425.P928485376421724855

namespace A143425

/-- `and(A130329(n), A130888(n+1))` -/
def P928485376421724855.Spec : Prop :=
  ∀ n, P928485376421724855.a n = A143425 (n + 1)

end A143425

/-! ## A143425.P15798133317401568165

`and(A046143(n+1), A247936(n))`
-/

namespace A143425.P15798133317401568165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046143 (n + 1)) (A247936 n)

end

end A143425.P15798133317401568165

namespace A143425

/-- `and(A046143(n+1), A247936(n))` -/
def P15798133317401568165.Spec : Prop :=
  ∀ n, P15798133317401568165.a n = A143425 (n + 1)

end A143425

/-! ## A143425.P6387126716405300845

`and(A130888(n+1), A175840(n))`
-/

namespace A143425.P6387126716405300845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130888 (n + 1)) (A175840 n)

end

end A143425.P6387126716405300845

namespace A143425

/-- `and(A130888(n+1), A175840(n))` -/
def P6387126716405300845.Spec : Prop :=
  ∀ n, P6387126716405300845.a n = A143425 (n + 1)

end A143425

/-!
# A143426: G.f. A(x) satisfies A(x) = 1 + x*A(x*A(x))^2.

The programs for A143426, there is no canonical definition to state claims against.
-/

/-! ## A143426.P4636549590822507990

`A384626(∑[n+1]+n)`
-/

namespace A143426.P4636549590822507990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384626 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A143426.P4636549590822507990

/-! ## A143426.P7155290682720698829

`A187185(A080599(n)+floor(5^n/4))`
-/

namespace A143426.P7155290682720698829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A080599 n + ⌊(5 ^ n : ℚ) / 4⌋).toNat

end

end A143426.P7155290682720698829

/-! ## A143426.P13172440877390474985

`A125223(n)-A111900(A008981(n))`
-/

namespace A143426.P13172440877390474985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125223 n - A111900 (A008981 n).toNat

end

end A143426.P13172440877390474985

/-!
# A143428: a(n)=least prime == -1 mod 6 such that q(n)*(q(n)+a(n))-1 and q(n)*(q(n)+a(n))+1 are twin primes with q(i)=i-th prime == 1 mod 6.

The programs for A143428, there is no canonical definition to state claims against.
-/

/-! ## A143428.P16386564844371717791

`A082466(A002476(n+1))^A010894(n)!`
-/

namespace A143428.P16386564844371717791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082466 (A002476 (n + 1)).toNat ^ Nat.factorial (A010894 (n + 21)).toNat

end

end A143428.P16386564844371717791

/-! ## A143428.P5339365180202126876

`A082466(A002476(n+1)%A245372(n+1))`
-/

namespace A143428.P5339365180202126876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082466 (Int.tmod (A002476 (n + 1)) (A245372 (n + 1))).toNat

end

end A143428.P5339365180202126876

/-! ## A143428.P2145463087093791864

`A082466(A002476(n+1))+A000038(A000125(n))`
-/

namespace A143428.P2145463087093791864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082466 (A002476 (n + 1)).toNat + A000038 (A000125 n).toNat

end

end A143428.P2145463087093791864

/-! ## A143428.P17632616372882789597

`A000045(A010894(n)!)*A082466(A002476(n+1))`
-/

namespace A143428.P17632616372882789597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.factorial (A010894 (n + 21)).toNat) * A082466 (A002476 (n + 1)).toNat

end

end A143428.P17632616372882789597

/-! ## A143428.P10542828312819913649

`A082466(A002476(n+1))%A130058(n+5)`
-/

namespace A143428.P10542828312819913649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082466 (A002476 (n + 1)).toNat) (A130058 (n + 5))

end

end A143428.P10542828312819913649

/-!
# A143429: Least a(n) prime == 1 mod 6 such that q(n)*(q(n)+a(n))-1 is prime with q(i)=i-th prime == -1 mod 6.

The programs for A143429, there is no canonical definition to state claims against.
-/

/-! ## A143429.P428855968117882001

`A365345(A070153(2*n+1))+4`
-/

namespace A143429.P428855968117882001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365345 (A070153 (2 * n + 1)).toNat + 4

end

end A143429.P428855968117882001

/-! ## A143429.P8919618610977209476

`A225516(A278241(n))`
-/

namespace A143429.P8919618610977209476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225516 (A278241 n).toNat

end

end A143429.P8919618610977209476

/-! ## A143429.P5715133961021086680

`A101778(A083556(n+3))`
-/

namespace A143429.P5715133961021086680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101778 (A083556 (n + 3)).toNat

end

end A143429.P5715133961021086680

/-! ## A143429.P9656281183187727629

`A074816(A361295(n+2))+4`
-/

namespace A143429.P9656281183187727629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (A361295 (n + 2)).toNat + 4

end

end A143429.P9656281183187727629

/-!
# A143431: Periodic length 8 sequence [1, -1, 1, -1, -1, 1, -1, 1, ...].

The programs for A143431, the canonical program `A143431.P12370304541027993044` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143431 has offset 0).

The definition of A143431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143431.P12370304541027993044

`1-and(2, ∑[-n])`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A143431

/-- `1-and(2, ∑[-n])` -/
def P12370304541027993044.Spec : Prop :=
  ∀ n, P12370304541027993044.a n = A143431 n

theorem P12370304541027993044.correct : P12370304541027993044.Spec := by
  intro n
  simp only [A143431]

end A143431

/-!
# A143432: Ultimately period 4 sequence [ 2, 2, 0, 0, ...] with a(0) = a(1) = 1.

The programs for A143432, the canonical program `A143432.P7796294187495908491` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143432 has offset 0).

The definition of A143432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143432.P7796294187495908491

`2*a(and(2, n))` with `a(0)=1, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A143432

/-- `2*a(and(2, n))` -/
def P7796294187495908491.Spec : Prop :=
  ∀ n, (P7796294187495908491.a n : ℤ) = A143432 n

theorem P7796294187495908491.correct : P7796294187495908491.Spec := by
  intro n
  simp only [A143432]

end A143432

/-!
# A143433: Expansion of f(-x, x^3) in powers of x where f(,) is Ramanujan's general theta function.

The programs for A143433, the canonical program `A143433.P568368968491830476` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143433 has offset 0).

The definition of A143433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143433.P3980480778261184941

`(-1)^n*A143434(n)`
-/

namespace A143433.P3980480778261184941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A143434 n

end

end A143433.P3980480778261184941

namespace A143433

/-- `(-1)^n*A143434(n)` -/
def P3980480778261184941.Spec : Prop :=
  ∀ n, P3980480778261184941.a n = A143433 n

end A143433

/-! ## A143433.P1183183931817651207

`(-1)^∑[n]*char[∑[n]]`
-/

namespace A143433.P1183183931817651207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A143433.P1183183931817651207

namespace A143433

/-- `(-1)^∑[n]*char[∑[n]]` -/
def P1183183931817651207.Spec : Prop :=
  ∀ n, P1183183931817651207.a n = A143433 n

end A143433

/-! ## A143433.P17703348247798332099

`(-and(1, char[∑[n]]))^∑[n]`
-/

namespace A143433.P17703348247798332099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.land 1 (if ∃ j, f1 j = n then 1 else 0) : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A143433.P17703348247798332099

namespace A143433

/-- `(-and(1, char[∑[n]]))^∑[n]` -/
def P17703348247798332099.Spec : Prop :=
  ∀ n, P17703348247798332099.a n = A143433 n

end A143433

/-! ## A143433.P9808396480697920891

`char[C(n, 2)]/(-1)^∑[n]`
-/

namespace A143433.P9808396480697920891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / ((-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A143433.P9808396480697920891

namespace A143433

/-- `char[C(n, 2)]/(-1)^∑[n]` -/
def P9808396480697920891.Spec : Prop :=
  ∀ n, P9808396480697920891.a n = (A143433 n : ℚ)

end A143433

/-! ## A143433.P16191850904473989841

`char[∑[n]]/(1-and(2, -n))`
-/

namespace A143433.P16191850904473989841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / (1 - Int.land 2 (-(n : ℤ)) : ℚ)

end

end A143433.P16191850904473989841

namespace A143433

/-- `char[∑[n]]/(1-and(2, -n))` -/
def P16191850904473989841.Spec : Prop :=
  ∀ n, P16191850904473989841.a n = (A143433 n : ℚ)

end A143433

/-! ## A143433.P11028373959069607873

`((-1)^∑[n])%(char[∑[n]]+1)`
-/

namespace A143433.P11028373959069607873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)) (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A143433.P11028373959069607873

namespace A143433

/-- `((-1)^∑[n])%(char[∑[n]]+1)` -/
def P11028373959069607873.Spec : Prop :=
  ∀ n, P11028373959069607873.a n = A143433 n

end A143433

/-! ## A143433.P12765612272226443867

`(-C(char[∑[n]]+1, 2))^∑[n]`
-/

namespace A143433.P12765612272226443867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(Nat.choose ((if ∃ j, f1 j = n then 1 else 0) + 1) 2 : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A143433.P12765612272226443867

namespace A143433

/-- `(-C(char[∑[n]]+1, 2))^∑[n]` -/
def P12765612272226443867.Spec : Prop :=
  ∀ n, P12765612272226443867.a n = A143433 n

end A143433

/-! ## A143433.P16814270835487307541

`char[∑[n]]/∏[A033999(n)]`
-/

namespace A143433.P16814270835487307541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f3 j : ℤ) : ℚ)

end

end A143433.P16814270835487307541

namespace A143433

/-- `char[∑[n]]/∏[A033999(n)]` -/
def P16814270835487307541.Spec : Prop :=
  ∀ n, P16814270835487307541.a n = (A143433 n : ℚ)

end A143433

/-! ## A143433.P16745404517824286148

`A010054(n)/(-1)^∑[n]`
-/

namespace A143433.P16745404517824286148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010054 n : ℚ) / ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A143433.P16745404517824286148

namespace A143433

/-- `A010054(n)/(-1)^∑[n]` -/
def P16745404517824286148.Spec : Prop :=
  ∀ n, P16745404517824286148.a n = (A143433 n : ℚ)

end A143433

/-! ## A143433.P13280146634776488540

`char[A000217(n)]/(-1)^∑[n]`
-/

namespace A143433.P13280146634776488540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / ((-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A143433.P13280146634776488540

namespace A143433

/-- `char[A000217(n)]/(-1)^∑[n]` -/
def P13280146634776488540.Spec : Prop :=
  ∀ n, P13280146634776488540.a n = (A143433 n : ℚ)

end A143433

/-! ## A143433.P3651099218842153468

`char[∑[n]]/A121373(and(2, -n)!)`
-/

namespace A143433.P3651099218842153468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / (A121373 (Nat.factorial (Int.land 2 (-(n : ℤ))).toNat) : ℚ)

end

end A143433.P3651099218842153468

namespace A143433

/-- `char[∑[n]]/A121373(and(2, -n)!)` -/
def P3651099218842153468.Spec : Prop :=
  ∀ n, P3651099218842153468.a n = (A143433 n : ℚ)

end A143433

/-! ## A143433.P9210805807703094661

`(-A073423(n))^(C(3*n, 2)/3)`
-/

namespace A143433.P9210805807703094661
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-A073423 n : ℝ) ^ ((Nat.choose (3 * n) 2 : ℚ) / 3 : ℝ)

end

end A143433.P9210805807703094661

namespace A143433

/-- `(-A073423(n))^(C(3*n, 2)/3)` -/
def P9210805807703094661.Spec : Prop :=
  ∀ n, P9210805807703094661.a n = (A143433 n : ℝ)

end A143433

/-! ## A143433.P9428059850649393185

`A106459(n)/A057077(n)`
-/

namespace A143433.P9428059850649393185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106459 n : ℚ) / (A057077 n : ℚ)

end

end A143433.P9428059850649393185

namespace A143433

/-- `A106459(n)/A057077(n)` -/
def P9428059850649393185.Spec : Prop :=
  ∀ n, P9428059850649393185.a n = (A143433 n : ℚ)

end A143433

/-! ## A143433.P5712396210639932146

`A143434(n)/A033999(n)`
-/

namespace A143433.P5712396210639932146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143434 n : ℚ) / (A033999 n : ℚ)

end

end A143433.P5712396210639932146

namespace A143433

/-- `A143434(n)/A033999(n)` -/
def P5712396210639932146.Spec : Prop :=
  ∀ n, P5712396210639932146.a n = (A143433 n : ℚ)

end A143433

/-! ## A143433.P5237656404202352392

`A143434(n)/A108086(n)`
-/

namespace A143433.P5237656404202352392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143434 n : ℚ) / (A108086 n : ℚ)

end

end A143433.P5237656404202352392

namespace A143433

/-- `A143434(n)/A108086(n)` -/
def P5237656404202352392.Spec : Prop :=
  ∀ n, P5237656404202352392.a n = (A143433 n : ℚ)

end A143433

/-! ## A143433.P17009685048639133669

`A143434(n)/A130777(n)`
-/

namespace A143433.P17009685048639133669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143434 n : ℚ) / (A130777 n : ℚ)

end

end A143433.P17009685048639133669

namespace A143433

/-- `A143434(n)/A130777(n)` -/
def P17009685048639133669.Spec : Prop :=
  ∀ n, P17009685048639133669.a n = (A143433 n : ℚ)

end A143433

/-! ## A143433.P568368968491830476

`round(A010054(n)/A228826(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A143433

/-- `round(A010054(n)/A228826(n))` -/
def P568368968491830476.Spec : Prop :=
  ∀ n, P568368968491830476.a n = A143433 n

theorem P568368968491830476.correct : P568368968491830476.Spec := by
  intro n
  simp only [A143433]

end A143433

/-! ## A143433.P14762800560222213975

`(-A073423(n))^(A192136(n)-1)`
-/

namespace A143433.P14762800560222213975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A073423 n : ℚ) ^ (A192136 n - 1 : ℤ)

end

end A143433.P14762800560222213975

namespace A143433

/-- `(-A073423(n))^(A192136(n)-1)` -/
def P14762800560222213975.Spec : Prop :=
  ∀ n, P14762800560222213975.a n = (A143433 n : ℚ)

end A143433

/-! ## A143433.P15137638921662458087

`(-A073423(n))^(A104249(n)-(n+1))`
-/

namespace A143433.P15137638921662458087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A073423 n : ℚ) ^ (A104249 n - (n + 1 : ℤ) : ℤ)

end

end A143433.P15137638921662458087

namespace A143433

/-- `(-A073423(n))^(A104249(n)-(n+1))` -/
def P15137638921662458087.Spec : Prop :=
  ∀ n, P15137638921662458087.a n = (A143433 n : ℚ)

end A143433

/-! ## A143433.P6447634410676795738

`(-A073423(n))^∑[lt[A020639(2*n+1), 4]]`
-/

namespace A143433.P6447634410676795738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-A073423 n) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143433.P6447634410676795738

namespace A143433

/-- `(-A073423(n))^∑[lt[A020639(2*n+1), 4]]` -/
def P6447634410676795738.Spec : Prop :=
  ∀ n, P6447634410676795738.a n = A143433 n

end A143433

/-!
# A143434: Expansion of f(x, -x^3) in powers of x where f(,) is Ramanujan's two-variable theta function.

The programs for A143434, the canonical program `A143434.P6883462976824196880` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143434 has offset 0).

The definition of A143434 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143433, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143434.P6883462976824196880

`(-1)^n*A143433(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143434

/-- `(-1)^n*A143433(n)` -/
def P6883462976824196880.Spec : Prop :=
  ∀ n, P6883462976824196880.a n = A143434 n

theorem P6883462976824196880.correct : P6883462976824196880.Spec := by
  intro n
  simp only [A143434]

end A143434

/-! ## A143434.P15540016313592468291

`(1-and(2, n))*char[∑[n]]`
-/

namespace A143434.P15540016313592468291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A143434.P15540016313592468291

namespace A143434

/-- `(1-and(2, n))*char[∑[n]]` -/
def P15540016313592468291.Spec : Prop :=
  ∀ n, P15540016313592468291.a n = A143434 n

end A143434

/-! ## A143434.P3666129841217335977

`char[∑[n]]/(1-and(2, n))`
-/

namespace A143434.P3666129841217335977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ)

end

end A143434.P3666129841217335977

namespace A143434

/-- `char[∑[n]]/(1-and(2, n))` -/
def P3666129841217335977.Spec : Prop :=
  ∀ n, P3666129841217335977.a n = (A143434 n : ℚ)

end A143434

/-! ## A143434.P4404142569209583364

`and(1-and(2, n), -char[∑[n]])`
-/

namespace A143434.P4404142569209583364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (Nat.land 2 n : ℤ)) (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A143434.P4404142569209583364

namespace A143434

/-- `and(1-and(2, n), -char[∑[n]])` -/
def P4404142569209583364.Spec : Prop :=
  ∀ n, P4404142569209583364.a n = A143434 n

end A143434

/-! ## A143434.P1948649038267476813

`(1-and(2, n))%(char[∑[n]]+1)`
-/

namespace A143434.P1948649038267476813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - (Nat.land 2 n : ℤ)) (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A143434.P1948649038267476813

namespace A143434

/-- `(1-and(2, n))%(char[∑[n]]+1)` -/
def P1948649038267476813.Spec : Prop :=
  ∀ n, P1948649038267476813.a n = A143434 n

end A143434

/-! ## A143434.P10486761985416202466

`(xor(3, n)-n)%(char[∑[n]]+1)`
-/

namespace A143434.P10486761985416202466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.xor 3 n : ℤ) - (n : ℤ)) (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A143434.P10486761985416202466

namespace A143434

/-- `(xor(3, n)-n)%(char[∑[n]]+1)` -/
def P10486761985416202466.Spec : Prop :=
  ∀ n, P10486761985416202466.a n = A143434 n

end A143434

/-! ## A143434.P2613136535223939861

`log2((char[∑[n]]+1)^(1-and(2, n)))`
-/

namespace A143434.P2613136535223939861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ) ^ (1 - (Nat.land 2 n : ℤ) : ℤ) : ℝ)

end

end A143434.P2613136535223939861

namespace A143434

/-- `log2((char[∑[n]]+1)^(1-and(2, n)))` -/
def P2613136535223939861.Spec : Prop :=
  ∀ n, P2613136535223939861.a n = (A143434 n : ℝ)

end A143434

/-! ## A143434.P2841020399287176214

`(xor(n, char[∑[n]])-n)*(-1)^∑[n]`
-/

namespace A143434.P2841020399287176214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor n (if ∃ j, f1 j = n then 1 else 0) : ℤ) - (n : ℤ)) * (-1) ^ (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A143434.P2841020399287176214

namespace A143434

/-- `(xor(n, char[∑[n]])-n)*(-1)^∑[n]` -/
def P2841020399287176214.Spec : Prop :=
  ∀ n, P2841020399287176214.a n = A143434 n

end A143434

/-! ## A143434.P8016727746125433965

`(xor(n, char[∑[n]])-n)/∏[(-1)^n]`
-/

namespace A143434.P8016727746125433965
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.xor n (if ∃ j, f1 j = n then 1 else 0) : ℤ) - (n : ℤ) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f3 j : ℤ) : ℚ)

end

end A143434.P8016727746125433965

namespace A143434

/-- `(xor(n, char[∑[n]])-n)/∏[(-1)^n]` -/
def P8016727746125433965.Spec : Prop :=
  ∀ n, P8016727746125433965.a n = (A143434 n : ℚ)

end A143434

/-! ## A143434.P6357139141326343560

`char[∑[n]]*A057077(n)`
-/

namespace A143434.P6357139141326343560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A057077 n

end

end A143434.P6357139141326343560

namespace A143434

/-- `char[∑[n]]*A057077(n)` -/
def P6357139141326343560.Spec : Prop :=
  ∀ n, P6357139141326343560.a n = A143434 n

end A143434

/-! ## A143434.P2999908088215993094

`A087960(n)*A106459(n)`
-/

namespace A143434.P2999908088215993094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A106459 n

end

end A143434.P2999908088215993094

namespace A143434

/-- `A087960(n)*A106459(n)` -/
def P2999908088215993094.Spec : Prop :=
  ∀ n, P2999908088215993094.a n = A143434 n

end A143434

/-! ## A143434.P3363264239640437122

`A010054(n)/A057077(n)`
-/

namespace A143434.P3363264239640437122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010054 n : ℚ) / (A057077 n : ℚ)

end

end A143434.P3363264239640437122

namespace A143434

/-- `A010054(n)/A057077(n)` -/
def P3363264239640437122.Spec : Prop :=
  ∀ n, P3363264239640437122.a n = (A143434 n : ℚ)

end A143434

/-! ## A143434.P12920291048774110515

`A009001(n)%A035214(n)`
-/

namespace A143434.P12920291048774110515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009001 n) (A035214 n)

end

end A143434.P12920291048774110515

namespace A143434

/-- `A009001(n)%A035214(n)` -/
def P12920291048774110515.Spec : Prop :=
  ∀ n, P12920291048774110515.a n = A143434 n

end A143434

/-! ## A143434.P9977413211735538339

`A057077(n)%A035214(n)`
-/

namespace A143434.P9977413211735538339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057077 n) (A035214 n)

end

end A143434.P9977413211735538339

namespace A143434

/-- `A057077(n)%A035214(n)` -/
def P9977413211735538339.Spec : Prop :=
  ∀ n, P9977413211735538339.a n = A143434 n

end A143434

/-! ## A143434.P538317634494421902

`A112030(n)%A035214(n)`
-/

namespace A143434.P538317634494421902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112030 n) (A035214 n)

end

end A143434.P538317634494421902

namespace A143434

/-- `A112030(n)%A035214(n)` -/
def P538317634494421902.Spec : Prop :=
  ∀ n, P538317634494421902.a n = A143434 n

end A143434

/-! ## A143434.P8798233045849238808

`A127630(n)%A035214(n)`
-/

namespace A143434.P8798233045849238808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127630 n) (A035214 n)

end

end A143434.P8798233045849238808

namespace A143434

/-- `A127630(n)%A035214(n)` -/
def P8798233045849238808.Spec : Prop :=
  ∀ n, P8798233045849238808.a n = A143434 n

end A143434

/-! ## A143434.P11002869640081960528

`A132429(n)%A035214(n)`
-/

namespace A143434.P11002869640081960528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132429 n) (A035214 n)

end

end A143434.P11002869640081960528

namespace A143434

/-- `A132429(n)%A035214(n)` -/
def P11002869640081960528.Spec : Prop :=
  ∀ n, P11002869640081960528.a n = A143434 n

end A143434

/-! ## A143434.P11266980960693880406

`A141124(n)%A035214(n)`
-/

namespace A143434.P11266980960693880406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141124 n) (A035214 n)

end

end A143434.P11266980960693880406

namespace A143434

/-- `A141124(n)%A035214(n)` -/
def P11266980960693880406.Spec : Prop :=
  ∀ n, P11266980960693880406.a n = A143434 n

end A143434

/-! ## A143434.P5010106537422297947

`A143433(n)*A204172(n+1)`
-/

namespace A143434.P5010106537422297947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143433 n * A204172 (n + 1)

end

end A143434.P5010106537422297947

namespace A143434

/-- `A143433(n)*A204172(n+1)` -/
def P5010106537422297947.Spec : Prop :=
  ∀ n, P5010106537422297947.a n = A143434 n

end A143434

/-! ## A143434.P1425967455465784929

`A010054(n)*A080015(n)/A080054(n)`
-/

namespace A143434.P1425967455465784929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010054 n * A080015 n : ℚ) / (A080054 n : ℚ)

end

end A143434.P1425967455465784929

namespace A143434

/-- `A010054(n)*A080015(n)/A080054(n)` -/
def P1425967455465784929.Spec : Prop :=
  ∀ n, P1425967455465784929.a n = (A143434 n : ℚ)

end A143434

/-!
# A143435: G.f. A(x) satisfies A(x) = 1 + x*A(x*A(x))^3.

The programs for A143435, there is no canonical definition to state claims against.
-/

/-! ## A143435.P10195408773402486708

`A188040(A088716(n)-A001629(n))`
-/

namespace A143435.P10195408773402486708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188040 (A088716 n - A001629 n).toNat

end

end A143435.P10195408773402486708

/-! ## A143435.P2401810825788773476

`A008624(A000168(n)+A000088(n))`
-/

namespace A143435.P2401810825788773476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A000168 n + A000088 n).toNat

end

end A143435.P2401810825788773476

/-!
# A143436: G.f. A(x) satisfies A(x) = 1 + x*A(x*A(x))^4.

The programs for A143436, there is no canonical definition to state claims against.
-/

/-! ## A143436.P5652745928883497579

`A123108(floor(sqrt(A114714(n)-1))+n)`
-/

namespace A143436.P5652745928883497579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.sqrt (A114714 n - 1) + (n : ℤ)).toNat

end

end A143436.P5652745928883497579

/-! ## A143436.P10675956522176358448

`A222254(A034430(n)-A006190(n))`
-/

namespace A143436.P10675956522176358448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A034430 n - A006190 n).toNat

end

end A143436.P10675956522176358448

/-!
# A143437: G.f. A(x) satisfies A(x) = 1 + x*A(x*A(x))^5.

The programs for A143437, there is no canonical definition to state claims against.
-/

/-! ## A143437.P9920030836758487874

`A155989(a(n-1))+n` with `a(0)=1, a(1)=1`
-/

namespace A143437.P9920030836758487874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A155989 (a (n - 1)).toNat + (n : ℤ)

end

end A143437.P9920030836758487874

/-!
# A143438: a(n) = a(n-2) + a(n-3) + a(n-4) - a(n-6), with a(0) = a(2) = a(3) = 1, a(1) = 0 and a(4) = a(5) = 2.

The programs for A143438, the canonical program `A143438.P11754367932249617540` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143438 has offset 0).

The definition of A143438 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)+a(n-4)-a(n-6)` (program `A143438.P11754367932249617540`, by `A143438.P11754367932249617540.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A143438.P11754367932249617540

`a(n-2)+a(n-3)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A143438

/-- `a(n-2)+a(n-3)+a(n-4)-a(n-6)` -/
def P11754367932249617540.Spec : Prop :=
  ∀ n, P11754367932249617540.a n = A143438 n

theorem P11754367932249617540.correct : P11754367932249617540.Spec := by
  intro n
  simp only [A143438]

end A143438

/-! ## A143438.P13618304674500689783

`A080013(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A143438.P13618304674500689783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A080013 n + a (n - 2)

end

end A143438.P13618304674500689783

namespace A143438

/-- `A080013(n)+a(n-2)` -/
def P13618304674500689783.Spec : Prop :=
  ∀ n, P13618304674500689783.a n = A143438 n

end A143438

/-! ## A143438.P17406347880124894436

`Δ[A080013(n+6)]-A080013(n)`
-/

namespace A143438.P17406347880124894436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080013 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A080013 n

end

end A143438.P17406347880124894436

namespace A143438

/-- `Δ[A080013(n+6)]-A080013(n)` -/
def P17406347880124894436.Spec : Prop :=
  ∀ n, P17406347880124894436.a n = A143438 n

end A143438

/-! ## A143438.P18022086701529034346

`A080013(n+7)-(A080013(n+6)+A080013(n))`
-/

namespace A143438.P18022086701529034346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080013 (n + 7) - (A080013 (n + 6) + A080013 n)

end

end A143438.P18022086701529034346

namespace A143438

/-- `A080013(n+7)-(A080013(n+6)+A080013(n))` -/
def P18022086701529034346.Spec : Prop :=
  ∀ n, P18022086701529034346.a n = A143438 n

end A143438

/-! ## A143438.P10735557193524621242

`A253412(n+4)-(A253412(n+1)+A253412(n+2))`
-/

namespace A143438.P10735557193524621242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253412 (n + 4) - (A253412 (n + 1) + A253412 (n + 2))

end

end A143438.P10735557193524621242

namespace A143438

/-- `A253412(n+4)-(A253412(n+1)+A253412(n+2))` -/
def P10735557193524621242.Spec : Prop :=
  ∀ n, P10735557193524621242.a n = A143438 n

end A143438

/-! ## A143438.P11796231933260875937

`Δ[A200661(n+2)-Δ[A200661(n+4)]]`
-/

namespace A143438.P11796231933260875937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200661 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200661 (n + 2) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143438.P11796231933260875937

namespace A143438

/-- `Δ[A200661(n+2)-Δ[A200661(n+4)]]` -/
def P11796231933260875937.Spec : Prop :=
  ∀ n, P11796231933260875937.a n = A143438 n

end A143438

/-!
# A143439: Triangle whose n-th row is the expansion of x*(x^n*(x - 1) + (-1)^n*2).

The programs for A143439, there is no canonical definition to state claims against.
-/

/-! ## A143439.P4017927956898990416

`A204770(A098615(n)+A000720(n+1))`
-/

namespace A143439.P4017927956898990416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204770 (A098615 n + A000720 (n + 1)).toNat

end

end A143439.P4017927956898990416

/-! ## A143439.P13841069550160759147

`A132380(n)-A008683(A007837(n))`
-/

namespace A143439.P13841069550160759147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 n - A008683 (A007837 n).toNat

end

end A143439.P13841069550160759147

/-! ## A143439.P5744102823260427562

`A128144(and(A018332(n+1), A128166(2*n+3)))`
-/

namespace A143439.P5744102823260427562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128144 (Int.land (A018332 (n + 1)) (A128166 (2 * n + 3))).toNat

end

end A143439.P5744102823260427562

/-!
# A143442: Triangle read by rows, A127648 * A000012 * A128407, 1 <= k <= n.

The programs for A143442, the canonical program `A143442.P15593702494414460611` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143442 has offset 1).

The definition of A143442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143442.P15593702494414460611

`∑[char[∑[n]]]*A054527(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A143442

/-- `∑[char[∑[n]]]*A054527(n+1)` -/
def P15593702494414460611.Spec : Prop :=
  ∀ n, P15593702494414460611.a n = A143442 (n + 1)

theorem P15593702494414460611.correct : P15593702494414460611.Spec := by
  intro n
  simp only [A143442, Nat.add_sub_cancel]

end A143442

/-! ## A143442.P15756084312317240970

`A008683(1-C(∑[char[∑[n]]], 2)+n)*∑[char[∑[n]]]`
-/

namespace A143442.P15756084312317240970
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A143442.P15756084312317240970

namespace A143442

/-- `A008683(1-C(∑[char[∑[n]]], 2)+n)*∑[char[∑[n]]]` -/
def P15756084312317240970.Spec : Prop :=
  ∀ n, P15756084312317240970.a n = A143442 (n + 1)

end A143442

/-! ## A143442.P7715738560351550433

`A008683(A002260(n+1))*∑[char[∑[n]]]`
-/

namespace A143442.P7715738560351550433
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002260 (n + 1)).toNat * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A143442.P7715738560351550433

namespace A143442

/-- `A008683(A002260(n+1))*∑[char[∑[n]]]` -/
def P7715738560351550433.Spec : Prop :=
  ∀ n, P7715738560351550433.a n = A143442 (n + 1)

end A143442

/-! ## A143442.P17099470677775391418

`round(sqrt(2*(n+1)))*A008683(A002262(n)+1)`
-/

namespace A143442.P17099470677775391418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * A008683 (A002262 n + 1).toNat

end

end A143442.P17099470677775391418

namespace A143442

/-- `round(sqrt(2*(n+1)))*A008683(A002262(n)+1)` -/
def P17099470677775391418.Spec : Prop :=
  ∀ n, P17099470677775391418.a n = A143442 (n + 1)

end A143442

/-! ## A143442.P14541848351335873355

`(comp[C(n, 2)-1]-n)*A008683(2*n+1-A061885(n))`
-/

namespace A143442.P14541848351335873355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) * A008683 ((2 * n + 1 : ℤ) - A061885 n).toNat

end

end A143442.P14541848351335873355

namespace A143442

/-- `(comp[C(n, 2)-1]-n)*A008683(2*n+1-A061885(n))` -/
def P14541848351335873355.Spec : Prop :=
  ∀ n, P14541848351335873355.a n = A143442 (n + 1)

end A143442

/-! ## A143442.P15546748044100178424

`A002024(n+1)*A008683(A002260(n+1))`
-/

namespace A143442.P15546748044100178424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A008683 (A002260 (n + 1)).toNat

end

end A143442.P15546748044100178424

namespace A143442

/-- `A002024(n+1)*A008683(A002260(n+1))` -/
def P15546748044100178424.Spec : Prop :=
  ∀ n, P15546748044100178424.a n = A143442 (n + 1)

end A143442

/-! ## A143442.P11614498329983625176

`A008683(A002262(n)+1)*A002024(n+1)`
-/

namespace A143442.P11614498329983625176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002262 n + 1).toNat * A002024 (n + 1)

end

end A143442.P11614498329983625176

namespace A143442

/-- `A008683(A002262(n)+1)*A002024(n+1)` -/
def P11614498329983625176.Spec : Prop :=
  ∀ n, P11614498329983625176.a n = A143442 (n + 1)

end A143442

/-! ## A143442.P15864175257347325755

`A008683(A349520(2*n+1))*∑[char[∑[n]]]`
-/

namespace A143442.P15864175257347325755
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A349520 (2 * n + 1)).toNat * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A143442.P15864175257347325755

namespace A143442

/-- `A008683(A349520(2*n+1))*∑[char[∑[n]]]` -/
def P15864175257347325755.Spec : Prop :=
  ∀ n, P15864175257347325755.a n = A143442 (n + 1)

end A143442

/-! ## A143442.P284940536700129777

`A008683(A097285(2*n+1))*∑[char[∑[n]]]`
-/

namespace A143442.P284940536700129777
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A097285 (2 * n + 1)).toNat * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A143442.P284940536700129777

namespace A143442

/-- `A008683(A097285(2*n+1))*∑[char[∑[n]]]` -/
def P284940536700129777.Spec : Prop :=
  ∀ n, P284940536700129777.a n = A143442 (n + 1)

end A143442

/-! ## A143442.P13311011495615298547

`A008683(A057555(Δ[n²]))*A002024(n+1)`
-/

namespace A143442.P13311011495615298547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A057555 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat * A002024 (n + 1)

end

end A143442.P13311011495615298547

namespace A143442

/-- `A008683(A057555(Δ[n²]))*A002024(n+1)` -/
def P13311011495615298547.Spec : Prop :=
  ∀ n, P13311011495615298547.a n = A143442 (n + 1)

end A143442

/-!
# A143443: a(n) = n * A002321(n).

The programs for A143443, the canonical program `A143443.P11189518760645188625` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143443 has offset 1).

The definition of A143443 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A143443.P11189518760645188625

`(n+1)*A002321(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143443

/-- `(n+1)*A002321(n+1)` -/
def P11189518760645188625.Spec : Prop :=
  ∀ n, P11189518760645188625.a n = A143443 (n + 1)

theorem P11189518760645188625.correct : P11189518760645188625.Spec := by
  intro n
  simp only [A143443, Nat.add_sub_cancel]

end A143443

/-! ## A143443.P6299369414442370842

`(n+1)*∑[round(∏{p}[n+1, -#]/Δ[n²])]`
-/

namespace A143443.P6299369414442370842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)) : ℤ) : ℚ) / ((f3 (n + 1) : ℤ) - (f3 n : ℤ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143443.P6299369414442370842

namespace A143443

/-- `(n+1)*∑[round(∏{p}[n+1, -#]/Δ[n²])]` -/
def P6299369414442370842.Spec : Prop :=
  ∀ n, P6299369414442370842.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P5569728243783291187

`(n+1)*∑[A008683(n+1)]`
-/

namespace A143443.P5569728243783291187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143443.P5569728243783291187

namespace A143443

/-- `(n+1)*∑[A008683(n+1)]` -/
def P5569728243783291187.Spec : Prop :=
  ∀ n, P5569728243783291187.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P17852220025744172969

`(n+1)*∑[A007423(n+1)-1]`
-/

namespace A143443.P17852220025744172969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143443.P17852220025744172969

namespace A143443

/-- `(n+1)*∑[A007423(n+1)-1]` -/
def P17852220025744172969.Spec : Prop :=
  ∀ n, P17852220025744172969.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P8708096012376277835

`(n+1)*(2-∑[A157657(n+1)])`
-/

namespace A143443.P8708096012376277835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143443.P8708096012376277835

namespace A143443

/-- `(n+1)*(2-∑[A157657(n+1)])` -/
def P8708096012376277835.Spec : Prop :=
  ∀ n, P8708096012376277835.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P16661914757289533264

`(n+1)*∑[∏{e}[n+1, A328959(#)]]`
-/

namespace A143443.P16661914757289533264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A328959 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143443.P16661914757289533264

namespace A143443

/-- `(n+1)*∑[∏{e}[n+1, A328959(#)]]` -/
def P16661914757289533264.Spec : Prop :=
  ∀ n, P16661914757289533264.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P9703963661043253655

`(n+1)*∑[A076369(n+1)-n-1]`
-/

namespace A143443.P9703963661043253655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076369 (n + 1) - (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143443.P9703963661043253655

namespace A143443

/-- `(n+1)*∑[A076369(n+1)-n-1]` -/
def P9703963661043253655.Spec : Prop :=
  ∀ n, P9703963661043253655.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P12785662093442905894

`(n+1)*∑[A004718(A074823(n+1))]`
-/

namespace A143443.P12785662093442905894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A074823 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143443.P12785662093442905894

namespace A143443

/-- `(n+1)*∑[A004718(A074823(n+1))]` -/
def P12785662093442905894.Spec : Prop :=
  ∀ n, P12785662093442905894.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P2574971817738493336

`(n+1)*∑[A154271(A145501(n+1))]`
-/

namespace A143443.P2574971817738493336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (A145501 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143443.P2574971817738493336

namespace A143443

/-- `(n+1)*∑[A154271(A145501(n+1))]` -/
def P2574971817738493336.Spec : Prop :=
  ∀ n, P2574971817738493336.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P13848506385133060707

`A002321(A008619(2*n))*A008619(2*n)`
-/

namespace A143443.P13848506385133060707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A143443.P13848506385133060707

namespace A143443

/-- `A002321(A008619(2*n))*A008619(2*n)` -/
def P13848506385133060707.Spec : Prop :=
  ∀ n, P13848506385133060707.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P7184684225754530812

`∑[A008683(A052938(2*n))]*A052938(2*n)`
-/

namespace A143443.P7184684225754530812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A052938 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A052938 (2 * n)

end

end A143443.P7184684225754530812

namespace A143443

/-- `∑[A008683(A052938(2*n))]*A052938(2*n)` -/
def P7184684225754530812.Spec : Prop :=
  ∀ n, P7184684225754530812.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P14958208724784491101

`∑[A008683(A028242(2*n))]*A028242(2*n)`
-/

namespace A143443.P14958208724784491101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A028242 (2 * n)

end

end A143443.P14958208724784491101

namespace A143443

/-- `∑[A008683(A028242(2*n))]*A028242(2*n)` -/
def P14958208724784491101.Spec : Prop :=
  ∀ n, P14958208724784491101.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P3077979934698135059

`∑[A008683(A029579(2*n))]*A029579(2*n)`
-/

namespace A143443.P3077979934698135059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A029579 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A029579 (2 * n)

end

end A143443.P3077979934698135059

namespace A143443

/-- `∑[A008683(A029579(2*n))]*A029579(2*n)` -/
def P3077979934698135059.Spec : Prop :=
  ∀ n, P3077979934698135059.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P5906935276019378747

`∑[A008683(A080513(2*n))]*A080513(2*n)`
-/

namespace A143443.P5906935276019378747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A080513 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A080513 (2 * n)

end

end A143443.P5906935276019378747

namespace A143443

/-- `∑[A008683(A080513(2*n))]*A080513(2*n)` -/
def P5906935276019378747.Spec : Prop :=
  ∀ n, P5906935276019378747.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P18399290053874536075

`∑[A008683(A110514(2*n))]*A110514(2*n)`
-/

namespace A143443.P18399290053874536075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A110514 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A110514 (2 * n)

end

end A143443.P18399290053874536075

namespace A143443

/-- `∑[A008683(A110514(2*n))]*A110514(2*n)` -/
def P18399290053874536075.Spec : Prop :=
  ∀ n, P18399290053874536075.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P1036841178685254045

`∑[A008683(A131732(2*n))]*A131732(2*n)`
-/

namespace A143443.P1036841178685254045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A131732 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A131732 (2 * n)

end

end A143443.P1036841178685254045

namespace A143443

/-- `∑[A008683(A131732(2*n))]*A131732(2*n)` -/
def P1036841178685254045.Spec : Prop :=
  ∀ n, P1036841178685254045.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P10170799291745557259

`∑[A008683(A266285(2*n))]*A266285(2*n)`
-/

namespace A143443.P10170799291745557259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A266285 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A266285 (2 * n)

end

end A143443.P10170799291745557259

namespace A143443

/-- `∑[A008683(A266285(2*n))]*A266285(2*n)` -/
def P10170799291745557259.Spec : Prop :=
  ∀ n, P10170799291745557259.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P16377680106346038807

`(n+1)*∑[A181434(n+1)%2]`
-/

namespace A143443.P16377680106346038807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181434 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143443.P16377680106346038807

namespace A143443

/-- `(n+1)*∑[A181434(n+1)%2]` -/
def P16377680106346038807.Spec : Prop :=
  ∀ n, P16377680106346038807.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P12242309448969276773

`(n+1)*∑[A092673(A003961(n+1))]`
-/

namespace A143443.P12242309448969276773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A003961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143443.P12242309448969276773

namespace A143443

/-- `(n+1)*∑[A092673(A003961(n+1))]` -/
def P12242309448969276773.Spec : Prop :=
  ∀ n, P12242309448969276773.a n = A143443 (n + 1)

end A143443

/-! ## A143443.P9615521747888993921

`(n+1)*∑[A369453((n+1)²)]`
-/

namespace A143443.P9615521747888993921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369453 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143443.P9615521747888993921

namespace A143443

/-- `(n+1)*∑[A369453((n+1)²)]` -/
def P9615521747888993921.Spec : Prop :=
  ∀ n, P9615521747888993921.a n = A143443 (n + 1)

end A143443

/-!
# A143444: A054525 * the primes prefaced by 0.

The programs for A143444, the canonical program `A143444.P8311283723443882101` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143444 has offset 1).

The definition of A143444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143444.P8311283723443882101

`A030013(n+1)-round(1/∏{e}[n+1, -#²])`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143444

/-- `A030013(n+1)-round(1/∏{e}[n+1, -#²])` -/
def P8311283723443882101.Spec : Prop :=
  ∀ n, P8311283723443882101.a n = A143444 (n + 1)

theorem P8311283723443882101.correct : P8311283723443882101.Spec := by
  intro n
  simp only [A143444, Nat.add_sub_cancel]

end A143444

/-! ## A143444.P737697583121702585

`A030013(n+1)-A008683(n+1)`
-/

namespace A143444.P737697583121702585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (n + 1) - A008683 (n + 1)

end

end A143444.P737697583121702585

namespace A143444

/-- `A030013(n+1)-A008683(n+1)` -/
def P737697583121702585.Spec : Prop :=
  ∀ n, P737697583121702585.a n = A143444 (n + 1)

end A143444

/-! ## A143444.P17977413160541906714

`A007444(n+1)-A333471(n+1)`
-/

namespace A143444.P17977413160541906714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (n + 1) - A333471 (n + 1)

end

end A143444.P17977413160541906714

namespace A143444

/-- `A007444(n+1)-A333471(n+1)` -/
def P17977413160541906714.Spec : Prop :=
  ∀ n, P17977413160541906714.a n = A143444 (n + 1)

end A143444

/-! ## A143444.P12995679835368509198

`A030013(n+1)+1-A007423(n+1)`
-/

namespace A143444.P12995679835368509198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (n + 1) + (1 - A007423 (n + 1))

end

end A143444.P12995679835368509198

namespace A143444

/-- `A030013(n+1)+1-A007423(n+1)` -/
def P12995679835368509198.Spec : Prop :=
  ∀ n, P12995679835368509198.a n = A143444 (n + 1)

end A143444

/-! ## A143444.P2731297337980319363

`A030013(n+1)-A326814(n+1)%2`
-/

namespace A143444.P2731297337980319363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (n + 1) - Int.tmod (A326814 (n + 1)) 2

end

end A143444.P2731297337980319363

namespace A143444

/-- `A030013(n+1)-A326814(n+1)%2` -/
def P2731297337980319363.Spec : Prop :=
  ∀ n, P2731297337980319363.a n = A143444 (n + 1)

end A143444

/-! ## A143444.P9743614360386274981

`A030013(n+1)-A326937(n+1)%2`
-/

namespace A143444.P9743614360386274981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (n + 1) - Int.tmod (A326937 (n + 1)) 2

end

end A143444.P9743614360386274981

namespace A143444

/-- `A030013(n+1)-A326937(n+1)%2` -/
def P9743614360386274981.Spec : Prop :=
  ∀ n, P9743614360386274981.a n = A143444 (n + 1)

end A143444

/-! ## A143444.P7744917485744729504

`A030013(n+1)-A346234(n+1)%2`
-/

namespace A143444.P7744917485744729504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030013 (n + 1) - Int.tmod (A346234 (n + 1)) 2

end

end A143444.P7744917485744729504

namespace A143444

/-- `A030013(n+1)-A346234(n+1)%2` -/
def P7744917485744729504.Spec : Prop :=
  ∀ n, P7744917485744729504.a n = A143444 (n + 1)

end A143444

/-! ## A143444.P10092273556392738513

`∑{d}[n+1, A008683(#)*A182986((n+1)/#)]`
-/

namespace A143444.P10092273556392738513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A182986 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A143444.P10092273556392738513

namespace A143444

/-- `∑{d}[n+1, A008683(#)*A182986((n+1)/#)]` -/
def P10092273556392738513.Spec : Prop :=
  ∀ n, P10092273556392738513.a n = A143444 (n + 1)

end A143444

/-!
# A143445: Triangle read by rows, A051731 * (A001318 * 0^(n-k)); 1<=k<=n.

The programs for A143445, the canonical program `A143445.P11117581188804912765` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143445 has offset 1).

The definition of A143445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143445.P11117581188804912765

`A001318(A127093(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A143445

/-- `A001318(A127093(n+1))` -/
def P11117581188804912765.Spec : Prop :=
  ∀ n, P11117581188804912765.a n = A143445 (n + 1)

theorem P11117581188804912765.correct : P11117581188804912765.Spec := by
  intro n
  simp only [A143445, Nat.add_sub_cancel]

end A143445

/-! ## A143445.P17564289492367224527

`A001318(A176079(n+1)+1)`
-/

namespace A143445.P17564289492367224527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A176079 (n + 1) + 1).toNat

end

end A143445.P17564289492367224527

namespace A143445

/-- `A001318(A176079(n+1)+1)` -/
def P17564289492367224527.Spec : Prop :=
  ∀ n, P17564289492367224527.a n = A143445 (n + 1)

end A143445

/-! ## A143445.P13147081822803694006

`A309683(3*A127093(n+1))`
-/

namespace A143445.P13147081822803694006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309683 (3 * A127093 (n + 1)).toNat

end

end A143445.P13147081822803694006

namespace A143445

/-- `A309683(3*A127093(n+1))` -/
def P13147081822803694006.Spec : Prop :=
  ∀ n, P13147081822803694006.a n = A143445 (n + 1)

end A143445

/-! ## A143445.P3021861192502212708

`A001318(A002260(n+1)-A173541(n+1))`
-/

namespace A143445.P3021861192502212708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A002260 (n + 1) - A173541 (n + 1)).toNat

end

end A143445.P3021861192502212708

namespace A143445

/-- `A001318(A002260(n+1)-A173541(n+1))` -/
def P3021861192502212708.Spec : Prop :=
  ∀ n, P3021861192502212708.a n = A143445 (n + 1)

end A143445

/-! ## A143445.P15824754399599350163

`A001318(A002260(n+1)*A051731(n+1))`
-/

namespace A143445.P15824754399599350163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A002260 (n + 1) * A051731 (n + 1)).toNat

end

end A143445.P15824754399599350163

namespace A143445

/-- `A001318(A002260(n+1)*A051731(n+1))` -/
def P15824754399599350163.Spec : Prop :=
  ∀ n, P15824754399599350163.a n = A143445 (n + 1)

end A143445

/-! ## A143445.P10670934380785225806

`A001318((A002262(n)+1)*A051731(n+1))`
-/

namespace A143445.P10670934380785225806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 ((A002262 n + 1) * A051731 (n + 1)).toNat

end

end A143445.P10670934380785225806

namespace A143445

/-- `A001318((A002262(n)+1)*A051731(n+1))` -/
def P10670934380785225806.Spec : Prop :=
  ∀ n, P10670934380785225806.a n = A143445 (n + 1)

end A143445

/-! ## A143445.P12283500049472738912

`A001318(A050873(n+1)*A051731(n+1))`
-/

namespace A143445.P12283500049472738912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A050873 (n + 1) * A051731 (n + 1)).toNat

end

end A143445.P12283500049472738912

namespace A143445

/-- `A001318(A050873(n+1)*A051731(n+1))` -/
def P12283500049472738912.Spec : Prop :=
  ∀ n, P12283500049472738912.a n = A143445 (n + 1)

end A143445

/-! ## A143445.P14543297410886553693

`A001318(A051731(n+1)*A112544(n+1))`
-/

namespace A143445.P14543297410886553693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A051731 (n + 1) * A112544 (n + 1)).toNat

end

end A143445.P14543297410886553693

namespace A143445

/-- `A001318(A051731(n+1)*A112544(n+1))` -/
def P14543297410886553693.Spec : Prop :=
  ∀ n, P14543297410886553693.a n = A143445 (n + 1)

end A143445

/-!
# A143446: Triangle read by rows: A000012 * A143424.

The programs for A143446, the canonical program `A143446.P7297161826852171778` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143446 has offset 1).

The definition of A143446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143446.P7297161826852171778

`A059268(n)*A134541(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143446

/-- `A059268(n)*A134541(n+1)` -/
def P7297161826852171778.Spec : Prop :=
  ∀ n, P7297161826852171778.a n = A143446 (n + 1)

theorem P7297161826852171778.correct : P7297161826852171778.Spec := by
  intro n
  simp only [A143446, Nat.add_sub_cancel]

end A143446

/-! ## A143446.P4131379836937637986

`A000079(A002262(n))*A134541(n+1)`
-/

namespace A143446.P4131379836937637986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A134541 (n + 1)

end

end A143446.P4131379836937637986

namespace A143446

/-- `A000079(A002262(n))*A134541(n+1)` -/
def P4131379836937637986.Spec : Prop :=
  ∀ n, P4131379836937637986.a n = A143446 (n + 1)

end A143446

/-!
# A143447: Expansion of 1/(x^k*(1-x-2*x^(k+1))) for k=4.

The programs for A143447, the canonical program `A143447.P14825984408228202474` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143447 has offset 0).

The definition of A143447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143447.P14825984408228202474

`a(n-1)+2*a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A143447

/-- `a(n-1)+2*a(n-5)` -/
def P14825984408228202474.Spec : Prop :=
  ∀ n, (P14825984408228202474.a n : ℤ) = A143447 n

theorem P14825984408228202474.correct : P14825984408228202474.Spec := by
  intro n
  simp only [A143447]

end A143447

/-! ## A143447.P13390253422170098739

`A318777(n+4)`
-/

namespace A143447.P13390253422170098739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318777 (n + 4)

end

end A143447.P13390253422170098739

namespace A143447

/-- `A318777(n+4)` -/
def P13390253422170098739.Spec : Prop :=
  ∀ n, P13390253422170098739.a n = A143447 n

end A143447

/-! ## A143447.P2760154918942918276

`record[A318777(A028242(n))]`
-/

namespace A143447.P2760154918942918276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318777 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143447.P2760154918942918276

namespace A143447

/-- `record[A318777(A028242(n))]` -/
def P2760154918942918276.Spec : Prop :=
  ∀ n, P2760154918942918276.a n = A143447 n

end A143447

/-! ## A143447.P6064832767558073663

`A143453(∑[n+5]+5)`
-/

namespace A143447.P6064832767558073663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A143447.P6064832767558073663

namespace A143447

/-- `A143453(∑[n+5]+5)` -/
def P6064832767558073663.Spec : Prop :=
  ∀ n, P6064832767558073663.a n = A143447 n

end A143447

/-! ## A143447.P13398366167716331961

`record[A193517(A101881(A029579(n)))]`
-/

namespace A143447.P13398366167716331961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A101881 (A029579 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143447.P13398366167716331961

namespace A143447

/-- `record[A193517(A101881(A029579(n)))]` -/
def P13398366167716331961.Spec : Prop :=
  ∀ n, P13398366167716331961.a n = A143447 n

end A143447

/-! ## A143447.P5703983851601435301

`record[A193517(A000096(A032742(n+1)))]`
-/

namespace A143447.P5703983851601435301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143447.P5703983851601435301

namespace A143447

/-- `record[A193517(A000096(A032742(n+1)))]` -/
def P5703983851601435301.Spec : Prop :=
  ∀ n, P5703983851601435301.a n = A143447 n

end A143447

/-!
# A143448: Expansion of 1/(x^k*(1-x-2*x^(k+1))) for k=5.

The programs for A143448, the canonical program `A143448.P3254243809753339265` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143448 has offset 0).

The definition of A143448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143448.P3254243809753339265

`a(n-1)+2*a(n-6)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9, a(5)=11`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A143448

/-- `a(n-1)+2*a(n-6)` -/
def P3254243809753339265.Spec : Prop :=
  ∀ n, (P3254243809753339265.a n : ℤ) = A143448 n

theorem P3254243809753339265.correct : P3254243809753339265.Spec := by
  intro n
  simp only [A143448]

end A143448

/-! ## A143448.P14500057898996554705

`A143453(A055999(n+3))`
-/

namespace A143448.P14500057898996554705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A055999 (n + 3)).toNat

end

end A143448.P14500057898996554705

namespace A143448

/-- `A143453(A055999(n+3))` -/
def P14500057898996554705.Spec : Prop :=
  ∀ n, P14500057898996554705.a n = A143448 n

end A143448

/-! ## A143448.P15877635592058014496

`A143453(Δ[A023551(n+1)])`
-/

namespace A143448.P15877635592058014496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (f1 (n + 1) - f1 n).toNat

end

end A143448.P15877635592058014496

namespace A143448

/-- `A143453(Δ[A023551(n+1)])` -/
def P15877635592058014496.Spec : Prop :=
  ∀ n, P15877635592058014496.a n = A143448 n

end A143448

/-! ## A143448.P8455993215989430164

`A143453(Δ[A026054(n+3)])`
-/

namespace A143448.P8455993215989430164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (f1 (n + 1) - f1 n).toNat

end

end A143448.P8455993215989430164

namespace A143448

/-- `A143453(Δ[A026054(n+3)])` -/
def P8455993215989430164.Spec : Prop :=
  ∀ n, P8455993215989430164.a n = A143448 n

end A143448

/-! ## A143448.P4780822140136291643

`A193518(A000096(n+5))`
-/

namespace A143448.P4780822140136291643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193518 (A000096 (n + 5)).toNat

end

end A143448.P4780822140136291643

namespace A143448

/-- `A193518(A000096(n+5))` -/
def P4780822140136291643.Spec : Prop :=
  ∀ n, P4780822140136291643.a n = A143448 n

end A143448

/-! ## A143448.P6337189890589632826

`A193518(A145018(n+7)-5)`
-/

namespace A143448.P6337189890589632826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193518 (A145018 (n + 7) - 5).toNat

end

end A143448.P6337189890589632826

namespace A143448

/-- `A193518(A145018(n+7)-5)` -/
def P6337189890589632826.Spec : Prop :=
  ∀ n, P6337189890589632826.a n = A143448 n

end A143448

/-! ## A143448.P17071819547820198356

`A193518(-A080956(A020719(n)))`
-/

namespace A143448.P17071819547820198356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193518 (-A080956 (A020719 n).toNat).toNat

end

end A143448.P17071819547820198356

namespace A143448

/-- `A193518(-A080956(A020719(n)))` -/
def P17071819547820198356.Spec : Prop :=
  ∀ n, P17071819547820198356.a n = A143448 n

end A143448

/-! ## A143448.P17445171796035758797

`record[A193518(A000096(A154958(n)))]`
-/

namespace A143448.P17445171796035758797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193518 (A000096 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143448.P17445171796035758797

namespace A143448

/-- `record[A193518(A000096(A154958(n)))]` -/
def P17445171796035758797.Spec : Prop :=
  ∀ n, P17445171796035758797.a n = A143448 n

end A143448

/-!
# A143449: Expansion of 1/(x^k*(1-x-2*x^(k+1))) for k=6.

The programs for A143449, the canonical program `A143449.P3199993395001958040` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143449 has offset 0).

The definition of A143449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143449.P3199993395001958040

`a(n-1)+2*a(n-7)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9, a(5)=11, a(6)=13`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A143449

/-- `a(n-1)+2*a(n-7)` -/
def P3199993395001958040.Spec : Prop :=
  ∀ n, (P3199993395001958040.a n : ℤ) = A143449 n

theorem P3199993395001958040.correct : P3199993395001958040.Spec := by
  intro n
  simp only [A143449]

end A143449

/-! ## A143449.P2559429259411067370

`A143453(n+15+∑[n+6])`
-/

namespace A143449.P2559429259411067370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (n + 15 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143449.P2559429259411067370

namespace A143449

/-- `A143453(n+15+∑[n+6])` -/
def P2559429259411067370.Spec : Prop :=
  ∀ n, P2559429259411067370.a n = A143449 n

end A143449

/-! ## A143449.P1988463104236511029

`or(1, A143453(A052905(n+4)-2))`
-/

namespace A143449.P1988463104236511029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A143453 (A052905 (n + 4) - 2).toNat)

end

end A143449.P1988463104236511029

namespace A143449

/-- `or(1, A143453(A052905(n+4)-2))` -/
def P1988463104236511029.Spec : Prop :=
  ∀ n, P1988463104236511029.a n = A143449 n

end A143449

/-! ## A143449.P8777981489815845308

`lcm(A033999(n), A143453(A052905(n+4)-2))`
-/

namespace A143449.P8777981489815845308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A143453 (A052905 (n + 4) - 2).toNat)

end

end A143449.P8777981489815845308

namespace A143449

/-- `lcm(A033999(n), A143453(A052905(n+4)-2))` -/
def P8777981489815845308.Spec : Prop :=
  ∀ n, (P8777981489815845308.a n : ℤ) = A143449 n

end A143449

/-! ## A143449.P1730609433123073432

`A143453(A052905(n+4)-2)^abs(A057428(n))`
-/

namespace A143449.P1730609433123073432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143453 (A052905 (n + 4) - 2).toNat : ℚ) ^ (|A057428 n| : ℤ)

end

end A143449.P1730609433123073432

namespace A143449

/-- `A143453(A052905(n+4)-2)^abs(A057428(n))` -/
def P1730609433123073432.Spec : Prop :=
  ∀ n, P1730609433123073432.a n = (A143449 n : ℚ)

end A143449

/-! ## A143449.P12035471356521897516

`char[A006370(n)]*A143453(A052905(n+4)-2)`
-/

namespace A143449.P12035471356521897516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A143453 (A052905 (n + 4) - 2).toNat

end

end A143449.P12035471356521897516

namespace A143449

/-- `char[A006370(n)]*A143453(A052905(n+4)-2)` -/
def P12035471356521897516.Spec : Prop :=
  ∀ n, P12035471356521897516.a n = A143449 n

end A143449

/-! ## A143449.P7378228410579511233

`char[A008612(n)]*A143453(A052905(n+4)-2)`
-/

namespace A143449.P7378228410579511233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A143453 (A052905 (n + 4) - 2).toNat

end

end A143449.P7378228410579511233

namespace A143449

/-- `char[A008612(n)]*A143453(A052905(n+4)-2)` -/
def P7378228410579511233.Spec : Prop :=
  ∀ n, P7378228410579511233.a n = A143449 n

end A143449

/-! ## A143449.P6451961946001199569

`char[A026741(n)]*A143453(A052905(n+4)-2)`
-/

namespace A143449.P6451961946001199569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A143453 (A052905 (n + 4) - 2).toNat

end

end A143449.P6451961946001199569

namespace A143449

/-- `char[A026741(n)]*A143453(A052905(n+4)-2)` -/
def P6451961946001199569.Spec : Prop :=
  ∀ n, P6451961946001199569.a n = A143449 n

end A143449

/-! ## A143449.P17627426163127487897

`A143453(A052905(n+4)-2)+A000007(n+1)`
-/

namespace A143449.P17627426163127487897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A052905 (n + 4) - 2).toNat + A000007 (n + 1)

end

end A143449.P17627426163127487897

namespace A143449

/-- `A143453(A052905(n+4)-2)+A000007(n+1)` -/
def P17627426163127487897.Spec : Prop :=
  ∀ n, P17627426163127487897.a n = A143449 n

end A143449

/-! ## A143449.P16303441281015359309

`A143453(A052905(n+4)-2)%A024314(n+1)`
-/

namespace A143449.P16303441281015359309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143453 (A052905 (n + 4) - 2).toNat) (A024314 (n + 1))

end

end A143449.P16303441281015359309

namespace A143449

/-- `A143453(A052905(n+4)-2)%A024314(n+1)` -/
def P16303441281015359309.Spec : Prop :=
  ∀ n, P16303441281015359309.a n = A143449 n

end A143449

/-! ## A143449.P8993555734829669544

`A010215(2*n+1)*A143453(A052905(n+4)-2)`
-/

namespace A143449.P8993555734829669544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010215 (2 * n + 1) * A143453 (A052905 (n + 4) - 2).toNat

end

end A143449.P8993555734829669544

namespace A143449

/-- `A010215(2*n+1)*A143453(A052905(n+4)-2)` -/
def P8993555734829669544.Spec : Prop :=
  ∀ n, P8993555734829669544.a n = A143449 n

end A143449

/-! ## A143449.P7100400878350583763

`A143453(A052905(n+4)-2)+A008683(9*(n+1))`
-/

namespace A143449.P7100400878350583763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A052905 (n + 4) - 2).toNat + A008683 (9 * (n + 1))

end

end A143449.P7100400878350583763

namespace A143449

/-- `A143453(A052905(n+4)-2)+A008683(9*(n+1))` -/
def P7100400878350583763.Spec : Prop :=
  ∀ n, P7100400878350583763.a n = A143449 n

end A143449

/-! ## A143449.P16936451554247031259

`A013613(A057944(n))*A143453(A052905(n+4)-2)`
-/

namespace A143449.P16936451554247031259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013613 (A057944 n).toNat * A143453 (A052905 (n + 4) - 2).toNat

end

end A143449.P16936451554247031259

namespace A143449

/-- `A013613(A057944(n))*A143453(A052905(n+4)-2)` -/
def P16936451554247031259.Spec : Prop :=
  ∀ n, P16936451554247031259.a n = A143449 n

end A143449

/-! ## A143449.P1916028487785051641

`A324656(A064408(n+2))+A143453(A052905(n+4)-2)`
-/

namespace A143449.P1916028487785051641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324656 (A064408 (n + 2)).toNat + A143453 (A052905 (n + 4) - 2).toNat

end

end A143449.P1916028487785051641

namespace A143449

/-- `A324656(A064408(n+2))+A143453(A052905(n+4)-2)` -/
def P1916028487785051641.Spec : Prop :=
  ∀ n, P1916028487785051641.a n = A143449 n

end A143449

/-! ## A143449.P6886898609439868530

`A032742(A020639(n+2))*A143453(A052905(n+4)-2)`
-/

namespace A143449.P6886898609439868530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A020639 (n + 2)).toNat * A143453 (A052905 (n + 4) - 2).toNat

end

end A143449.P6886898609439868530

namespace A143449

/-- `A032742(A020639(n+2))*A143453(A052905(n+4)-2)` -/
def P6886898609439868530.Spec : Prop :=
  ∀ n, P6886898609439868530.a n = A143449 n

end A143449

/-! ## A143449.P4163951983125569894

`A014963(A000217(n+6))*A143453(A052905(n+4)-2)`
-/

namespace A143449.P4163951983125569894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 6)).toNat * A143453 (A052905 (n + 4) - 2).toNat

end

end A143449.P4163951983125569894

namespace A143449

/-- `A014963(A000217(n+6))*A143453(A052905(n+4)-2)` -/
def P4163951983125569894.Spec : Prop :=
  ∀ n, P4163951983125569894.a n = A143449 n

end A143449

/-!
# A143450: Expansion of 1/(x^k*(1-x-2*x^(k+1))) for k=7.

The programs for A143450, the canonical program `A143450.P16904335284547195350` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143450 has offset 0).

The definition of A143450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143450.P16904335284547195350

`a(n-1)+2*a(n-8)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9, a(5)=11, a(6)=13, a(7)=15`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A143450

/-- `a(n-1)+2*a(n-8)` -/
def P16904335284547195350.Spec : Prop :=
  ∀ n, (P16904335284547195350.a n : ℤ) = A143450 n

theorem P16904335284547195350.correct : P16904335284547195350.Spec := by
  intro n
  simp only [A143450]

end A143450

/-! ## A143450.P5272349461990757570

`A143453(A055999(n+5)-2)`
-/

namespace A143450.P5272349461990757570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A055999 (n + 5) - 2).toNat

end

end A143450.P5272349461990757570

namespace A143450

/-- `A143453(A055999(n+5)-2)` -/
def P5272349461990757570.Spec : Prop :=
  ∀ n, P5272349461990757570.a n = A143450 n

end A143450

/-! ## A143450.P1443378319065936680

`A143453(A027379(n+6)-5)`
-/

namespace A143450.P1443378319065936680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A027379 (n + 6) - 5).toNat

end

end A143450.P1443378319065936680

namespace A143450

/-- `A143453(A027379(n+6)-5)` -/
def P1443378319065936680.Spec : Prop :=
  ∀ n, P1443378319065936680.a n = A143450 n

end A143450

/-! ## A143450.P16415917440289789912

`A143453(A000217(n+8)-8)`
-/

namespace A143450.P16415917440289789912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A000217 (n + 8) - 8).toNat

end

end A143450.P16415917440289789912

namespace A143450

/-- `A143453(A000217(n+8)-8)` -/
def P16415917440289789912.Spec : Prop :=
  ∀ n, P16415917440289789912.a n = A143450 n

end A143450

/-! ## A143450.P9236996790238169621

`A143453(n+5+A052905(n+4))`
-/

namespace A143450.P9236996790238169621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 ((n + 5 : ℤ) + A052905 (n + 4)).toNat

end

end A143450.P9236996790238169621

namespace A143450

/-- `A143453(n+5+A052905(n+4))` -/
def P9236996790238169621.Spec : Prop :=
  ∀ n, P9236996790238169621.a n = A143450 n

end A143450

/-! ## A143450.P3327256047353504019

`A143453(A167499(n+3)+A016813(n+3))`
-/

namespace A143450.P3327256047353504019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A167499 (n + 3) + A016813 (n + 3)).toNat

end

end A143450.P3327256047353504019

namespace A143450

/-- `A143453(A167499(n+3)+A016813(n+3))` -/
def P3327256047353504019.Spec : Prop :=
  ∀ n, P3327256047353504019.a n = A143450 n

end A143450

/-! ## A143450.P615865140827048406

`A143453(A046691(n+5)-A001489(n+4))`
-/

namespace A143450.P615865140827048406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A046691 (n + 5) - A001489 (n + 4)).toNat

end

end A143450.P615865140827048406

namespace A143450

/-- `A143453(A046691(n+5)-A001489(n+4))` -/
def P615865140827048406.Spec : Prop :=
  ∀ n, P615865140827048406.a n = A143450 n

end A143450

/-!
# A143451: Expansion of 1/(x^k*(1-x-2*x^(k+1))) for k=8.

The programs for A143451, the canonical program `A143451.P9982836323594047119` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143451 has offset 0).

The definition of A143451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143451.P9982836323594047119

`a(n-1)+2*a(n-9)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9, a(5)=11, a(6)=13, a(7)=15, a(8)=17`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A143451

/-- `a(n-1)+2*a(n-9)` -/
def P9982836323594047119.Spec : Prop :=
  ∀ n, (P9982836323594047119.a n : ℤ) = A143451 n

theorem P9982836323594047119.correct : P9982836323594047119.Spec := by
  intro n
  simp only [A143451]

end A143451

/-! ## A143451.P13062759164614973352

`A143453(A055999(n+6)-3)`
-/

namespace A143451.P13062759164614973352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A055999 (n + 6) - 3).toNat

end

end A143451.P13062759164614973352

namespace A143451

/-- `A143453(A055999(n+6)-3)` -/
def P13062759164614973352.Spec : Prop :=
  ∀ n, P13062759164614973352.a n = A143451 n

end A143451

/-! ## A143451.P10448842991853510448

`A143453(A000217(n+9)-9)`
-/

namespace A143451.P10448842991853510448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A000217 (n + 9) - 9).toNat

end

end A143451.P10448842991853510448

namespace A143451

/-- `A143453(A000217(n+9)-9)` -/
def P10448842991853510448.Spec : Prop :=
  ∀ n, P10448842991853510448.a n = A143451 n

end A143451

/-! ## A143451.P16594094329395816999

`A143453(n+5+A052905(n+5))`
-/

namespace A143451.P16594094329395816999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 ((n + 5 : ℤ) + A052905 (n + 5)).toNat

end

end A143451.P16594094329395816999

namespace A143451

/-- `A143453(n+5+A052905(n+5))` -/
def P16594094329395816999.Spec : Prop :=
  ∀ n, P16594094329395816999.a n = A143451 n

end A143451

/-! ## A143451.P5173281297548747495

`A143453(A027379(n+6)-A001489(n+3))`
-/

namespace A143451.P5173281297548747495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A027379 (n + 6) - A001489 (n + 3)).toNat

end

end A143451.P5173281297548747495

namespace A143451

/-- `A143453(A027379(n+6)-A001489(n+3))` -/
def P5173281297548747495.Spec : Prop :=
  ∀ n, P5173281297548747495.a n = A143451 n

end A143451

/-! ## A143451.P2323655992082541773

`A143453(A046691(n+6)-A001489(n+4))`
-/

namespace A143451.P2323655992082541773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A046691 (n + 6) - A001489 (n + 4)).toNat

end

end A143451.P2323655992082541773

namespace A143451

/-- `A143453(A046691(n+6)-A001489(n+4))` -/
def P2323655992082541773.Spec : Prop :=
  ∀ n, P2323655992082541773.a n = A143451 n

end A143451

/-! ## A143451.P1013412106877882521

`A143453(A002378(n+7)-A167499(n+4))`
-/

namespace A143451.P1013412106877882521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A002378 (n + 7) - A167499 (n + 4)).toNat

end

end A143451.P1013412106877882521

namespace A143451

/-- `A143453(A002378(n+7)-A167499(n+4))` -/
def P1013412106877882521.Spec : Prop :=
  ∀ n, P1013412106877882521.a n = A143451 n

end A143451

/-!
# A143452: Expansion of 1/(x^k*(1-x-2*x^(k+1))) for k=9.

The programs for A143452, the canonical program `A143452.P11058570766975261578` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143452 has offset 0).

The definition of A143452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143452.P11058570766975261578

`a(n-1)+2*a(n-10)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9, a(5)=11, a(6)=13, a(7)=15, a(8)=17, a(9)=19`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A143452

/-- `a(n-1)+2*a(n-10)` -/
def P11058570766975261578.Spec : Prop :=
  ∀ n, (P11058570766975261578.a n : ℤ) = A143452 n

theorem P11058570766975261578.correct : P11058570766975261578.Spec := by
  intro n
  simp only [A143452]

end A143452

/-! ## A143452.P4218353889223241467

`A143453(eq[8, A116598(n)])`
-/

namespace A143452.P4218353889223241467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143452.P4218353889223241467

namespace A143452

/-- `A143453(eq[8, A116598(n)])` -/
def P4218353889223241467.Spec : Prop :=
  ∀ n, P4218353889223241467.a n = A143452 n

end A143452

/-! ## A143452.P5535240506794423866

`A143453(A000217(n+10)-10)`
-/

namespace A143452.P5535240506794423866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A000217 (n + 10) - 10).toNat

end

end A143452.P5535240506794423866

namespace A143452

/-- `A143453(A000217(n+10)-10)` -/
def P5535240506794423866.Spec : Prop :=
  ∀ n, P5535240506794423866.a n = A143452 n

end A143452

/-! ## A143452.P1850119641329150817

`A143453(n+5+A052905(n+6))`
-/

namespace A143452.P1850119641329150817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 ((n + 5 : ℤ) + A052905 (n + 6)).toNat

end

end A143452.P1850119641329150817

namespace A143452

/-- `A143453(n+5+A052905(n+6))` -/
def P1850119641329150817.Spec : Prop :=
  ∀ n, P1850119641329150817.a n = A143452 n

end A143452

/-! ## A143452.P16668987871482504913

`A143453(A167499(n+7)+A103517(n+1))`
-/

namespace A143452.P16668987871482504913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A167499 (n + 7) + A103517 (n + 1)).toNat

end

end A143452.P16668987871482504913

namespace A143452

/-- `A143453(A167499(n+7)+A103517(n+1))` -/
def P16668987871482504913.Spec : Prop :=
  ∀ n, P16668987871482504913.a n = A143452 n

end A143452

/-! ## A143452.P15668817247214422930

`A143453(A027379(n+6)+A020739(n+3))`
-/

namespace A143452.P15668817247214422930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A027379 (n + 6) + A020739 (n + 3)).toNat

end

end A143452.P15668817247214422930

namespace A143452

/-- `A143453(A027379(n+6)+A020739(n+3))` -/
def P15668817247214422930.Spec : Prop :=
  ∀ n, P15668817247214422930.a n = A143452 n

end A143452

/-! ## A143452.P14801619975622023676

`A143453(A027379(n+7)-A001489(n+3))`
-/

namespace A143452.P14801619975622023676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A027379 (n + 7) - A001489 (n + 3)).toNat

end

end A143452.P14801619975622023676

namespace A143452

/-- `A143453(A027379(n+7)-A001489(n+3))` -/
def P14801619975622023676.Spec : Prop :=
  ∀ n, P14801619975622023676.a n = A143452 n

end A143452

/-! ## A143452.P4430373377716765355

`A143453(A046691(n+7)-A001489(n+4))`
-/

namespace A143452.P4430373377716765355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A046691 (n + 7) - A001489 (n + 4)).toNat

end

end A143452.P4430373377716765355

namespace A143452

/-- `A143453(A046691(n+7)-A001489(n+4))` -/
def P4430373377716765355.Spec : Prop :=
  ∀ n, P4430373377716765355.a n = A143452 n

end A143452

/-! ## A143452.P6512780244043783578

`A143453(A008795(2*(n+4))+A008706(n+6))`
-/

namespace A143452.P6512780244043783578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 (A008795 (2 * (n + 4)) + A008706 (n + 6)).toNat

end

end A143452.P6512780244043783578

namespace A143452

/-- `A143453(A008795(2*(n+4))+A008706(n+6))` -/
def P6512780244043783578.Spec : Prop :=
  ∀ n, P6512780244043783578.a n = A143452 n

end A143452

/-!
# A143453: Square array A(n,k) of numbers of length n ternary words with at least k 0-digits between any other digits (n,k >= 0), read by antidiagonals.

The programs for A143453, there is no canonical definition to state claims against.
-/

/-! ## A143453.P9184469896132997434

`A064988(A141539(n))+A000007(A125892(n+1))`
-/

namespace A143453.P9184469896132997434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A141539 n).toNat + A000007 (A125892 (n + 1)).toNat

end

end A143453.P9184469896132997434

/-! ## A143453.P18034838547039313538

`A064988(A141539(n))+A000007(A204991(n+1))`
-/

namespace A143453.P18034838547039313538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A141539 n).toNat + A000007 (A204991 (n + 1)).toNat

end

end A143453.P18034838547039313538

/-! ## A143453.P7485880000883948318

`A001222(A117387(n))*A064988(A141539(n))`
-/

namespace A143453.P7485880000883948318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A117387 n).toNat * A064988 (A141539 n).toNat

end

end A143453.P7485880000883948318

/-! ## A143453.P362039666532891660

`A064988(A141539(n))^A001221(A000079(n))`
-/

namespace A143453.P362039666532891660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064988 (A141539 n).toNat : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A143453.P362039666532891660

/-! ## A143453.P17239749612381817812

`A064988(A141539(n))%A000040(A002445(n))`
-/

namespace A143453.P17239749612381817812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064988 (A141539 n).toNat) (A000040 (A002445 n).toNat)

end

end A143453.P17239749612381817812

/-!
# A143454: Expansion of 1/(x^k*(1 - x - 3*x^(k+1))) for k=3.

The programs for A143454, the canonical program `A143454.P6317735602270532277` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143454 has offset 0).

The definition of A143454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143454.P6317735602270532277

`a(n-1)+3*a(n-4)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=10`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A143454

/-- `a(n-1)+3*a(n-4)` -/
def P6317735602270532277.Spec : Prop :=
  ∀ n, (P6317735602270532277.a n : ℤ) = A143454 n

theorem P6317735602270532277.correct : P6317735602270532277.Spec := by
  intro n
  simp only [A143454]

end A143454

/-! ## A143454.P779707645910985243

`A318774(n+3)`
-/

namespace A143454.P779707645910985243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318774 (n + 3)

end

end A143454.P779707645910985243

namespace A143454

/-- `A318774(n+3)` -/
def P779707645910985243.Spec : Prop :=
  ∀ n, P779707645910985243.a n = A143454 n

end A143454

/-! ## A143454.P5280170397826805628

`record[A318774(A008615(n))]`
-/

namespace A143454.P5280170397826805628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318774 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143454.P5280170397826805628

namespace A143454

/-- `record[A318774(A008615(n))]` -/
def P5280170397826805628.Spec : Prop :=
  ∀ n, P5280170397826805628.a n = A143454 n

end A143454

/-! ## A143454.P6217596770911291069

`record[A318774(A142150(n))]`
-/

namespace A143454.P6217596770911291069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318774 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143454.P6217596770911291069

namespace A143454

/-- `record[A318774(A142150(n))]` -/
def P6217596770911291069.Spec : Prop :=
  ∀ n, P6217596770911291069.a n = A143454 n

end A143454

/-! ## A143454.P1725957300848986579

`record[A318774(A328399(n))]`
-/

namespace A143454.P1725957300848986579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318774 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143454.P1725957300848986579

namespace A143454

/-- `record[A318774(A328399(n))]` -/
def P1725957300848986579.Spec : Prop :=
  ∀ n, P1725957300848986579.a n = A143454 n

end A143454

/-! ## A143454.P1274661384099797855

`A143461(∑[n+4]+2)`
-/

namespace A143454.P1274661384099797855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A143454.P1274661384099797855

namespace A143454

/-- `A143461(∑[n+4]+2)` -/
def P1274661384099797855.Spec : Prop :=
  ∀ n, P1274661384099797855.a n = A143454 n

end A143454

/-!
# A143455: Expansion of 1/(x^k*(1-x-3*x^(k+1))) for k=4.

The programs for A143455, there is no canonical definition to state claims against.
-/

/-! ## A143455.P7915062604132421531

`A143461(A052905(n+2))`
-/

namespace A143455.P7915062604132421531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A052905 (n + 2)).toNat

end

end A143455.P7915062604132421531

/-! ## A143455.P12936927251398233200

`A143461(A055998(n+2)+n+3)`
-/

namespace A143455.P12936927251398233200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A055998 (n + 2) + (n + 3 : ℤ)).toNat

end

end A143455.P12936927251398233200

/-! ## A143455.P12960968536985305488

`A143461(A133263(n+9)-A016813(n+9))`
-/

namespace A143455.P12960968536985305488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A133263 (n + 9) - A016813 (n + 9)).toNat

end

end A143455.P12960968536985305488

/-! ## A143455.P907311323038017745

`A143461(eq[4, A025581(n)])`
-/

namespace A143455.P907311323038017745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143455.P907311323038017745

/-! ## A143455.P6088994495292912214

`A193517(A034856(n+5))`
-/

namespace A143455.P6088994495292912214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A034856 (n + 5)).toNat

end

end A143455.P6088994495292912214

/-! ## A143455.P15917058766655477010

`A193517(A055998(n+4)+1)`
-/

namespace A143455.P15917058766655477010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A055998 (n + 4) + 1).toNat

end

end A143455.P15917058766655477010

/-! ## A143455.P18006763219090086883

`A193517(A000096(n+5)-1)`
-/

namespace A143455.P18006763219090086883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A000096 (n + 5) - 1).toNat

end

end A143455.P18006763219090086883

/-! ## A143455.P8536743146698793885

`A193517(A000217(n+5)+n+4)`
-/

namespace A143455.P8536743146698793885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A000217 (n + 5) + (n + 4 : ℤ)).toNat

end

end A143455.P8536743146698793885

/-! ## A143455.P10471322092197324434

`A193517(lt[A193515(n+3), A193518(n+2)])`
-/

namespace A143455.P10471322092197324434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193515 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193518 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A143455.P10471322092197324434

/-!
# A143456: Expansion of 1/(x^k*(1-x-3*x^(k+1))) for k=5.

The programs for A143456, there is no canonical definition to state claims against.
-/

/-! ## A143456.P16821241111679663547

`A143461(Δ[A023551(n+1)])`
-/

namespace A143456.P16821241111679663547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (f1 (n + 1) - f1 n).toNat

end

end A143456.P16821241111679663547

/-! ## A143456.P5758684069854609262

`A143461(Δ[A026054(n+3)])`
-/

namespace A143456.P5758684069854609262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (f1 (n + 1) - f1 n).toNat

end

end A143456.P5758684069854609262

/-! ## A143456.P14854619789962395505

`A143461(A027379(n+4)-3)`
-/

namespace A143456.P14854619789962395505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A027379 (n + 4) - 3).toNat

end

end A143456.P14854619789962395505

/-! ## A143456.P1748877006059976911

`A143461(A055998(n+10)-A008458(n+10))`
-/

namespace A143456.P1748877006059976911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A055998 (n + 10) - A008458 (n + 10)).toNat

end

end A143456.P1748877006059976911

/-! ## A143456.P1120759178226642506

`A193518(A034856(n+6))`
-/

namespace A143456.P1120759178226642506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193518 (A034856 (n + 6)).toNat

end

end A143456.P1120759178226642506

/-! ## A143456.P6668909854835178771

`A193518(A046691(n+5)+2)`
-/

namespace A143456.P6668909854835178771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193518 (A046691 (n + 5) + 2).toNat

end

end A143456.P6668909854835178771

/-! ## A143456.P5074851738355969748

`record[A193518(A034856(A133310(n)))]`
-/

namespace A143456.P5074851738355969748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193518 (A034856 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143456.P5074851738355969748

/-! ## A143456.P4917767989102314691

`record[A193518(A034856(A154958(n)))]`
-/

namespace A143456.P4917767989102314691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193518 (A034856 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143456.P4917767989102314691

/-!
# A143457: Expansion of 1/(x^k*(1-x-3*x^(k+1))) for k=6.

The programs for A143457, there is no canonical definition to state claims against.
-/

/-! ## A143457.P3084761031573994962

`A143461(A055999(n+4)-1)`
-/

namespace A143457.P3084761031573994962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A055999 (n + 4) - 1).toNat

end

end A143457.P3084761031573994962

/-! ## A143457.P1701574270519726210

`A143461(A052905(n+4)-2)`
-/

namespace A143457.P1701574270519726210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A052905 (n + 4) - 2).toNat

end

end A143457.P1701574270519726210

/-! ## A143457.P17670487127232958479

`A143461(A000217(n+7)-7)`
-/

namespace A143457.P17670487127232958479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A000217 (n + 7) - 7).toNat

end

end A143457.P17670487127232958479

/-! ## A143457.P552602006465877491

`A143461(Δ[A023551(n+2)]-1)`
-/

namespace A143457.P552602006465877491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (f1 (n + 1) - f1 n - 1).toNat

end

end A143457.P552602006465877491

/-! ## A143457.P10049026190741823748

`A143461(Δ[A026054(n+4)]-1)`
-/

namespace A143457.P10049026190741823748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (f1 (n + 1) - f1 n - 1).toNat

end

end A143457.P10049026190741823748

/-! ## A143457.P12953020499453037250

`A143461(A055998(n+4)+n+3)`
-/

namespace A143457.P12953020499453037250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A055998 (n + 4) + (n + 3 : ℤ)).toNat

end

end A143457.P12953020499453037250

/-! ## A143457.P10863720138384940934

`A143461(A000124(n+6)+n-1)`
-/

namespace A143457.P10863720138384940934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A143457.P10863720138384940934

/-! ## A143457.P11692951815129095052

`A143461(A133263(n+1)+A008458(n+3))`
-/

namespace A143457.P11692951815129095052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A133263 (n + 1) + A008458 (n + 3)).toNat

end

end A143457.P11692951815129095052

/-!
# A143458: Expansion of 1/(x^k*(1-x-3*x^(k+1))) for k=7.

The programs for A143458, the canonical program `A143458.P16503020875395749549` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143458 has offset 0).

The definition of A143458 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143458.P16503020875395749549

`a(n-1)+3*a(n-8)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=10, a(4)=13, a(5)=16, a(6)=19, a(7)=22`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A143458

/-- `a(n-1)+3*a(n-8)` -/
def P16503020875395749549.Spec : Prop :=
  ∀ n, (P16503020875395749549.a n : ℤ) = A143458 n

theorem P16503020875395749549.correct : P16503020875395749549.Spec := by
  intro n
  simp only [A143458]

end A143458

/-! ## A143458.P9096433590952168927

`A143461(A000217(n+8)-8)`
-/

namespace A143458.P9096433590952168927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A000217 (n + 8) - 8).toNat

end

end A143458.P9096433590952168927

namespace A143458

/-- `A143461(A000217(n+8)-8)` -/
def P9096433590952168927.Spec : Prop :=
  ∀ n, P9096433590952168927.a n = A143458 n

end A143458

/-! ## A143458.P14767443074967275670

`A143461(A055998(n+5)+n+3)`
-/

namespace A143458.P14767443074967275670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A055998 (n + 5) + (n + 3 : ℤ)).toNat

end

end A143458.P14767443074967275670

namespace A143458

/-- `A143461(A055998(n+5)+n+3)` -/
def P14767443074967275670.Spec : Prop :=
  ∀ n, P14767443074967275670.a n = A143458 n

end A143458

/-! ## A143458.P1027268655626120763

`A143461(A167499(n+3)+A016813(n+3))`
-/

namespace A143458.P1027268655626120763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A167499 (n + 3) + A016813 (n + 3)).toNat

end

end A143458.P1027268655626120763

namespace A143458

/-- `A143461(A167499(n+3)+A016813(n+3))` -/
def P1027268655626120763.Spec : Prop :=
  ∀ n, P1027268655626120763.a n = A143458 n

end A143458

/-! ## A143458.P12546437642349528511

`A143461(eq[7, A025581(n)])`
-/

namespace A143458.P12546437642349528511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143458.P12546437642349528511

namespace A143458

/-- `A143461(eq[7, A025581(n)])` -/
def P12546437642349528511.Spec : Prop :=
  ∀ n, P12546437642349528511.a n = A143458 n

end A143458

/-! ## A143458.P13544881198112173115

`A143461(eq[8, A004736(n+1)])`
-/

namespace A143458.P13544881198112173115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143458.P13544881198112173115

namespace A143458

/-- `A143461(eq[8, A004736(n+1)])` -/
def P13544881198112173115.Spec : Prop :=
  ∀ n, P13544881198112173115.a n = A143458 n

end A143458

/-! ## A143458.P12835136479174105124

`record[A143461(n)^A070109(A004736(n+1)+4)]`
-/

namespace A143458.P12835136479174105124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143461 n : ℚ) ^ (A070109 (A004736 (n + 1) + 4).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A143458.P12835136479174105124

namespace A143458

/-- `record[A143461(n)^A070109(A004736(n+1)+4)]` -/
def P12835136479174105124.Spec : Prop :=
  ∀ n, P12835136479174105124.a n = (A143458 n : ℚ)

end A143458

/-!
# A143459: Expansion of 1/(x^k*(1-x-3*x^(k+1))) for k=8.

The programs for A143459, there is no canonical definition to state claims against.
-/

/-! ## A143459.P16014755139275410921

`A143461(A000217(n+9)-9)`
-/

namespace A143459.P16014755139275410921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A000217 (n + 9) - 9).toNat

end

end A143459.P16014755139275410921

/-! ## A143459.P14500543403198849661

`A143461(A161680(n+10)-9)`
-/

namespace A143459.P14500543403198849661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A161680 (n + 10) - 9).toNat

end

end A143459.P14500543403198849661

/-! ## A143459.P721500580161402208

`A143461(A000096(n+7)+n+1)`
-/

namespace A143459.P721500580161402208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A143459.P721500580161402208

/-! ## A143459.P3500399974067627106

`A143461(A055998(n+6)+n+3)`
-/

namespace A143459.P3500399974067627106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A055998 (n + 6) + (n + 3 : ℤ)).toNat

end

end A143459.P3500399974067627106

/-! ## A143459.P17196165554020527943

`A143461(A000124(n+8)-A024000(n))`
-/

namespace A143459.P17196165554020527943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A000124 (n + 8) - A024000 n).toNat

end

end A143459.P17196165554020527943

/-!
# A143460: Expansion of 1/(x^k*(1-x-3*x^(k+1))) for k=9.

The programs for A143460, there is no canonical definition to state claims against.
-/

/-! ## A143460.P13031549923706303884

`A143461(A000217(n+10)-10)`
-/

namespace A143460.P13031549923706303884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A000217 (n + 10) - 10).toNat

end

end A143460.P13031549923706303884

/-! ## A143460.P15962059070255662530

`A143461(A000096(n+8)+n+1)`
-/

namespace A143460.P15962059070255662530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A000096 (n + 8) + (n + 1 : ℤ)).toNat

end

end A143460.P15962059070255662530

/-! ## A143460.P11711342950047576781

`A143461(A055998(n+7)+n+3)`
-/

namespace A143460.P11711342950047576781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A055998 (n + 7) + (n + 3 : ℤ)).toNat

end

end A143460.P11711342950047576781

/-! ## A143460.P15731721433876487333

`A143461(A167499(n+3)+A008458(n+5))`
-/

namespace A143460.P15731721433876487333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (A167499 (n + 3) + A008458 (n + 5)).toNat

end

end A143460.P15731721433876487333

/-! ## A143460.P15199937082527701362

`A143461(eq[10, A004736(n+1)])`
-/

namespace A143460.P15199937082527701362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A143460.P15199937082527701362

/-!
# A143461: Square array A(n,k) of numbers of length n quaternary words with at least k 0-digits between any other digits (n,k >= 0), read by antidiagonals.

The programs for A143461, there is no canonical definition to state claims against.
-/

/-! ## A143461.P9098238626230381815

`A153883(A143453(n))`
-/

namespace A143461.P9098238626230381815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 (A143453 n).toNat

end

end A143461.P9098238626230381815

/-! ## A143461.P7951056274804427418

`A059268(n)²%A231570(A280412(n))`
-/

namespace A143461.P7951056274804427418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059268 n ^ 2) (A231570 (A280412 n).toNat)

end

end A143461.P7951056274804427418

/-! ## A143461.P8130347709493230079

`A051049(A292477(n)%A103044(n+1))`
-/

namespace A143461.P8130347709493230079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 (Int.tmod (A292477 n) (A103044 (n + 1))).toNat

end

end A143461.P8130347709493230079

/-! ## A143461.P414975939739599629

`A203647(n+1)²%A231570(A280412(n))`
-/

namespace A143461.P414975939739599629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203647 (n + 1) ^ 2) (A231570 (A280412 n).toNat)

end

end A143461.P414975939739599629

/-!
# A143462: Expansion of 1/(1 + 4*x + 8*x^2).

The programs for A143462, the canonical program `A143462.P14315216617971000723` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143462 has offset 0).

The definition of A143462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143462.P14315216617971000723

`A146559(3*n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A143462

/-- `A146559(3*n+1)` -/
def P14315216617971000723.Spec : Prop :=
  ∀ n, P14315216617971000723.a n = A143462 n

theorem P14315216617971000723.correct : P14315216617971000723.Spec := by
  intro n
  simp only [A143462]

end A143462

/-! ## A143462.P8679286163932808058

`2^n*A108520(n)`
-/

namespace A143462.P8679286163932808058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A108520 n

end

end A143462.P8679286163932808058

namespace A143462

/-- `2^n*A108520(n)` -/
def P8679286163932808058.Spec : Prop :=
  ∀ n, P8679286163932808058.a n = A143462 n

end A143462

/-! ## A143462.P13274623666283428492

`(-2)^n*A099087(n)`
-/

namespace A143462.P13274623666283428492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A099087 n

end

end A143462.P13274623666283428492

namespace A143462

/-- `(-2)^n*A099087(n)` -/
def P13274623666283428492.Spec : Prop :=
  ∀ n, P13274623666283428492.a n = A143462 n

end A143462

/-! ## A143462.P10267841818658255615

`2^n*∑[A078069(n)]`
-/

namespace A143462.P10267841818658255615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143462.P10267841818658255615

namespace A143462

/-- `2^n*∑[A078069(n)]` -/
def P10267841818658255615.Spec : Prop :=
  ∀ n, P10267841818658255615.a n = A143462 n

end A143462

/-! ## A143462.P16296132747731618316

`A009545(3*(n+1))/2`
-/

namespace A143462.P16296132747731618316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009545 (3 * (n + 1)) : ℚ) / 2

end

end A143462.P16296132747731618316

namespace A143462

/-- `A009545(3*(n+1))/2` -/
def P16296132747731618316.Spec : Prop :=
  ∀ n, P16296132747731618316.a n = (A143462 n : ℚ)

end A143462

/-! ## A143462.P5358744454794461634

`(-2)^n*A009545(n+1)`
-/

namespace A143462.P5358744454794461634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * A009545 (n + 1)

end

end A143462.P5358744454794461634

namespace A143462

/-- `(-2)^n*A009545(n+1)` -/
def P5358744454794461634.Spec : Prop :=
  ∀ n, P5358744454794461634.a n = A143462 n

end A143462

/-! ## A143462.P15013271182127578781

`2^(n-1)*A009116(n+3)`
-/

namespace A143462.P15013271182127578781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A009116 (n + 3) : ℚ)

end

end A143462.P15013271182127578781

namespace A143462

/-- `2^(n-1)*A009116(n+3)` -/
def P15013271182127578781.Spec : Prop :=
  ∀ n, P15013271182127578781.a n = (A143462 n : ℚ)

end A143462

/-! ## A143462.P3863592333304915791

`A099087(n)*A122803(n)`
-/

namespace A143462.P3863592333304915791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n * A122803 n

end

end A143462.P3863592333304915791

namespace A143462

/-- `A099087(n)*A122803(n)` -/
def P3863592333304915791.Spec : Prop :=
  ∀ n, P3863592333304915791.a n = A143462 n

end A143462

/-! ## A143462.P13085719395508691789

`∑[A078069(n)]*A000079(n)`
-/

namespace A143462.P13085719395508691789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A143462.P13085719395508691789

namespace A143462

/-- `∑[A078069(n)]*A000079(n)` -/
def P13085719395508691789.Spec : Prop :=
  ∀ n, P13085719395508691789.a n = A143462 n

end A143462

/-! ## A143462.P6225178570213255835

`A009545(n+1)*A122803(n)`
-/

namespace A143462.P6225178570213255835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1) * A122803 n

end

end A143462.P6225178570213255835

namespace A143462

/-- `A009545(n+1)*A122803(n)` -/
def P6225178570213255835.Spec : Prop :=
  ∀ n, P6225178570213255835.a n = A143462 n

end A143462

/-! ## A143462.P11830104782122814902

`A009545(n+1)*A077966(2*n)`
-/

namespace A143462.P11830104782122814902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1) * A077966 (2 * n)

end

end A143462.P11830104782122814902

namespace A143462

/-- `A009545(n+1)*A077966(2*n)` -/
def P11830104782122814902.Spec : Prop :=
  ∀ n, P11830104782122814902.a n = A143462 n

end A143462

/-! ## A143462.P9107005559024283855

`A108520(n)*A131572(2*n+1)`
-/

namespace A143462.P9107005559024283855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n * A131572 (2 * n + 1)

end

end A143462.P9107005559024283855

namespace A143462

/-- `A108520(n)*A131572(2*n+1)` -/
def P9107005559024283855.Spec : Prop :=
  ∀ n, P9107005559024283855.a n = A143462 n

end A143462

/-! ## A143462.P5075184543125309159

`A009545(n+1)*A117575(2*n+1)`
-/

namespace A143462.P5075184543125309159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1) * A117575 (2 * n + 1)

end

end A143462.P5075184543125309159

namespace A143462

/-- `A009545(n+1)*A117575(2*n+1)` -/
def P5075184543125309159.Spec : Prop :=
  ∀ n, P5075184543125309159.a n = A143462 n

end A143462

/-! ## A143462.P1896010238403642317

`A108520(n)+A000225(n)*A108520(n)`
-/

namespace A143462.P1896010238403642317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n + A000225 n * A108520 n

end

end A143462.P1896010238403642317

namespace A143462

/-- `A108520(n)+A000225(n)*A108520(n)` -/
def P1896010238403642317.Spec : Prop :=
  ∀ n, P1896010238403642317.a n = A143462 n

end A143462

/-! ## A143462.P975103570946536283

`A054354(A054353(n+1))*A190966(n+1)`
-/

namespace A143462.P975103570946536283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A054353 (n + 1)).toNat * A190966 (n + 1)

end

end A143462.P975103570946536283

namespace A143462

/-- `A054354(A054353(n+1))*A190966(n+1)` -/
def P975103570946536283.Spec : Prop :=
  ∀ n, P975103570946536283.a n = A143462 n

end A143462

/-! ## A143462.P7388198772928959710

`(A090132(n+1)+A090132(n))*A000079(n)`
-/

namespace A143462.P7388198772928959710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090132 (n + 1) + A090132 n) * A000079 n

end

end A143462.P7388198772928959710

namespace A143462

/-- `(A090132(n+1)+A090132(n))*A000079(n)` -/
def P7388198772928959710.Spec : Prop :=
  ∀ n, P7388198772928959710.a n = A143462 n

end A143462

/-! ## A143462.P3430788771266985278

`A108520(n)-A009545(n+1)*A225883(n)`
-/

namespace A143462.P3430788771266985278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n - A009545 (n + 1) * A225883 n

end

end A143462.P3430788771266985278

namespace A143462

/-- `A108520(n)-A009545(n+1)*A225883(n)` -/
def P3430788771266985278.Spec : Prop :=
  ∀ n, P3430788771266985278.a n = A143462 n

end A143462

/-! ## A143462.P836035863287509578

`A054354(∑[A000002(n+1)])*A190966(n+1)`
-/

namespace A143462.P836035863287509578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A190966 (n + 1)

end

end A143462.P836035863287509578

namespace A143462

/-- `A054354(∑[A000002(n+1)])*A190966(n+1)` -/
def P836035863287509578.Spec : Prop :=
  ∀ n, P836035863287509578.a n = A143462 n

end A143462

/-! ## A143462.P9784120004041831791

`(A090132(n+1)+A090132(n))*A131577(n+1)`
-/

namespace A143462.P9784120004041831791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090132 (n + 1) + A090132 n) * A131577 (n + 1)

end

end A143462.P9784120004041831791

namespace A143462

/-- `(A090132(n+1)+A090132(n))*A131577(n+1)` -/
def P9784120004041831791.Spec : Prop :=
  ∀ n, P9784120004041831791.a n = A143462 n

end A143462

/-!
# A143463: Number of multiple hierarchies for n labeled elements.

The programs for A143463, there is no canonical definition to state claims against.
-/

/-! ## A143463.P5790240221639179952

`∑[A186646(C(4*n, n))+n]`
-/

namespace A143463.P5790240221639179952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186646 (Nat.choose (4 * n) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143463.P5790240221639179952

/-!
# A143464: Catalan transform of the Pell sequence.

The programs for A143464, there is no canonical definition to state claims against.
-/

/-! ## A143464.P10634536287453586144

`A091972(A119376(n))`
-/

namespace A143464.P10634536287453586144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091972 (A119376 n).toNat

end

end A143464.P10634536287453586144

/-! ## A143464.P4298871488087443274

`A092278(A150008(n+1))`
-/

namespace A143464.P4298871488087443274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092278 (A150008 (n + 1)).toNat

end

end A143464.P4298871488087443274

/-! ## A143464.P7488545817566467914

`A103221(or(1, A119376(n)))`
-/

namespace A143464.P7488545817566467914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.lor 1 (A119376 n)).toNat

end

end A143464.P7488545817566467914

/-!
# A143466: Odious count triangle, T(n,k) = A010060(n) * A010060(k); 1 <= k <= n.

The programs for A143466, there is no canonical definition to state claims against.
-/

/-! ## A143466.P4681920995637061064

`A316569(A051173(n+1)²)`
-/

namespace A143466.P4681920995637061064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 (A051173 (n + 1) ^ 2).toNat

end

end A143466.P4681920995637061064

/-! ## A143466.P9356108168211421724

`A316569(A075362(n+1)²)`
-/

namespace A143466.P9356108168211421724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 (A075362 (n + 1) ^ 2).toNat

end

end A143466.P9356108168211421724

/-! ## A143466.P12746806009069546396

`A014376(A036565(2*(n+2))%A051173(n+1))`
-/

namespace A143466.P12746806009069546396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014376 (Int.tmod (A036565 (2 * (n + 2))) (A051173 (n + 1))).toNat

end

end A143466.P12746806009069546396

/-! ## A143466.P16598798860912970301

`A010060(gcd(A075362(n+1), A360355(n+1)))`
-/

namespace A143466.P16598798860912970301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.gcd (A075362 (n + 1)) (A360355 (n + 1)))

end

end A143466.P16598798860912970301

/-! ## A143466.P9799877830946493839

`A236575(A233409(n+2))`
-/

namespace A143466.P9799877830946493839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236575 (A233409 (n + 2)).toNat

end

end A143466.P9799877830946493839

/-!
# A143467: Triangle read by rows, A143315 * A128407, 1<=k<=n.

The programs for A143467, the canonical program `A143467.P10375842645312805045` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143467 has offset 1).

The definition of A143467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143467.P10375842645312805045

`A054524(n+1)*A143315(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A143467

/-- `A054524(n+1)*A143315(n+1)` -/
def P10375842645312805045.Spec : Prop :=
  ∀ n, P10375842645312805045.a n = A143467 (n + 1)

theorem P10375842645312805045.correct : P10375842645312805045.Spec := by
  intro n
  simp only [A143467, Nat.add_sub_cancel]

end A143467

/-! ## A143467.P13221805178240726543

`A054527(n+1)*A143315(n+1)`
-/

namespace A143467.P13221805178240726543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A143315 (n + 1)

end

end A143467.P13221805178240726543

namespace A143467

/-- `A054527(n+1)*A143315(n+1)` -/
def P13221805178240726543.Spec : Prop :=
  ∀ n, P13221805178240726543.a n = A143467 (n + 1)

end A143467

/-! ## A143467.P16851251500271979360

`A054534(n+1)*A143315(n+1)`
-/

namespace A143467.P16851251500271979360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054534 (n + 1) * A143315 (n + 1)

end

end A143467.P16851251500271979360

namespace A143467

/-- `A054534(n+1)*A143315(n+1)` -/
def P16851251500271979360.Spec : Prop :=
  ∀ n, P16851251500271979360.a n = A143467 (n + 1)

end A143467

/-! ## A143467.P12491317281372228452

`A004273(A126988(n+1))*A054524(n+1)`
-/

namespace A143467.P12491317281372228452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A126988 (n + 1)).toNat * A054524 (n + 1)

end

end A143467.P12491317281372228452

namespace A143467

/-- `A004273(A126988(n+1))*A054524(n+1)` -/
def P12491317281372228452.Spec : Prop :=
  ∀ n, P12491317281372228452.a n = A143467 (n + 1)

end A143467

/-! ## A143467.P14672947972671134088

`A004273(A126988(n+1))*A054534(n+1)`
-/

namespace A143467.P14672947972671134088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A126988 (n + 1)).toNat * A054534 (n + 1)

end

end A143467.P14672947972671134088

namespace A143467

/-- `A004273(A126988(n+1))*A054534(n+1)` -/
def P14672947972671134088.Spec : Prop :=
  ∀ n, P14672947972671134088.a n = A143467 (n + 1)

end A143467

/-! ## A143467.P9930136436770582771

`A143468(A120913(n+1))`
-/

namespace A143467.P9930136436770582771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143468 (A120913 (n + 1)).toNat

end

end A143467.P9930136436770582771

namespace A143467

/-- `A143468(A120913(n+1))` -/
def P9930136436770582771.Spec : Prop :=
  ∀ n, P9930136436770582771.a n = A143467 (n + 1)

end A143467

/-!
# A143468: Triangle read by rows, A054525 * A127775, 1<=k<=n.

The programs for A143468, the canonical program `A143468.P8235683988876298013` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143468 has offset 1).

The definition of A143468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143468.P17388625731501422397

`(2*(n-C(∑[char[∑[n]]], 2))+1)*A054525(n+1)`
-/

namespace A143468.P17388625731501422397
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) + 1) * A054525 (n + 1)

end

end A143468.P17388625731501422397

namespace A143468

/-- `(2*(n-C(∑[char[∑[n]]], 2))+1)*A054525(n+1)` -/
def P17388625731501422397.Spec : Prop :=
  ∀ n, P17388625731501422397.a n = A143468 (n + 1)

end A143468

/-! ## A143468.P8235683988876298013

`A054525(n+1)*A134560(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A143468

/-- `A054525(n+1)*A134560(n+1)` -/
def P8235683988876298013.Spec : Prop :=
  ∀ n, P8235683988876298013.a n = A143468 (n + 1)

theorem P8235683988876298013.correct : P8235683988876298013.Spec := by
  intro n
  simp only [A143468, Nat.add_sub_cancel]

end A143468

/-! ## A143468.P13407765517612667581

`A054525(n+1)*A158405(n+1)`
-/

namespace A143468.P13407765517612667581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A158405 (n + 1)

end

end A143468.P13407765517612667581

namespace A143468

/-- `A054525(n+1)*A158405(n+1)` -/
def P13407765517612667581.Spec : Prop :=
  ∀ n, P13407765517612667581.a n = A143468 (n + 1)

end A143468

/-! ## A143468.P8179601134799862736

`2*A127448(n+1)-A054525(n+1)`
-/

namespace A143468.P8179601134799862736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127448 (n + 1) - A054525 (n + 1)

end

end A143468.P8179601134799862736

namespace A143468

/-- `2*A127448(n+1)-A054525(n+1)` -/
def P8179601134799862736.Spec : Prop :=
  ∀ n, P8179601134799862736.a n = A143468 (n + 1)

end A143468

/-! ## A143468.P6805359619161670537

`(2*A002262(n)+1)*A054525(n+1)`
-/

namespace A143468.P6805359619161670537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A002262 n + 1) * A054525 (n + 1)

end

end A143468.P6805359619161670537

namespace A143468

/-- `(2*A002262(n)+1)*A054525(n+1)` -/
def P6805359619161670537.Spec : Prop :=
  ∀ n, P6805359619161670537.a n = A143468 (n + 1)

end A143468

/-! ## A143468.P2158727984431161138

`A005408(A002262(n))*A054525(n+1)`
-/

namespace A143468.P2158727984431161138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A002262 n).toNat * A054525 (n + 1)

end

end A143468.P2158727984431161138

namespace A143468

/-- `A005408(A002262(n))*A054525(n+1)` -/
def P2158727984431161138.Spec : Prop :=
  ∀ n, P2158727984431161138.a n = A143468 (n + 1)

end A143468

/-! ## A143468.P7180920311847277346

`A004273(A002260(n+1))*A054525(n+1)`
-/

namespace A143468.P7180920311847277346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A002260 (n + 1)).toNat * A054525 (n + 1)

end

end A143468.P7180920311847277346

namespace A143468

/-- `A004273(A002260(n+1))*A054525(n+1)` -/
def P7180920311847277346.Spec : Prop :=
  ∀ n, P7180920311847277346.a n = A143468 (n + 1)

end A143468

/-! ## A143468.P1435431195218403349

`A004741(A004201(n+1))*A054525(n+1)`
-/

namespace A143468.P1435431195218403349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A004201 (n + 1)).toNat * A054525 (n + 1)

end

end A143468.P1435431195218403349

namespace A143468

/-- `A004741(A004201(n+1))*A054525(n+1)` -/
def P1435431195218403349.Spec : Prop :=
  ∀ n, P1435431195218403349.a n = A143468 (n + 1)

end A143468

/-! ## A143468.P432660769175192184

`A054525(n+1)*A144328((round(sqrt(2*(n+1)))+1)²+2*n+1)`
-/

namespace A143468.P432660769175192184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A144328 ((SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1) ^ 2 + (2 * n + 1 : ℤ)).toNat

end

end A143468.P432660769175192184

namespace A143468

/-- `A054525(n+1)*A144328((round(sqrt(2*(n+1)))+1)²+2*n+1)` -/
def P432660769175192184.Spec : Prop :=
  ∀ n, P432660769175192184.a n = A143468 (n + 1)

end A143468

/-! ## A143468.P17697599532295915382

`A000265(A054582(n))*A054525(n+1)`
-/

namespace A143468.P17697599532295915382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A054582 n).toNat * A054525 (n + 1)

end

end A143468.P17697599532295915382

namespace A143468

/-- `A000265(A054582(n))*A054525(n+1)` -/
def P17697599532295915382.Spec : Prop :=
  ∀ n, P17697599532295915382.a n = A143468 (n + 1)

end A143468

/-! ## A143468.P1489589340935282800

`A036288(A059268(n))*A054525(n+1)`
-/

namespace A143468.P1489589340935282800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (A059268 n).toNat * A054525 (n + 1)

end

end A143468.P1489589340935282800

namespace A143468

/-- `A036288(A059268(n))*A054525(n+1)` -/
def P1489589340935282800.Spec : Prop :=
  ∀ n, P1489589340935282800.a n = A143468 (n + 1)

end A143468

/-!
# A143469: Triangle read by rows, A000012 * A143315 * A128407, 1<=k<=1.

The programs for A143469, the canonical program `A143469.P17550600215004347923` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143469 has offset 1).

The definition of A143469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143469.P17550600215004347923

`A010766(n+1)*A143349(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A143469

/-- `A010766(n+1)*A143349(n+1)` -/
def P17550600215004347923.Spec : Prop :=
  ∀ n, P17550600215004347923.a n = A143469 (n + 1)

theorem P17550600215004347923.correct : P17550600215004347923.Spec := by
  intro n
  simp only [A143469, Nat.add_sub_cancel]

end A143469

/-! ## A143469.P11423814654740750257

`A054527(n+1)*A360610(n+1)`
-/

namespace A143469.P11423814654740750257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A360610 (n + 1)

end

end A143469.P11423814654740750257

namespace A143469

/-- `A054527(n+1)*A360610(n+1)` -/
def P11423814654740750257.Spec : Prop :=
  ∀ n, P11423814654740750257.a n = A143469 (n + 1)

end A143469

/-! ## A143469.P10464143694168172918

`A010766(n+1)²*A054527(n+1)`
-/

namespace A143469.P10464143694168172918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) ^ 2 * A054527 (n + 1)

end

end A143469.P10464143694168172918

namespace A143469

/-- `A010766(n+1)²*A054527(n+1)` -/
def P10464143694168172918.Spec : Prop :=
  ∀ n, P10464143694168172918.a n = A143469 (n + 1)

end A143469

/-! ## A143469.P18198055531536907414

`A010766(n+1)²*A008683(A002260(n+1))`
-/

namespace A143469.P18198055531536907414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) ^ 2 * A008683 (A002260 (n + 1)).toNat

end

end A143469.P18198055531536907414

namespace A143469

/-- `A010766(n+1)²*A008683(A002260(n+1))` -/
def P18198055531536907414.Spec : Prop :=
  ∀ n, P18198055531536907414.a n = A143469 (n + 1)

end A143469

/-!
# A143470: Triangle read by rows, A000012 * A143316, 1<=k<=n.

The programs for A143470, there is no canonical definition to state claims against.
-/

/-! ## A143470.P1217011050371467093

`A242114(A348553(n))%A108237(n+1)`
-/

namespace A143470.P1217011050371467093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242114 (A348553 n).toNat) (A108237 (n + 1))

end

end A143470.P1217011050371467093

/-! ## A143470.P10471509515077349780

`A328164(n)^C(2, n)*A242114(A348553(n))`
-/

namespace A143470.P10471509515077349780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328164 n ^ Nat.choose 2 n * A242114 (A348553 n).toNat

end

end A143470.P10471509515077349780

/-! ## A143470.P14782041579348068209

`A242114(A348553(n))+A051626(A003592(n+1))`
-/

namespace A143470.P14782041579348068209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242114 (A348553 n).toNat + A051626 (A003592 (n + 1)).toNat

end

end A143470.P14782041579348068209

/-!
# A143472: Expansion of 1/(1 - x^3 - x^5 - x^7 + x^10), inverse of a Salem polynomial.

The programs for A143472, the canonical program `A143472.P10788111093639099678` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143472 has offset 0).

The definition of A143472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A143472.P10788111093639099678

`a(n-3)+a(n-5)+a(n-7)-a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=1, a(7)=1, a(8)=2, a(9)=1`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A143472

/-- `a(n-3)+a(n-5)+a(n-7)-a(n-10)` -/
def P10788111093639099678.Spec : Prop :=
  ∀ n, P10788111093639099678.a n = A143472 n

theorem P10788111093639099678.correct : P10788111093639099678.Spec := by
  intro n
  simp only [A143472]

end A143472

/-! ## A143472.P4967121102751945425

`A025833(eq[A025875(n), A029426(n)])`
-/

namespace A143472.P4967121102751945425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025833 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A143472.P4967121102751945425

namespace A143472

/-- `A025833(eq[A025875(n), A029426(n)])` -/
def P4967121102751945425.Spec : Prop :=
  ∀ n, P4967121102751945425.a n = A143472 n

end A143472

/-! ## A143472.P7560735999625371416

`A029291(eq[A029291(n), A029306(n)])`
-/

namespace A143472.P7560735999625371416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029291 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029291 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A143472.P7560735999625371416

namespace A143472

/-- `A029291(eq[A029291(n), A029306(n)])` -/
def P7560735999625371416.Spec : Prop :=
  ∀ n, P7560735999625371416.a n = A143472 n

end A143472

/-! ## A143472.P8387880572109705548

`A341451(n+4)-A117943(A138358(n+1))`
-/

namespace A143472.P8387880572109705548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341451 (n + 4) - A117943 (A138358 (n + 1)).toNat

end

end A143472.P8387880572109705548

namespace A143472

/-- `A341451(n+4)-A117943(A138358(n+1))` -/
def P8387880572109705548.Spec : Prop :=
  ∀ n, P8387880572109705548.a n = A143472 n

end A143472

/-! ## A143472.P4290599078444914541

`A001222(A043561(n)+A009227(n))`
-/

namespace A143472.P4290599078444914541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A043561 n + A009227 n).toNat

end

end A143472.P4290599078444914541

namespace A143472

/-- `A001222(A043561(n)+A009227(n))` -/
def P4290599078444914541.Spec : Prop :=
  ∀ n, P4290599078444914541.a n = A143472 n

end A143472

/-!
# A143473: Replace the leading digit d of n with 10-d (in decimal representation).

The programs for A143473, the canonical program `A143473.P5763444039974273443` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143473 has offset 0).

The definition of A143473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143473.P5763444039974273443

`A178914(n)+2*A217657(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A143473

/-- `A178914(n)+2*A217657(n)` -/
def P5763444039974273443.Spec : Prop :=
  ∀ n, P5763444039974273443.a n = A143473 n

theorem P5763444039974273443.correct : P5763444039974273443.Spec := by
  intro n
  simp only [A143473]

end A143473

/-! ## A143473.P1370571783006539848

`A217657(n)+A178914(n-A217657(n))`
-/

namespace A143473.P1370571783006539848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 n + A178914 ((n : ℤ) - A217657 n).toNat

end

end A143473.P1370571783006539848

namespace A143473

/-- `A217657(n)+A178914(n-A217657(n))` -/
def P1370571783006539848.Spec : Prop :=
  ∀ n, P1370571783006539848.a n = A143473 n

end A143473

/-! ## A143473.P11586111844796315472

`10^A055642(n)-A334387(n)`
-/

namespace A143473.P11586111844796315472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A055642 n : ℤ) - (A334387 n : ℚ)

end

end A143473.P11586111844796315472

namespace A143473

/-- `10^A055642(n)-A334387(n)` -/
def P11586111844796315472.Spec : Prop :=
  ∀ n, P11586111844796315472.a n = (A143473 n : ℚ)

end A143473

/-! ## A143473.P4421530027374168706

`A178914(n)+n-A334387(n)`
-/

namespace A143473.P4421530027374168706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178914 n + ((n : ℤ) - A334387 n)

end

end A143473.P4421530027374168706

namespace A143473

/-- `A178914(n)+n-A334387(n)` -/
def P4421530027374168706.Spec : Prop :=
  ∀ n, P4421530027374168706.a n = A143473 n

end A143473

/-! ## A143473.P11870365934322494624

`A128113(A022167(n))+(99-n)%90+1`
-/

namespace A143473.P11870365934322494624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128113 (A022167 n).toNat + (Int.tmod (99 - (n : ℤ)) 90 + 1)

end

end A143473.P11870365934322494624

namespace A143473

/-- `A128113(A022167(n))+(99-n)%90+1` -/
def P11870365934322494624.Spec : Prop :=
  ∀ n, P11870365934322494624.a n = A143473 n

end A143473

/-!
# A143474: a(n) = smallest k such that A141501(k) = 2*n+1.

The programs for A143474, there is no canonical definition to state claims against.
-/

/-! ## A143474.P16652360274985958298

`A109832(round((gcd(7, 1-n)/A003057(n+2)-n)²)+2)`
-/

namespace A143474.P16652360274985958298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109832 (SequenceMachineLib.roundAway (((Int.gcd 7 (1 - (n : ℤ)) : ℚ) / (A003057 (n + 2) : ℚ) - (n : ℚ)) ^ 2) + 2).toNat

end

end A143474.P16652360274985958298

/-! ## A143474.P1137792640950054513

`A000010(eq[A010707(n), A272726(n+1)])`
-/

namespace A143474.P1137792640950054513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A143474.P1137792640950054513

/-!
# A143477: Kolakoski Fan.

The programs for A143477, there is no canonical definition to state claims against.
-/

/-! ## A143477.P8739667602465269226

`A074292(A331785(2*(n+2))+A204988(n+1))`
-/

namespace A143477.P8739667602465269226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074292 (A331785 (2 * (n + 2)) + A204988 (n + 1)).toNat

end

end A143477.P8739667602465269226

/-! ## A143477.P6074228518905346133

`A323231(A323196(2*n+3)%A323237(n+1))`
-/

namespace A143477.P6074228518905346133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323231 (Int.tmod (A323196 (2 * n + 3)) (A323237 (n + 1))).toNat

end

end A143477.P6074228518905346133

/-! ## A143477.P13078451878677147178

`A039701(A116368(n+1)*A270189(n+1))`
-/

namespace A143477.P13078451878677147178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039701 (A116368 (n + 1) * A270189 (n + 1)).toNat

end

end A143477.P13078451878677147178

/-! ## A143477.P2906561955870548592

`A389522(A097797(n+1)+A001462(n+1))`
-/

namespace A143477.P2906561955870548592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389522 (A097797 (n + 1) + A001462 (n + 1)).toNat

end

end A143477.P2906561955870548592

/-!
# A143480: a(1)=1. a(n) is the smallest positive multiple of n such that phi(a(n)) > phi(a(n-1)), where phi(m) is A000010(m).

The programs for A143480, there is no canonical definition to state claims against.
-/

/-! ## A143480.P10898653170069004490

`(n+1)*A261863(n+1)`
-/

namespace A143480.P10898653170069004490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A261863 (n + 1)

end

end A143480.P10898653170069004490

/-! ## A143480.P7979134987274905031

`A261863(A077168(n))*A348553(n)`
-/

namespace A143480.P7979134987274905031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261863 (A077168 n).toNat * A348553 n

end

end A143480.P7979134987274905031

/-! ## A143480.P12051693374600322138

`or(A133900(n+1), A268040(A149378(n)))`
-/

namespace A143480.P12051693374600322138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A133900 (n + 1)) (A268040 (A149378 n).toNat)

end

end A143480.P12051693374600322138

/-! ## A143480.P16716799394702928211

`A133900(n+1)+A128975(A377230(n+1))`
-/

namespace A143480.P16716799394702928211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133900 (n + 1) + A128975 (A377230 (n + 1)).toNat

end

end A143480.P16716799394702928211

/-!
# A143481: a(n) = phi(A143480(n)) where phi(m) = A000010(m).

The programs for A143481, there is no canonical definition to state claims against.
-/

/-! ## A143481.P10330598123886351833

`A000010(A143480(n+1))`
-/

namespace A143481.P10330598123886351833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A143480 (n + 1)).toNat

end

end A143481.P10330598123886351833

/-! ## A143481.P8130512416588787867

`A000010((n+1)*A261863(n+1))`
-/

namespace A143481.P8130512416588787867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1 : ℤ) * A261863 (n + 1)).toNat

end

end A143481.P8130512416588787867

/-! ## A143481.P2156110495856622219

`A132952(lcm(2, A143480(n+1)))`
-/

namespace A143481.P2156110495856622219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132952 (Int.lcm 2 (A143480 (n + 1)))

end

end A143481.P2156110495856622219

/-! ## A143481.P17217801892852203523

`A109606((n+1)*A261863(n+1))+1`
-/

namespace A143481.P17217801892852203523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 ((n + 1 : ℤ) * A261863 (n + 1)).toNat + 1

end

end A143481.P17217801892852203523

/-! ## A143481.P13522002886544471342

`A039649((n+1)*A261863(n+1))-1`
-/

namespace A143481.P13522002886544471342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 ((n + 1 : ℤ) * A261863 (n + 1)).toNat - 1

end

end A143481.P13522002886544471342

/-! ## A143481.P16070865113981492808

`A039649(A143480(n+1))-A007318(C(2, n))`
-/

namespace A143481.P16070865113981492808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A143480 (n + 1)).toNat - A007318 (Nat.choose 2 n)

end

end A143481.P16070865113981492808

/-! ## A143481.P7955073910661604152

`A039649(A143480(n+1))-A007318(and(3, -n))`
-/

namespace A143481.P7955073910661604152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A143480 (n + 1)).toNat - A007318 (Int.land 3 (-(n : ℤ))).toNat

end

end A143481.P7955073910661604152

/-! ## A143481.P16952151711359462132

`A039649(A143480(n+1))-A014963(12*n+6)`
-/

namespace A143481.P16952151711359462132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A143480 (n + 1)).toNat - A014963 (12 * n + 6)

end

end A143481.P16952151711359462132

/-! ## A143481.P9039072431135121262

`A039649(A143480(n+1))-A000041(C(2, n+2))`
-/

namespace A143481.P9039072431135121262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A143480 (n + 1)).toNat - A000041 (Nat.choose 2 (n + 2))

end

end A143481.P9039072431135121262

/-! ## A143481.P16533136488754775763

`A039649(A143480(n+1))-A000108(C(2, n+2))`
-/

namespace A143481.P16533136488754775763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A143480 (n + 1)).toNat - A000108 (Nat.choose 2 (n + 2))

end

end A143481.P16533136488754775763

/-!
# A143482: a(1)=1. For n>1, a(n) = the smallest positive multiple of n such that phi(a(n)) >= phi(a(n-1)), where phi(m) is A000010(m).

The programs for A143482, there is no canonical definition to state claims against.
-/

/-! ## A143482.P10249144738907770157

`(n+1)*A259439(n+1)`
-/

namespace A143482.P10249144738907770157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A259439 (n + 1)

end

end A143482.P10249144738907770157

/-! ## A143482.P13105912513579408141

`A259439(A077168(n))*A348553(n)`
-/

namespace A143482.P13105912513579408141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259439 (A077168 n).toNat * A348553 n

end

end A143482.P13105912513579408141

/-! ## A143482.P12347152386946088413

`A097291(A181832(n))*A348553(n)`
-/

namespace A143482.P12347152386946088413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097291 (A181832 n).toNat * A348553 n

end

end A143482.P12347152386946088413

/-! ## A143482.P13127534768962444984

`A072774(n+1)*A097291(A181832(n))`
-/

namespace A143482.P13127534768962444984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1) * A097291 (A181832 n).toNat

end

end A143482.P13127534768962444984

/-! ## A143482.P17951669619551393508

`A246079(n+1)*A276337(A324166(n))`
-/

namespace A143482.P17951669619551393508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246079 (n + 1) * A276337 (A324166 n).toNat

end

end A143482.P17951669619551393508

/-!
# A143483: a(n) = phi(A143482(n)) where phi(m) = A000010(m).

The programs for A143483, there is no canonical definition to state claims against.
-/

/-! ## A143483.P9206459124201180313

`A000010(A143482(n+1))`
-/

namespace A143483.P9206459124201180313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A143482 (n + 1)).toNat

end

end A143483.P9206459124201180313

/-! ## A143483.P1854836185207416741

`A000010((n+1)*A259439(n+1))`
-/

namespace A143483.P1854836185207416741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1 : ℤ) * A259439 (n + 1)).toNat

end

end A143483.P1854836185207416741

/-! ## A143483.P2663033323033097185

`A132952(lcm(2, A143482(n+1)))`
-/

namespace A143483.P2663033323033097185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132952 (Int.lcm 2 (A143482 (n + 1)))

end

end A143483.P2663033323033097185

/-! ## A143483.P15422220597135102369

`A109606((n+1)*A259439(n+1))+1`
-/

namespace A143483.P15422220597135102369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 ((n + 1 : ℤ) * A259439 (n + 1)).toNat + 1

end

end A143483.P15422220597135102369

/-! ## A143483.P11749231007516085826

`A039649((n+1)*A259439(n+1))-1`
-/

namespace A143483.P11749231007516085826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 ((n + 1 : ℤ) * A259439 (n + 1)).toNat - 1

end

end A143483.P11749231007516085826

/-! ## A143483.P1032857980240762093

`A039649(A143482(n+1))-A007318(C(2, n))`
-/

namespace A143483.P1032857980240762093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A143482 (n + 1)).toNat - A007318 (Nat.choose 2 n)

end

end A143483.P1032857980240762093

/-! ## A143483.P1473280794347051931

`A039649(A143482(n+1))+or(-1, A000041(n))`
-/

namespace A143483.P1473280794347051931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A143482 (n + 1)).toNat + Int.lor (-1) (A000041 n)

end

end A143483.P1473280794347051931

/-! ## A143483.P12047803133486445498

`A039649(A143482(n+1))-A014963(4*n+6)`
-/

namespace A143483.P12047803133486445498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A143482 (n + 1)).toNat - A014963 (4 * n + 6)

end

end A143483.P12047803133486445498

/-! ## A143483.P1764155568673303683

`A039649(A143482(n+1))-A000041(C(2, n+2))`
-/

namespace A143483.P1764155568673303683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A143482 (n + 1)).toNat - A000041 (Nat.choose 2 (n + 2))

end

end A143483.P1764155568673303683

/-! ## A143483.P6016371924286134426

`A039649(A143482(n+1))+(-1)^A000040(n+2)`
-/

namespace A143483.P6016371924286134426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (A143482 (n + 1)).toNat : ℚ) + (-1 : ℚ) ^ (A000040 (n + 2) : ℤ)

end

end A143483.P6016371924286134426

/-!
# A143484: "Fourth down, Extream [sic] between the two farthest Bells from it" in bell-ringing is a sequence of permutations p_1=(1,2,3,4), p_2=(1,2,4,3), .. which runs through all permutations of {1,2,3,4} with period 24; sequence gives number in position 1 of n-th permutation.

The programs for A143484, there is no canonical definition to state claims against.
-/

/-! ## A143484.P4630961458389080635

`A143487(n+13)`
-/

namespace A143484.P4630961458389080635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143487 (n + 13)

end

end A143484.P4630961458389080635

/-!
# A143485: "Fourth down, Extream [sic] between the two farthest Bells from it" in bell-ringing is a sequence of permutations p_1=(1,2,3,4), p_2=(1,2,4,3), .. which runs through all permutations of {1,2,3,4} with period 24; sequence gives number in position 2 of n-th permutation.

The programs for A143485, there is no canonical definition to state claims against.
-/

/-! ## A143485.P17124663458597781765

`A143486(n+13)`
-/

namespace A143485.P17124663458597781765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143486 (n + 13)

end

end A143485.P17124663458597781765

/-!
# A143486: "Fourth down, Extream [sic] between the two farthest Bells from it" in bell-ringing is a sequence of permutations p_1=(1,2,3,4), p_2=(1,2,4,3), .. which runs through all permutations of {1,2,3,4} with period 24; sequence gives number in position 3 of n-th permutation.

The programs for A143486, there is no canonical definition to state claims against.
-/

/-! ## A143486.P17901273387529203393

`A143485(n+13)`
-/

namespace A143486.P17901273387529203393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143485 (n + 13)

end

end A143486.P17901273387529203393

/-!
# A143487: "Fourth down, Extream [sic] between the two farthest Bells from it" in bell-ringing is a sequence of permutations p_1=(1,2,3,4), p_2=(1,2,4,3), .. which runs through all permutations of {1,2,3,4} with period 24; sequence gives number in position 4 of n-th permutation.

The programs for A143487, there is no canonical definition to state claims against.
-/

/-! ## A143487.P13531729953625195386

`A143484(n+13)`
-/

namespace A143487.P13531729953625195386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143484 (n + 13)

end

end A143487.P13531729953625195386

/-!
# A143488: "Fourth down, Extream [sic] between the two farthest Bells from it" in bell-ringing is a sequence of permutations p_1=(1,2,3,4), p_2=(1,2,4,3), .. which runs through all permutations of {1,2,3,4} with period 24; sequence gives position of bell 1 (the treble bell) in n-th permutation.

The programs for A143488, there is no canonical definition to state claims against.
-/

/-! ## A143488.P11184224610198209468

`5-A143489(n+5)`
-/

namespace A143488.P11184224610198209468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A143489 (n + 5)

end

end A143488.P11184224610198209468

/-!
# A143489: "Fourth down, Extream [sic] between the two farthest Bells from it" in bell-ringing is a sequence of permutations p_1=(1,2,3,4), p_2=(1,2,4,3), .. which runs through all permutations of {1,2,3,4} with period 24; sequence gives position of bell 2 in n-th permutation.

The programs for A143489, there is no canonical definition to state claims against.
-/

/-! ## A143489.P10691560543089103161

`5-A143490(n+5)`
-/

namespace A143489.P10691560543089103161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A143490 (n + 5)

end

end A143489.P10691560543089103161

/-!
# A143490: "Fourth down, Extream [sic] between the two farthest Bells from it" in bell-ringing is a sequence of permutations p_1=(1,2,3,4), p_2=(1,2,4,3), .. which runs through all permutations of {1,2,3,4} with period 24; sequence gives position of bell 3 in n-th permutation.

The programs for A143490, there is no canonical definition to state claims against.
-/

/-! ## A143490.P10548505063754108623

`5-A143488(n+5)`
-/

namespace A143490.P10548505063754108623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A143488 (n + 5)

end

end A143490.P10548505063754108623

/-!
# A143492: Unsigned 3-Stirling numbers of the first kind.

The programs for A143492, there is no canonical definition to state claims against.
-/

/-! ## A143492.P9848858665517638955

`abs(A049458(n))`
-/

namespace A143492.P9848858665517638955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049458 n|

end

end A143492.P9848858665517638955

/-! ## A143492.P376966432172951637

`A049458(n)*A097807(n)`
-/

namespace A143492.P376966432172951637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049458 n * A097807 n

end

end A143492.P376966432172951637

/-! ## A143492.P11841449552357074395

`gcd(A000038(n), A049458(n))`
-/

namespace A143492.P11841449552357074395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A049458 n)

end

end A143492.P11841449552357074395

/-! ## A143492.P12168575758714762403

`lcm(A020985(n), A049458(n))`
-/

namespace A143492.P12168575758714762403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A049458 n)

end

end A143492.P12168575758714762403

/-! ## A143492.P1646809122324267928

`A196845(A061579(n))`
-/

namespace A143492.P1646809122324267928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196845 (A061579 n).toNat

end

end A143492.P1646809122324267928

/-! ## A143492.P1844199189491935581

`A196845(A038722(n+1)-1)`
-/

namespace A143492.P1844199189491935581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196845 (A038722 (n + 1) - 1).toNat

end

end A143492.P1844199189491935581

/-! ## A143492.P16824578836113862271

`A196845(A038722(n+2))`
-/

namespace A143492.P16824578836113862271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196845 (A038722 (n + 2)).toNat

end

end A143492.P16824578836113862271

/-!
# A143493: Unsigned 4-Stirling numbers of the first kind.

The programs for A143493, there is no canonical definition to state claims against.
-/

/-! ## A143493.P2544719790198272696

`abs(A049459(n))`
-/

namespace A143493.P2544719790198272696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049459 n|

end

end A143493.P2544719790198272696

/-! ## A143493.P9738611137772369907

`A049459(n)*A097807(n)`
-/

namespace A143493.P9738611137772369907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049459 n * A097807 n

end

end A143493.P9738611137772369907

/-! ## A143493.P16115910093521608894

`gcd(A000038(n), A049459(n))`
-/

namespace A143493.P16115910093521608894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A049459 n)

end

end A143493.P16115910093521608894

/-! ## A143493.P7439543731958675879

`lcm(A020985(n), A049459(n))`
-/

namespace A143493.P7439543731958675879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A049459 n)

end

end A143493.P7439543731958675879

/-! ## A143493.P6759031602664316112

`lcm(-A049459(n), A033999(n))`
-/

namespace A143493.P6759031602664316112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A049459 n) (A033999 n)

end

end A143493.P6759031602664316112

/-! ## A143493.P13034027603017660612

`A049459(n)*A165586(A130321(n))`
-/

namespace A143493.P13034027603017660612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049459 n * A165586 (A130321 n).toNat

end

end A143493.P13034027603017660612

/-!
# A143494: Triangle read by rows: 2-Stirling numbers of the second kind.

The programs for A143494, there is no canonical definition to state claims against.
-/

/-! ## A143494.P8232598265799245765

`A269952(A014132(n+1))`
-/

namespace A143494.P8232598265799245765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269952 (A014132 (n + 1)).toNat

end

end A143494.P8232598265799245765

/-! ## A143494.P14263874018231211125

`A321331(n+1)-Δ[A008277(n+1)]`
-/

namespace A143494.P14263874018231211125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321331 (n + 1) - (f1 (n + 1) - f1 n)

end

end A143494.P14263874018231211125

/-! ## A143494.P949762820679728083

`A126351(∑[char[∑[n]]]²-n)`
-/

namespace A143494.P949762820679728083
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126351 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A143494.P949762820679728083

/-! ## A143494.P10611126228800849465

`A038719(n)/A233543(n)`
-/

namespace A143494.P10611126228800849465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038719 n : ℚ) / (A233543 n : ℚ)

end

end A143494.P10611126228800849465

/-! ## A143494.P11248057205364707175

`A038719(n)/A002262(n)!`
-/

namespace A143494.P11248057205364707175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038719 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A143494.P11248057205364707175

/-! ## A143494.P14693556203639163640

`A199400(n)/A166350(n+1)`
-/

namespace A143494.P14693556203639163640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199400 n : ℚ) / (A166350 (n + 1) : ℚ)

end

end A143494.P14693556203639163640

/-! ## A143494.P9745320897750346013

`A038719(n)/A001222(A059268(n))!`
-/

namespace A143494.P9745320897750346013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038719 n : ℚ) / (Nat.factorial (A001222 (A059268 n).toNat).toNat : ℚ)

end

end A143494.P9745320897750346013

/-!
# A143495: Triangle read by rows: 3-Stirling numbers of the second kind.

The programs for A143495, there is no canonical definition to state claims against.
-/

/-! ## A143495.P14690016818970403176

`A391552(n)/A233543(n)`
-/

namespace A143495.P14690016818970403176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391552 n : ℚ) / (A233543 n : ℚ)

end

end A143495.P14690016818970403176

/-! ## A143495.P12071583722470861844

`A000194(A395457(n))`
-/

namespace A143495.P12071583722470861844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A395457 n).toNat

end

end A143495.P12071583722470861844

/-! ## A143495.P6884336410139254559

`A322832(A075504(n+1))-char[7]`
-/

namespace A143495.P6884336410139254559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 (A075504 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A143495.P6884336410139254559

/-! ## A143495.P13971059291759323212

`A327997(n)-A205577(A094816(n))`
-/

namespace A143495.P13971059291759323212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327997 n - A205577 (A094816 n).toNat

end

end A143495.P13971059291759323212

/-! ## A143495.P17311629712166842395

`A327997(n)-A325799(A000013(n))`
-/

namespace A143495.P17311629712166842395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327997 n - A325799 (A000013 n).toNat

end

end A143495.P17311629712166842395

/-!
# A143496: 4-Stirling numbers of the second kind.

The programs for A143496, there is no canonical definition to state claims against.
-/

/-! ## A143496.P1666661887471426620

`A391633(n)/A233543(n)`
-/

namespace A143496.P1666661887471426620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391633 n : ℚ) / (A233543 n : ℚ)

end

end A143496.P1666661887471426620

/-!
# A143497: Triangle of unsigned 2-Lah numbers.

The programs for A143497, the canonical program `A143497.P17063427898058652900` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A143497 has offset 2).

The definition of A143497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A143497.P580599512255866820

`abs(A062137(n))`
-/

namespace A143497.P580599512255866820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062137 n|

end

end A143497.P580599512255866820

namespace A143497

/-- `abs(A062137(n))` -/
def P580599512255866820.Spec : Prop :=
  ∀ n, P580599512255866820.a n = A143497 (n + 2)

end A143497

/-! ## A143497.P3804536939157661506

`gcd(A000038(n), A062137(n))`
-/

namespace A143497.P3804536939157661506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A062137 n)

end

end A143497.P3804536939157661506

namespace A143497

/-- `gcd(A000038(n), A062137(n))` -/
def P3804536939157661506.Spec : Prop :=
  ∀ n, (P3804536939157661506.a n : ℤ) = A143497 (n + 2)

end A143497

/-! ## A143497.P7440226905005446187

`lcm(A007318(n), A062137(n))`
-/

namespace A143497.P7440226905005446187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A062137 n)

end

end A143497.P7440226905005446187

namespace A143497

/-- `lcm(A007318(n), A062137(n))` -/
def P7440226905005446187.Spec : Prop :=
  ∀ n, (P7440226905005446187.a n : ℤ) = A143497 (n + 2)

end A143497

/-! ## A143497.P17063427898058652900

`A094587(n)*A104713(n+3)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A143497

/-- `A094587(n)*A104713(n+3)` -/
def P17063427898058652900.Spec : Prop :=
  ∀ n, P17063427898058652900.a n = A143497 (n + 2)

theorem P17063427898058652900.correct : P17063427898058652900.Spec := by
  intro n
  simp only [A143497, Nat.add_sub_cancel]

end A143497

/-! ## A143497.P12377801386765724918

`lcm(A020985(n)*A062137(n), A020985(n))`
-/

namespace A143497.P12377801386765724918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n * A062137 n) (A020985 n)

end

end A143497.P12377801386765724918

namespace A143497

/-- `lcm(A020985(n)*A062137(n), A020985(n))` -/
def P12377801386765724918.Spec : Prop :=
  ∀ n, (P12377801386765724918.a n : ℤ) = A143497 (n + 2)

end A143497

/-! ## A143497.P10334477369494324518

`A105278(n+1)/A066667(n)*A062137(n)`
-/

namespace A143497.P10334477369494324518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105278 (n + 1) : ℚ) / (A066667 n : ℚ) * (A062137 n : ℚ)

end

end A143497.P10334477369494324518

namespace A143497

/-- `A105278(n+1)/A066667(n)*A062137(n)` -/
def P10334477369494324518.Spec : Prop :=
  ∀ n, P10334477369494324518.a n = (A143497 (n + 2) : ℚ)

end A143497

/-! ## A143497.P303624203979765225

`lcm(-A062137(n), A173441(A091727(n+1)))`
-/

namespace A143497.P303624203979765225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A062137 n) (A173441 (A091727 (n + 1)).toNat)

end

end A143497.P303624203979765225

namespace A143497

/-- `lcm(-A062137(n), A173441(A091727(n+1)))` -/
def P303624203979765225.Spec : Prop :=
  ∀ n, (P303624203979765225.a n : ℤ) = A143497 (n + 2)

end A143497

/-! ## A143497.P13177232626716517988

`lcm(-A062137(n), A173441(A317298(n)))`
-/

namespace A143497.P13177232626716517988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A062137 n) (A173441 (A317298 n).toNat)

end

end A143497.P13177232626716517988

namespace A143497

/-- `lcm(-A062137(n), A173441(A317298(n)))` -/
def P13177232626716517988.Spec : Prop :=
  ∀ n, (P13177232626716517988.a n : ℤ) = A143497 (n + 2)

end A143497

/-!
# A143498: Triangle of unsigned 3-Lah numbers.

The programs for A143498, there is no canonical definition to state claims against.
-/

/-! ## A143498.P190282304755885932

`abs(A062138(n))`
-/

namespace A143498.P190282304755885932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062138 n|

end

end A143498.P190282304755885932

/-! ## A143498.P716199995214764610

`gcd(A000038(n), A062138(n))`
-/

namespace A143498.P716199995214764610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A062138 n)

end

end A143498.P716199995214764610

/-! ## A143498.P16385408595492015422

`lcm(A007318(n), A062138(n))`
-/

namespace A143498.P16385408595492015422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A062138 n)

end

end A143498.P16385408595492015422

/-! ## A143498.P14188250621864301303

`lcm(-A062138(n), A020985(n))`
-/

namespace A143498.P14188250621864301303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A062138 n) (A020985 n)

end

end A143498.P14188250621864301303

/-! ## A143498.P1743785286113049436

`root(A062138(n)², A036453(n+1))`
-/

namespace A143498.P1743785286113049436
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A062138 n ^ 2 : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))

end

end A143498.P1743785286113049436

/-!
# A143499: Triangle of unsigned 4-Lah numbers.

The programs for A143499, there is no canonical definition to state claims against.
-/

/-! ## A143499.P4001145159981249123

`A329004(A038291(n)^A034851(n))`
-/

namespace A143499.P4001145159981249123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (SequenceMachineLib.roundAway ((A038291 n : ℚ) ^ (A034851 n : ℤ))).toNat

end

end A143499.P4001145159981249123

/-! ## A143499.P15722618776574234459

`A329004(A038291(n)^A089759(n))`
-/

namespace A143499.P15722618776574234459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (SequenceMachineLib.roundAway ((A038291 n : ℚ) ^ (A089759 n : ℤ))).toNat

end

end A143499.P15722618776574234459

/-! ## A143499.P10400754632850466382

`A329004(A038291(n)^A292860(n))`
-/

namespace A143499.P10400754632850466382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (SequenceMachineLib.roundAway ((A038291 n : ℚ) ^ (A292860 n : ℤ))).toNat

end

end A143499.P10400754632850466382

