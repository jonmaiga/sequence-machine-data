import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B008.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A012900: Expansion of e.g.f.: arcsin(arcsin(x)+log(x+1))=2*x-1/2!*x^2+11/3!*x^3-30/4!*x^4+471/5!*x^5...

The programs for A012900, there is no canonical definition to state claims against.
-/

/-! ## A012900.P4362416225463754865

`A013015(n)+A004198(A176043(n))`
-/

namespace A012900.P4362416225463754865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013015 n + A004198 (A176043 n).toNat

end

end A012900.P4362416225463754865

/-!
# A012901: Expansion of e.g.f. tan(arcsin(x) + log(x+1)).

The programs for A012901, there is no canonical definition to state claims against.
-/

/-! ## A012901.P13566323456984330111

`or(A004198(A030019(n)), A013016(n))`
-/

namespace A012901.P13566323456984330111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004198 (A030019 n).toNat) (A013016 n)

end

end A012901.P13566323456984330111

/-! ## A012901.P660810389842878620

`A013016(n)+A004198(A176043(n))`
-/

namespace A012901.P660810389842878620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013016 n + A004198 (A176043 n).toNat

end

end A012901.P660810389842878620

/-!
# A012902: Expansion of e.g.f. arctan(arcsin(x) + log(x+1)).

The programs for A012902, there is no canonical definition to state claims against.
-/

/-! ## A012902.P428797279969853957

`A013017(n)+A004198(A176043(n))`
-/

namespace A012902.P428797279969853957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013017 n + A004198 (A176043 n).toNat

end

end A012902.P428797279969853957

/-!
# A012904: E.g.f.: sinh(arcsin(x)+log(x+1))=2*x-1/2!*x^2+11/3!*x^3-30/4!*x^4+215/5!*x^5...

The programs for A012904, there is no canonical definition to state claims against.
-/

/-! ## A012904.P13331573911090074090

`A012899(n)-A012908(n)`
-/

namespace A012904.P13331573911090074090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012899 n - A012908 n

end

end A012904.P13331573911090074090

/-! ## A012904.P16152019413384229183

`A184305(A266821(n))-A012908(n)`
-/

namespace A012904.P16152019413384229183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184305 (A266821 n).toNat - A012908 n

end

end A012904.P16152019413384229183

/-! ## A012904.P14016454455117331364

`∑[A335127(A087949(n))]-A012908(n)`
-/

namespace A012904.P14016454455117331364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335127 (A087949 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A012908 n

end

end A012904.P14016454455117331364

/-!
# A012906: Expansion of e.g.f. tanh(arcsin(x) + log(x+1)).

The programs for A012906, there is no canonical definition to state claims against.
-/

/-! ## A012906.P1271868065873390133

`A012902(n)%A103248(A002255(n+4))`
-/

namespace A012906.P1271868065873390133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012902 n) (A103248 (A002255 (n + 4)).toNat)

end

end A012906.P1271868065873390133

/-!
# A012907: Expansion of e.g.f. arctanh(arcsin(x) + log(x+1)).

The programs for A012907, there is no canonical definition to state claims against.
-/

/-! ## A012907.P1282006008378079254

`A013021(n)+A004198(A176043(n))`
-/

namespace A012907.P1282006008378079254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013021 n + A004198 (A176043 n).toNat

end

end A012907.P1282006008378079254

/-! ## A012907.P10024491552349251504

`or(A013021(n), A036873(A013013(n)))`
-/

namespace A012907.P10024491552349251504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013021 n) (A036873 (A013013 n).toNat)

end

end A012907.P10024491552349251504

/-!
# A012908: cosh(arcsin(x)+log(x+1))=1+4/2!*x^2-6/3!*x^3+43/4!*x^4-170/5!*x^5...

The programs for A012908, there is no canonical definition to state claims against.
-/

/-! ## A012908.P16560115923902632491

`A012899(n)-A012904(n)`
-/

namespace A012908.P16560115923902632491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012899 n - A012904 n

end

end A012908.P16560115923902632491

/-! ## A012908.P3232921027827781836

`A012899(n)+A012904(n)*A260196(n+2)`
-/

namespace A012908.P3232921027827781836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012899 n + A012904 n * A260196 (n + 2)

end

end A012908.P3232921027827781836

/-! ## A012908.P12630457129187658462

`A184305(A266821(n))-A012904(n)`
-/

namespace A012908.P12630457129187658462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184305 (A266821 n).toNat - A012904 n

end

end A012908.P12630457129187658462

/-!
# A012909: sec(arcsin(x)+log(x+1))=1+4/2!*x^2-6/3!*x^3+107/4!*x^4-490/5!*x^5...

The programs for A012909, there is no canonical definition to state claims against.
-/

/-! ## A012909.P3348029366042156352

`∏{e}[13^n, A013023(#)]`
-/

namespace A012909.P3348029366042156352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A013023 (Nat.factorization (f1 n) p)

end

end A012909.P3348029366042156352

/-! ## A012909.P8007236597862339978

`A013023(n)+A000007(A002720(n))`
-/

namespace A012909.P8007236597862339978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013023 n + A000007 (A002720 n).toNat

end

end A012909.P8007236597862339978

/-!
# A012910: E.g.f.: sech(arcsin(x)+log(x+1))=1-4/2!*x^2+6/3!*x^3+53/4!*x^4-310/5!*x^5...

The programs for A012910, there is no canonical definition to state claims against.
-/

/-! ## A012910.P12314568502939524084

`∏{e}[13^n, A013024(#)]`
-/

namespace A012910.P12314568502939524084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A013024 (Nat.factorization (f1 n) p)

end

end A012910.P12314568502939524084

/-! ## A012910.P14675554662450512875

`A013024(n^A129265(n+1))`
-/

namespace A012910.P14675554662450512875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013024 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A129265 (n + 1) : ℤ))).toNat

end

end A012910.P14675554662450512875

/-!
# A012912: Expansion of e.g.f.: exp(arcsin(x)+sin(x))=1+2*x+4/2!*x^2+8/3!*x^3+16/4!*x^4+42/5!*x^5...

The programs for A012912, there is no canonical definition to state claims against.
-/

/-! ## A012912.P9514293042300746116

`∪[A012917(n), A012921(n)]`
-/

namespace A012912.P9514293042300746116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A012912.P9514293042300746116

/-! ## A012912.P111506196319207306

`2*A374561(a(n-1))` with `a(0)=1`
-/

namespace A012912.P111506196319207306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A374561 (a (n - 1)).toNat

end

end A012912.P111506196319207306

/-! ## A012912.P1983890699163579232

`A008679(xor(5, n!*∑[1/n!]))+∑[n]`
-/

namespace A012912.P1983890699163579232
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (Int.xor 5 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)))).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A012912.P1983890699163579232

/-!
# A012916: cos(arcsin(x)+sin(x))=1-4/2!*x^2+16/4!*x^4-184/6!*x^6+1152/8!*x^8...

The programs for A012916, there is no canonical definition to state claims against.
-/

/-! ## A012916.P13162003722160235534

`(-1)^n*A013116(2*n)`
-/

namespace A012916.P13162003722160235534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A013116 (2 * n)

end

end A012916.P13162003722160235534

/-! ## A012916.P5340458289456048960

`A013116(2*n)*A033999(n)`
-/

namespace A012916.P5340458289456048960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013116 (2 * n) * A033999 n

end

end A012916.P5340458289456048960

/-!
# A012917: sinh(arcsin(x) + sin(x)) = 2*x+8/3!*x^3+42/5!*x^5+1192/7!*x^7 ... .

The programs for A012917, there is no canonical definition to state claims against.
-/

/-! ## A012917.P16648928912473016808

`A012912(Δ[n²])`
-/

namespace A012917.P16648928912473016808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012912 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012917.P16648928912473016808

/-! ## A012917.P6422546324209559864

`lcm(2, A012912(2*n+1))`
-/

namespace A012917.P6422546324209559864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A012912 (2 * n + 1))

end

end A012917.P6422546324209559864

/-! ## A012917.P6618203182799684793

`record[A012912((n+1)/2^val(n+1, 2))]`
-/

namespace A012917.P6618203182799684793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012912 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012917.P6618203182799684793

/-! ## A012917.P13639610297453434097

`record[A012912(A004442(n))]`
-/

namespace A012917.P13639610297453434097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012912 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012917.P13639610297453434097

/-! ## A012917.P3566564084116971094

`record[A012912(A093178(n))]`
-/

namespace A012917.P3566564084116971094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012912 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012917.P3566564084116971094

/-!
# A012921: cosh(arcsin(x)+sin(x))=1+4/2!*x^2+16/4!*x^4+184/6!*x^6+8320/8!*x^8...

The programs for A012921, there is no canonical definition to state claims against.
-/

/-! ## A012921.P15204040193735598371

`A012912(2*n)`
-/

namespace A012921.P15204040193735598371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012912 (2 * n)

end

end A012921.P15204040193735598371

/-! ## A012921.P9503855609265672967

`record[A012912(A014681(n))]`
-/

namespace A012921.P9503855609265672967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012912 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012921.P9503855609265672967

/-! ## A012921.P960065542268482669

`record[A012912(A093178(n)-1)]`
-/

namespace A012921.P960065542268482669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012912 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012921.P960065542268482669

/-! ## A012921.P13022019505239788425

`record[A012912(n)/A033999(n)]`
-/

namespace A012921.P13022019505239788425
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012912 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012921.P13022019505239788425

/-! ## A012921.P9907914149881757452

`record[gcd(A012912(n), A131575(n))]`
-/

namespace A012921.P9907914149881757452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A012912 n) (A131575 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012921.P9907914149881757452

/-!
# A012924: exp(tan(x)+log(x+1))=1+2*x+3/2!*x^2+6/3!*x^3+21/4!*x^4+82/5!*x^5...

The programs for A012924, there is no canonical definition to state claims against.
-/

/-! ## A012924.P11895489237316854927

`A009243(n)+A006229(n)`
-/

namespace A012924.P11895489237316854927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009243 n + A006229 n

end

end A012924.P11895489237316854927

/-! ## A012924.P10648218685083502328

`A006229(n)-A009243(n)*A057428(n)`
-/

namespace A012924.P10648218685083502328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006229 n - A009243 n * A057428 n

end

end A012924.P10648218685083502328

/-! ## A012924.P17618363567664447425

`A009243(n)+A009243(n+1)/(n+1)`
-/

namespace A012924.P17618363567664447425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009243 n : ℚ) + (A009243 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A012924.P17618363567664447425

/-! ## A012924.P12523451873978297749

`A012933(n)+A012929(n)`
-/

namespace A012924.P12523451873978297749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012933 n + A012929 n

end

end A012924.P12523451873978297749

/-! ## A012924.P14753737731742311169

`A012933(n)-A012929(n)*A057428(n)`
-/

namespace A012924.P14753737731742311169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012933 n - A012929 n * A057428 n

end

end A012924.P14753737731742311169

/-!
# A012925: Expansion of e.g.f. sin(tan(x)+log(x+1)).

The programs for A012925, there is no canonical definition to state claims against.
-/

/-! ## A012925.P7969008709176039283

`A013156(n)-A120881(A276271(n))`
-/

namespace A012925.P7969008709176039283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013156 n - A120881 (A276271 n).toNat

end

end A012925.P7969008709176039283

/-!
# A012929: Expansion of e.g.f. sinh(tan(x) + log(x+1)).

The programs for A012929, there is no canonical definition to state claims against.
-/

/-! ## A012929.P2655838166081959072

`A012924(n)-A012933(n)`
-/

namespace A012929.P2655838166081959072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012924 n - A012933 n

end

end A012929.P2655838166081959072

/-! ## A012929.P10200314035442127370

`A006229(n)+A009243(n)-A012933(n)`
-/

namespace A012929.P10200314035442127370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006229 n + (A009243 n - A012933 n)

end

end A012929.P10200314035442127370

/-! ## A012929.P11755818288573234923

`A009243(n+1)/(n+1)+A009243(n)-A012933(n)`
-/

namespace A012929.P11755818288573234923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009243 (n + 1) : ℚ) / (n + 1 : ℚ) + (A009243 n - A012933 n : ℚ)

end

end A012929.P11755818288573234923

/-! ## A012929.P13866102997450838105

`A006229(n)-A009243(n)*A057428(n)-A012933(n)`
-/

namespace A012929.P13866102997450838105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006229 n - A009243 n * A057428 n - A012933 n

end

end A012929.P13866102997450838105

/-!
# A012930: arcsinh(tan(x)+log(x+1)) = 2*x-1/2!*x^2-4/3!*x^3+18/4!*x^4+138/5!*x^5...

The programs for A012930, there is no canonical definition to state claims against.
-/

/-! ## A012930.P10637925608056928512

`A124801(A215035(n+1))-A124758(n)`
-/

namespace A012930.P10637925608056928512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124801 (A215035 (n + 1)).toNat - A124758 n

end

end A012930.P10637925608056928512

/-! ## A012930.P12752383904067859616

`A124801(A215035(n+1))-A064989(n+1)`
-/

namespace A012930.P12752383904067859616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124801 (A215035 (n + 1)).toNat - A064989 (n + 1)

end

end A012930.P12752383904067859616

/-!
# A012931: Tanh(tan(x)+log(x+1)) = 2*x - 1/2!*x^2 - 12/3!*x^3 + 42/4!*x^4 + 172/5!*x^5 - ...

The programs for A012931, there is no canonical definition to state claims against.
-/

/-! ## A012931.P18125970570598634987

`A013159(n)%A215696(A013170(n))`
-/

namespace A012931.P18125970570598634987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013159 n) (A215696 (A013170 n).toNat)

end

end A012931.P18125970570598634987

/-!
# A012932: Arctanh(tan(x)+log(x+1)) = 2*x - 1/2!*x^2 + 20/3!*x^3 - 54/4!*x^4 + 1188/5!*x^5 + ...

The programs for A012932, there is no canonical definition to state claims against.
-/

/-! ## A012932.P1081189529956942482

`A013163(n)-dr(A321797(A158341(n)))`
-/

namespace A012932.P1081189529956942482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013163 n - (SequenceMachineLib.digitalRoot (A321797 (A158341 n).toNat) : ℤ)

end

end A012932.P1081189529956942482

/-!
# A012933: Expansion of e.g.f.: cosh(tan(x)+log(x+1))=1+4/2!*x^2-6/3!*x^3+51/4!*x^4-180/5!*x^5...

The programs for A012933, there is no canonical definition to state claims against.
-/

/-! ## A012933.P11617640292037598138

`A012924(n)-A012929(n)`
-/

namespace A012933.P11617640292037598138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012924 n - A012929 n

end

end A012933.P11617640292037598138

/-! ## A012933.P9552655965887341897

`A006229(n)+A009243(n)-A012929(n)`
-/

namespace A012933.P9552655965887341897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006229 n + (A009243 n - A012929 n)

end

end A012933.P9552655965887341897

/-! ## A012933.P5466333566683690193

`A012924(n)+A012929(n)*A057428(n)`
-/

namespace A012933.P5466333566683690193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012924 n + A012929 n * A057428 n

end

end A012933.P5466333566683690193

/-! ## A012933.P15742193030809734713

`A009243(n+1)/(n+1)+A009243(n)-A012929(n)`
-/

namespace A012933.P15742193030809734713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009243 (n + 1) : ℚ) / (n + 1 : ℚ) + (A009243 n - A012929 n : ℚ)

end

end A012933.P15742193030809734713

/-! ## A012933.P3733793956323290343

`A006229(n)-A009243(n)*A057428(n)-A012929(n)`
-/

namespace A012933.P3733793956323290343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006229 n - A009243 n * A057428 n - A012929 n

end

end A012933.P3733793956323290343

/-!
# A012934: Expansion of e.g.f.: sec(tan(x)+log(x+1))=1+4/2!*x^2-6/3!*x^3+115/4!*x^4-500/5!*x^5...

The programs for A012934, there is no canonical definition to state claims against.
-/

/-! ## A012934.P3569054589084491760

`A013165(A343867(n)+n)`
-/

namespace A012934.P3569054589084491760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013165 (A343867 n + (n : ℤ)).toNat

end

end A012934.P3569054589084491760

/-! ## A012934.P17301462952396539945

`A013165(n^A006722(n))`
-/

namespace A012934.P17301462952396539945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013165 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A006722 n : ℤ))).toNat

end

end A012934.P17301462952396539945

/-!
# A012935: Expansion of e.g.f.: sech(tan(x)+log(x+1))=1-4/2!*x^2+6/3!*x^3+45/4!*x^4-300/5!*x^5...

The programs for A012935, there is no canonical definition to state claims against.
-/

/-! ## A012935.P3532994732110541007

`A013166(n*A046988(n))`
-/

namespace A012935.P3532994732110541007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013166 ((n : ℤ) * A046988 n).toNat

end

end A012935.P3532994732110541007

/-! ## A012935.P9275883142730063892

`A013166(n^A006722(n))`
-/

namespace A012935.P9275883142730063892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013166 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A006722 n : ℤ))).toNat

end

end A012935.P9275883142730063892

/-!
# A012936: Expansion of e.g.f.: exp(tan(x)+sin(x))=1+2*x+4/2!*x^2+9/3!*x^3+24/4!*x^4+89/5!*x^5...

The programs for A012936, there is no canonical definition to state claims against.
-/

/-! ## A012936.P4508657845761676763

`∪[A012941(n), A012945(n)]`
-/

namespace A012936.P4508657845761676763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012941 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A012936.P4508657845761676763

/-! ## A012936.P19258381112675383

`A342518(A289004(n))`
-/

namespace A012936.P19258381112675383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342518 (A289004 n).toNat

end

end A012936.P19258381112675383

/-! ## A012936.P6629025564963039773

`A071538(A126390(n))+1`
-/

namespace A012936.P6629025564963039773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A126390 n).toNat + 1

end

end A012936.P6629025564963039773

/-!
# A012941: sinh(tan(x)+sin(x))=2*x+9/3!*x^3+89/5!*x^5+2527/7!*x^7...

The programs for A012941, there is no canonical definition to state claims against.
-/

/-! ## A012941.P14460087296148416689

`A012936(Δ[n²])`
-/

namespace A012941.P14460087296148416689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012936 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012941.P14460087296148416689

/-! ## A012941.P17770868633831552691

`record[A012936(A004442(n))]`
-/

namespace A012941.P17770868633831552691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012936 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012941.P17770868633831552691

/-! ## A012941.P1652919388931417581

`record[A012936(A099375(n))]`
-/

namespace A012941.P1652919388931417581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012936 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012941.P1652919388931417581

/-! ## A012941.P10539875358902474312

`record[A012936(abs(A009001(n)))]`
-/

namespace A012941.P10539875358902474312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012936 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012941.P10539875358902474312

/-! ## A012941.P6138082733077610806

`record[A012936(A000265(n+1))]`
-/

namespace A012941.P6138082733077610806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012936 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012941.P6138082733077610806

/-!
# A012945: cosh(tan(x)+sin(x))=1+4/2!*x^2+24/4!*x^4+438/6!*x^6+16072/8!*x^8...

The programs for A012945, there is no canonical definition to state claims against.
-/

/-! ## A012945.P595386366959160083

`A012936(2*n)`
-/

namespace A012945.P595386366959160083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012936 (2 * n)

end

end A012945.P595386366959160083

/-! ## A012945.P15336688457168670227

`record[A012936(A014681(n))]`
-/

namespace A012945.P15336688457168670227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012936 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012945.P15336688457168670227

/-! ## A012945.P12288884160359390138

`record[A012936(A099375(n)-1)]`
-/

namespace A012945.P12288884160359390138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012936 (A099375 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012945.P12288884160359390138

/-! ## A012945.P8342865728668261123

`record[A012936(n)/A033999(n)]`
-/

namespace A012945.P8342865728668261123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012936 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012945.P8342865728668261123

/-! ## A012945.P10170252235467506588

`record[A012936(and(n, A105812(n)))]`
-/

namespace A012945.P10170252235467506588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012936 (Int.land (n : ℤ) (A105812 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012945.P10170252235467506588

/-!
# A012948: Expansion of e.g.f.: exp(tan(x)+arcsin(x))=1+2*x+4/2!*x^2+11/3!*x^3+40/4!*x^4+177/5!*x^5...

The programs for A012948, there is no canonical definition to state claims against.
-/

/-! ## A012948.P12894523206787080931

`∪[A012953(n), A012957(n)]`
-/

namespace A012948.P12894523206787080931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012957 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A012948.P12894523206787080931

/-! ## A012948.P5464848966904138345

`A275848((n-1)*a(n-1)+1)` with `a(0)=1, a(1)=2`
-/

namespace A012948.P5464848966904138345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A275848 (((n : ℤ) - 1) * a (n - 1) + 1).toNat

end

end A012948.P5464848966904138345

/-!
# A012949: Expansion of e.g.f. sin(tan(x)+arcsin(x)) (odd powers only).

The programs for A012949, there is no canonical definition to state claims against.
-/

/-! ## A012949.P9330281070193717259

`(-1)^n*A013154(2*n+1)`
-/

namespace A012949.P9330281070193717259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A013154 (2 * n + 1)

end

end A012949.P9330281070193717259

/-! ## A012949.P7306857016708412566

`A013154(2*n+1)*A130595(∑[n])`
-/

namespace A012949.P7306857016708412566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013154 (2 * n + 1) * A130595 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A012949.P7306857016708412566

/-!
# A012953: sinh(tan(x)+arcsin(x))=2*x+11/3!*x^3+177/5!*x^5+5665/7!*x^7...

The programs for A012953, there is no canonical definition to state claims against.
-/

/-! ## A012953.P10322747931066133668

`A012948(Δ[n²])`
-/

namespace A012953.P10322747931066133668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012948 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012953.P10322747931066133668

/-! ## A012953.P11621225042986956223

`record[A012948(xor(1, n))]`
-/

namespace A012953.P11621225042986956223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012948 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012953.P11621225042986956223

/-! ## A012953.P956011748406253601

`record[A012948(Δ[A001318(n)])]`
-/

namespace A012953.P956011748406253601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012948 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012953.P956011748406253601

/-! ## A012953.P2152025820216887732

`record[A012948(A000265(n+1))]`
-/

namespace A012953.P2152025820216887732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012948 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012953.P2152025820216887732

/-! ## A012953.P17236822092542259851

`record[A012948(A014681(n)+1)]`
-/

namespace A012953.P17236822092542259851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012948 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012953.P17236822092542259851

/-!
# A012957: cosh(tan(x)+arcsin(x))=1+4/2!*x^2+40/4!*x^4+934/6!*x^6+39064/8!*x^8...

The programs for A012957, there is no canonical definition to state claims against.
-/

/-! ## A012957.P976607417835387880

`A012948(2*n)`
-/

namespace A012957.P976607417835387880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012948 (2 * n)

end

end A012957.P976607417835387880

/-! ## A012957.P7721964138039413493

`record[A012948(A014681(n))]`
-/

namespace A012957.P7721964138039413493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012948 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012957.P7721964138039413493

/-! ## A012957.P4948253899658020240

`record[A012948(A237420(n))]`
-/

namespace A012957.P4948253899658020240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012948 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012957.P4948253899658020240

/-! ## A012957.P14256139101288795575

`record[A012948(n)/A033999(n)]`
-/

namespace A012957.P14256139101288795575
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012948 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012957.P14256139101288795575

/-! ## A012957.P15983951060192373626

`record[A012948(Δ[A001318(n)]-1)]`
-/

namespace A012957.P15983951060192373626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012948 (f2 (n + 1) - f2 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012957.P15983951060192373626

/-!
# A012960: Expansion of e.g.f. exp(arctan(x)+log(x+1)).

The programs for A012960, there is no canonical definition to state claims against.
-/

/-! ## A012960.P6968497715561575425

`A012969(n)+A012965(n)`
-/

namespace A012960.P6968497715561575425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012969 n + A012965 n

end

end A012960.P6968497715561575425

/-!
# A012962: Expansion of e.g.f. arcsin(arctan(x) + log(x+1)).

The programs for A012962, there is no canonical definition to state claims against.
-/

/-! ## A012962.P12666771999754139470

`or(A013119(n), A185255(A000225(n)))`
-/

namespace A012962.P12666771999754139470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013119 n) (A185255 (A000225 n).toNat)

end

end A012962.P12666771999754139470

/-! ## A012962.P8457582443584477900

`or(A013123(n), A185255(A000225(n)))`
-/

namespace A012962.P8457582443584477900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013123 n) (A185255 (A000225 n).toNat)

end

end A012962.P8457582443584477900

/-!
# A012965: Expansion of e.g.f. sinh(arctan(x) + log(x+1)).

The programs for A012965, there is no canonical definition to state claims against.
-/

/-! ## A012965.P9249380776422055386

`A012960(n)-A012969(n)`
-/

namespace A012965.P9249380776422055386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012960 n - A012969 n

end

end A012965.P9249380776422055386

/-!
# A012966: Expansion of e.g.f. arcsinh(arctan(x) + log(x+1)).

The programs for A012966, there is no canonical definition to state claims against.
-/

/-! ## A012966.P15810984478695592461

`A185254(A059901(n))+A013124(n)`
-/

namespace A012966.P15810984478695592461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185254 (A059901 n).toNat + A013124 n

end

end A012966.P15810984478695592461

/-! ## A012966.P6455999025876085491

`A185254(A209616(n+1))+A013124(n)`
-/

namespace A012966.P6455999025876085491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185254 (A209616 (n + 1)).toNat + A013124 n

end

end A012966.P6455999025876085491

/-!
# A012967: E.g.f.: tanh(arctan(x)+log(x+1))=2*x-1/2!*x^2-16/3!*x^3+42/4!*x^4+500/5!*x^5...

The programs for A012967, there is no canonical definition to state claims against.
-/

/-! ## A012967.P11064128797525678099

`A013125(n)+A004198(A176043(n))`
-/

namespace A012967.P11064128797525678099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013125 n + A004198 (A176043 n).toNat

end

end A012967.P11064128797525678099

/-!
# A012969: Expansion of e.g.f.: cosh(arctan(x)+log(x+1))=1+4/2!*x^2-6/3!*x^3+19/4!*x^4-140/5!*x^5...

The programs for A012969, there is no canonical definition to state claims against.
-/

/-! ## A012969.P10473998297704263299

`A012960(n)-A012965(n)`
-/

namespace A012969.P10473998297704263299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012960 n - A012965 n

end

end A012969.P10473998297704263299

/-! ## A012969.P11975213823532722873

`A012960(n)+A012965(n)*A153881(n+1)`
-/

namespace A012969.P11975213823532722873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012960 n + A012965 n * A153881 (n + 1)

end

end A012969.P11975213823532722873

/-! ## A012969.P4936445063782234365

`A012960(n)+A012965(n)*A134824(n+2)`
-/

namespace A012969.P4936445063782234365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012960 n + A012965 n * A134824 (n + 2)

end

end A012969.P4936445063782234365

/-!
# A012970: sec(arctan(x)+log(x+1))=1+4/2!*x^2-6/3!*x^3+83/4!*x^4-460/5!*x^5...

The programs for A012970, there is no canonical definition to state claims against.
-/

/-! ## A012970.P15938771032495540083

`A013127(A000120(∑[n^5]))`
-/

namespace A012970.P15938771032495540083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013127 (A000120 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A012970.P15938771032495540083

/-! ## A012970.P7864387128337633662

`A013127(n*A127624(2*n+1))`
-/

namespace A012970.P7864387128337633662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013127 ((n : ℤ) * A127624 (2 * n + 1)).toNat

end

end A012970.P7864387128337633662

/-!
# A012971: Expansion of e.g.f.: sech(arctan(x)+log(x+1))=1-4/2!*x^2+6/3!*x^3+77/4!*x^4-340/5!*x^5...

The programs for A012971, there is no canonical definition to state claims against.
-/

/-! ## A012971.P2402997791141593383

`A013128(A001096(n))`
-/

namespace A012971.P2402997791141593383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013128 (A001096 n).toNat

end

end A012971.P2402997791141593383

/-! ## A012971.P11293027016476486663

`A013128(n*A145269(n)!)`
-/

namespace A012971.P11293027016476486663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013128 (n * Nat.factorial (A145269 n).toNat)

end

end A012971.P11293027016476486663

/-!
# A012977: cos(arctan(x)+sin(x))=1-4/2!*x^2+40/4!*x^4-934/6!*x^6+42648/8!*x^8...

The programs for A012977, there is no canonical definition to state claims against.
-/

/-! ## A012977.P13740081550598258899

`A013182(A005843(n))/(-1)^n`
-/

namespace A012977.P13740081550598258899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013182 (A005843 n).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A012977.P13740081550598258899

/-!
# A012978: sinh(arctan(x)+sin(x))=2*x+5/3!*x^3-63/5!*x^5+1087/7!*x^7...

The programs for A012978, there is no canonical definition to state claims against.
-/

/-! ## A012978.P10555906763109430198

`A012973(Δ[n²])`
-/

namespace A012978.P10555906763109430198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012973 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012978.P10555906763109430198

/-! ## A012978.P10413852175724518284

`or(A012973(A005408(n)), A057427(n))`
-/

namespace A012978.P10413852175724518284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012973 (A005408 n).toNat) (A057427 n)

end

end A012978.P10413852175724518284

/-! ## A012978.P11418049933038595855

`or(A012973(A005408(n)), A326168(n))`
-/

namespace A012978.P11418049933038595855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012973 (A005408 n).toNat) (A326168 n)

end

end A012978.P11418049933038595855

/-! ## A012978.P10053551395459969355

`A033999(n)²*A012973(A005408(n))`
-/

namespace A012978.P10053551395459969355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A012973 (A005408 n).toNat

end

end A012978.P10053551395459969355

/-! ## A012978.P636423896090619501

`A012973(A004277(n)+1)/A054977(n)`
-/

namespace A012978.P636423896090619501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012973 (A004277 n + 1).toNat : ℚ) / (A054977 n : ℚ)

end

end A012978.P636423896090619501

/-!
# A012982: cosh(arctan(x)+sin(x))=1+4/2!*x^2-8/4!*x^4-26/6!*x^6+424/8!*x^8...

The programs for A012982, there is no canonical definition to state claims against.
-/

/-! ## A012982.P10639496579420539147

`A012973(2*n)`
-/

namespace A012982.P10639496579420539147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012973 (2 * n)

end

end A012982.P10639496579420539147

/-! ## A012982.P16196399593694238830

`A012973(A004277(n))-C(2, n+2)`
-/

namespace A012982.P16196399593694238830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012973 (A004277 n).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A012982.P16196399593694238830

/-! ## A012982.P1800965584952175629

`A012973(A004277(n))-A000007(n)`
-/

namespace A012982.P1800965584952175629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012973 (A004277 n).toNat - A000007 n

end

end A012982.P1800965584952175629

/-! ## A012982.P9372469436244066702

`A012973(A004277(n))-A151810(n)`
-/

namespace A012982.P9372469436244066702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012973 (A004277 n).toNat - A151810 n

end

end A012982.P9372469436244066702

/-! ## A012982.P7477162686125656932

`A012973(A004277(n))/A054977(n)`
-/

namespace A012982.P7477162686125656932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012973 (A004277 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A012982.P7477162686125656932

/-!
# A012986: sin(arctan(x)+arcsin(x))=2*x-9/3!*x^3+105/5!*x^5-4095/7!*x^7...

The programs for A012986, there is no canonical definition to state claims against.
-/

/-! ## A012986.P16035823053777385946

`A013183(2*n+1)*A033999(n)`
-/

namespace A012986.P16035823053777385946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013183 (2 * n + 1) * A033999 n

end

end A012986.P16035823053777385946

/-! ## A012986.P8752736878892915802

`A013183(2*n+1)*A158496(2*n)`
-/

namespace A012986.P8752736878892915802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013183 (2 * n + 1) * A158496 (2 * n)

end

end A012986.P8752736878892915802

/-! ## A012986.P12900240774808464219

`A013183(A005843(n)+1)/A033999(n)`
-/

namespace A012986.P12900240774808464219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013183 (A005843 n + 1).toNat : ℚ) / (A033999 n : ℚ)

end

end A012986.P12900240774808464219

/-!
# A012989: Expansion of e.g.f. cos(arctan(x) + arcsin(x)) = ((1-x^2)^(1/2) - x^2)/(1+x^2)^(1/2), even powers only.

The programs for A012989, there is no canonical definition to state claims against.
-/

/-! ## A012989.P3908205999126554785

`A013183(2*n)*A033999(n)`
-/

namespace A012989.P3908205999126554785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013183 (2 * n) * A033999 n

end

end A012989.P3908205999126554785

/-! ## A012989.P4999230886903780550

`A013183(2*n)*A158496(2*n)`
-/

namespace A012989.P4999230886903780550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013183 (2 * n) * A158496 (2 * n)

end

end A012989.P4999230886903780550

/-! ## A012989.P2089171678804997605

`A013183(A005843(n))/A033999(n)`
-/

namespace A012989.P2089171678804997605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013183 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A012989.P2089171678804997605

/-! ## A012989.P4257210406890633526

`A013183(2*n)/A158496(A005843(n))`
-/

namespace A012989.P4257210406890633526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013183 (2 * n) : ℚ) / (A158496 (A005843 n).toNat : ℚ)

end

end A012989.P4257210406890633526

/-!
# A012990: sinh(arctan(x)+arcsin(x))=2*x+7/3!*x^3+25/5!*x^5+1985/7!*x^7...

The programs for A012990, there is no canonical definition to state claims against.
-/

/-! ## A012990.P2519485028475324021

`A012985(Δ[n²])`
-/

namespace A012990.P2519485028475324021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012985 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012990.P2519485028475324021

/-! ## A012990.P10285865753564978517

`A025439(n)+A012985(A005408(n))`
-/

namespace A012990.P10285865753564978517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 n + A012985 (A005408 n).toNat

end

end A012990.P10285865753564978517

/-! ## A012990.P2771727847024352908

`A025469(n)+A012985(A005408(n))`
-/

namespace A012990.P2771727847024352908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n + A012985 (A005408 n).toNat

end

end A012990.P2771727847024352908

/-! ## A012990.P9643033947797383469

`A012985(A005408(n))/A262079(n+1)`
-/

namespace A012990.P9643033947797383469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012985 (A005408 n).toNat : ℚ) / (A262079 (n + 1) : ℚ)

end

end A012990.P9643033947797383469

/-!
# A012994: cosh(arctan(x)+arcsin(x))=1+4/2!*x^2+8/4!*x^4+310/6!*x^6+4600/8!*x^8...

The programs for A012994, there is no canonical definition to state claims against.
-/

/-! ## A012994.P15207029779448794918

`A012985(2*n)`
-/

namespace A012994.P15207029779448794918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012985 (2 * n)

end

end A012994.P15207029779448794918

/-! ## A012994.P6481847067523902710

`record[A012985(A230641(n))]`
-/

namespace A012994.P6481847067523902710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012985 (A230641 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012994.P6481847067523902710

/-! ## A012994.P8882461943046419579

`record[A012985(n)^A033999(n)]`
-/

namespace A012994.P8882461943046419579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012985 n : ℚ) ^ (A033999 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012994.P8882461943046419579

/-! ## A012994.P11875330687845328629

`record[and(A012985(n), A165326(n))]`
-/

namespace A012994.P11875330687845328629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A012985 n) (A165326 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A012994.P11875330687845328629

/-!
# A012997: Expansion of e.g.f.: exp(arctan(x)+tan(x))=1+2*x+4/2!*x^2+8/3!*x^3+16/4!*x^4+72/5!*x^5...

The programs for A012997, there is no canonical definition to state claims against.
-/

/-! ## A012997.P16650823093014453508

`A013184(A004879(n+1))`
-/

namespace A012997.P16650823093014453508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013184 (A004879 (n + 1)).toNat

end

end A012997.P16650823093014453508

/-! ## A012997.P9910577986767210208

`A002264(3*A013184(n))`
-/

namespace A012997.P9910577986767210208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 * A013184 n).toNat

end

end A012997.P9910577986767210208

/-!
# A012998: sin(arctan(x)+tan(x))=2*x-8/3!*x^3+72/5!*x^5-3936/7!*x^7...

The programs for A012998, there is no canonical definition to state claims against.
-/

/-! ## A012998.P2942622206419286443

`(-1)^n*A013184(Δ[n²])`
-/

namespace A012998.P2942622206419286443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A013184 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A012998.P2942622206419286443

/-! ## A012998.P5537903773472012062

`A013184(2*n+1)*A062157(n+1)`
-/

namespace A012998.P5537903773472012062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013184 (2 * n + 1) * A062157 (n + 1)

end

end A012998.P5537903773472012062

